function [Preprocess] = GetPoint(fid,m)   
       Preprocess.FrameID                = fid(m(1),4);
       Preprocess.Numdet                 = fid(m(1),5);
       Preprocess.SNR                    = fid(m,12);
       Preprocess.Xpos                   = fid(m,13);
       Preprocess.Ypos                   = fid(m,14);
       Preprocess.Zpos                   = fid(m,15);
       Preprocess.Gvel                   = fid(m,16);
       Preprocess.costheta               = fid(m,17);
       Preprocess.sintheta               = fid(m,18);
       Preprocess.cosphi                 = fid(m,19);
       Preprocess.sinphi                 = fid(m,20);
       Preprocess.Azimuth                = fid(m,21);
       Preprocess.bigVFlag               = fid(m,22);
       Preprocess.velAmbFac              = fid(m,23);
       Preprocess.assoFlag               = fid(m,24);
       Preprocess.assoMoveTrackFlag      = fid(m,25);
       Preprocess.prob0                  = fid(m,26);
       Preprocess.trustBaseProb          = fid(m,27);
       Preprocess.velAmbFacEventFlag     = fid(m,28);
       Preprocess.odd127_0or1            = fid(m,29);
       Preprocess.notInitPointFlag       = fid(m,30);
       Preprocess.sameRVFlag             = fid(m,31);
       Preprocess.barrierFlag            = fid(m,32);
       Preprocess.unstablePointFlag      = fid(m,33);    
       Preprocess.SNRFlag                = fid(m,34);
end

																	
