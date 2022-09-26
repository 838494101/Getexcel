function [point] = GetTrackinginput(fid1,kk)   

    point.frameID = fid1(kk(1),2);
    point.detNum = fid1(kk(1),3);
    for ii = 1:1:point.detNum
        point.velocityMax            = fid1(kk,5);
        point.objectID               = fid1(kk,7);
        point.xPos                   = fid1(kk,8);
        point.yPos                   = fid1(kk,9);
        point.zPos                   = fid1(kk,10);
        point.radVelAbs              = fid1(kk,11);
        point.range                  = fid1(kk,12);
        point.speed                  = fid1(kk,13);
        point.azimuth                = fid1(kk,14);
        point.inclination            = fid1(kk,15);
        point.SNR                    = fid1(kk,16);
        point.RCS                    = fid1(kk,17);
        point.velAmbFactor           = fid1(kk,18);
        point.velErrPro              = fid1(kk,19);
        point.assoTrkID              = fid1(kk,20);
        point.roadObjDel             = fid1(kk,22);
        point.barrierObj             = fid1(kk,23);
        point.sameDVObj              = fid1(kk,24);
        point.velAmb127Det           = fid1(kk,25);
        point.staticObjMovObj        = fid1(kk,26);
        point.all                    = fid1(kk,28);
        point.speed1                 = fid1(kk,30);
        point.yawRate                = fid1(kk,31);
        point.gearPosition           = fid1(kk,32);
        point.fusionSubframeType     = 0;
        point.fusionChipType         = 0;
    end

