clearvars;
close all;
clc;
filepath = 'D:\data\dataProcessOutputData\';
filename = dir(filepath);
[k,j] = size(filename);
for kk = 3:1:k
    filename1 = dir(strcat(filepath,filename(kk).name));
    filename2 = strcat(filepath,filename(kk).name,'\',filename1(3).name);
    fid = readtable(filename2);

    fid = table2array(fid);
    switch kk
        case 4   %%%Preprocess
            StartFrameID = fid(1,4);
            EndFrameID = fid(end,4);
            [mm,~] = find(fid(:,4) == EndFrameID);
            fid(mm,:) = [];      
            for ii = StartFrameID:1:EndFrameID - 1
                [m,~] = find(fid(:,4) == ii);         
                if isempty(m)
                    continue;
                end  
                dataStruct.srr(ii).Preprocess = GetPoint(fid,m);
                dataStruct.srr(ii).messageHeader = GetHeader();
                dataStruct.srr(ii).messageHeader.frameNumber = ii;
            end
        case 5         %%%Cluster
            if isempty(fid)
                dataStruct.srr(ii).Cluster = [];
                continue;
            end
            StartFrameID = fid(1,3);
            EndFrameID = fid(end,3);
            [mm,~] = find(fid(:,3) == EndFrameID);            
            fid(mm,:) = [];      
            for ii = StartFrameID:1:EndFrameID - 1
                [m,~] = find(fid(:,3) == ii);         
                if isempty(m)
                    continue;
                end  
                dataStruct.srr(ii).Cluster = GetCluster(fid,m);
            end
        case 6    %%%%Predict
            StartFrameID = fid(1,3);
            EndFrameID = fid(end,3);
            [mm,~] = find(fid(:,3) == EndFrameID);            
            fid(mm,:) = [];      
            for ii = StartFrameID:1:EndFrameID - 1
                [m,~] = find(fid(:,3) == ii);         
                if isempty(m)
                    continue;
                end  
                dataStruct.srr(ii).Predict = GetPredict(fid,m);
            end
        case 7      %%%%Update
            StartFrameID = fid(1,3);
            EndFrameID = fid(end,3);
            [mm,~] = find(fid(:,3) == EndFrameID);            
            fid(mm,:) = [];      
            for ii = StartFrameID:1:EndFrameID - 1
                [m,~] = find(fid(:,3) == ii);         
                if isempty(m)
                    continue;
                end  
                dataStruct.srr(ii).Update = GetUpdate(fid,m);
            end
        case 8       %%%%Association
            [mmm,~] = find(fid(:,6) == 0);
            fid(mmm,:) = [];
            StartFrameID = fid(1,3);
            EndFrameID = fid(end,3);
            [mm,~] = find(fid(:,3) == EndFrameID);            
            fid(mm,:) = [];      
            for ii = StartFrameID:1:EndFrameID - 1
                [m,~] = find(fid(:,3) == ii);         
                if isempty(m)
                    continue;
                end  
                dataStruct.srr(ii).Association = GetAssociate(fid,m);
            end
        case 3    %%%%Trackinginput
            StartFrameID = fid(1,2);
            EndFrameID = fid(end,2);
            while isnan(EndFrameID)
                fid(end,:) = [];
                EndFrameID = fid(end,2);
            end
            [mm,~] = find(fid(:,2) == EndFrameID);            
            fid(mm,:) = [];      
            for ii = StartFrameID:1:EndFrameID - 1
                [m,~] = find(fid(:,2) == ii);         
                if isempty(m)
                    continue;
                end 
                dataStruct.srr(ii).Trackinginput = GetTrackinginput(fid,m);
            end
        case 9      %%%%tracked
            StartFrameID = fid(1,3);
            EndFrameID = fid(end,3);
            if isnan(EndFrameID)
                fid(end,:) = [];
                EndFrameID = fid(end,3);
            end
            [mm,~] = find(fid(:,3) == EndFrameID);            
            fid(mm,:) = [];      
            for ii = StartFrameID:1:EndFrameID - 1
                [m,~] = find(fid(:,3) == ii);         
                if isempty(m)
                    continue;
                end  
                dataStruct.srr(ii).tracked = GetTarget(fid,m);
            end
    end

end
filepath1 = 'D:\';
file = strcat(filepath1,'dataStruct.mat');
save(file,'dataStruct');
msgbox('数据解析完成');
