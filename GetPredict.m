function [Predict] = GetPredict(fid,m)   
        Predict.FrameID                        = fid(m(1),3);
        Predict.numTrack                       = fid(m(end),4);
        Predict.trkID                          = fid(m,5);
        Predict.priorityScore                  = fid(m,6);
        Predict.validFlag                      = fid(m,7);
        Predict.ambigFlag                      = fid(m,8);
        Predict.Confirm                        = fid(m,9);
        Predict.assoWheelPointFlag             = fid(m,10);
        Predict.highSpeedFlag                  = fid(m,11);
        Predict.TrackStatus                    = fid(m,12);
        Predict.refID                          = fid(m,13);
        Predict.refID2                         = fid(m,14);
        Predict.unstableFlag                   = fid(m,15);
        Predict.classification                 = fid(m,16);
        Predict.MotionStatus                   = fid(m,17);
        Predict.bigVFlag                       = fid(m,18);
        Predict.BSDTargetFlag                  = fid(m,19);
        Predict.TurnFlag                       = fid(m,20);
        Predict.CrossFlag                      = fid(m,21);
        Predict.incompleteFlag                 = fid(m,22);
        Predict.canStoppedCount                = fid(m,23);
        Predict.mirrorTrackFlag                = fid(m,24);
        Predict.wpTrackFlag                    = fid(m,25);
        Predict.mirrorID                       = fid(m,26);
        Predict.dInnovCount                    = fid(m,27);
        Predict.dInnovSum                      = fid(m,28);
        Predict.detThetaMin                    = fid(m,29);
        Predict.detThetaMax                    = fid(m,30);
        Predict.trackMaxV                      = fid(m,31);
        Predict.forRCS.SNRmax                  = fid(m,32);
        Predict.forRCS.RCSInstant              = fid(m,33);                                                   
        Predict.Innov.xInnov                   = fid(m,34);
        Predict.Innov.yInnov                   = fid(m,35);
        Predict.Innov.zInnov                   = fid(m,36);
        Predict.RCS                            = fid(m,37);
        Predict.Xpos                           = fid(m,38);
        Predict.Ypos                           = fid(m,39);
        Predict.Zpos                           = fid(m,40);
        Predict.Xvel                           = fid(m,41);
        Predict.Yvel                           = fid(m,42);
        Predict.Zvel                           = fid(m,43);
        Predict.Xaccel                         = fid(m,44);
        Predict.Yaccel                         = fid(m,45);
        Predict.Zaccel                         = fid(m,46);
        Predict.HeadingAngle                   = fid(m,47);
        Predict.cosHeading                     = fid(m,48);
        Predict.sinHeading                     = fid(m,49);
        Predict.Length                         = fid(m,50);
        Predict.Width                          = fid(m,51);
        Predict.Height                         = fid(m,52);
        Predict.BoxP.Length                    = fid(m,53);
        Predict.BoxP.Width                     = fid(m,54);
        Predict.BoxP.Height                    = fid(m,55);
        Predict.BoxP.Xpos                      = fid(m,56);
        Predict.BoxP.Ypos                      = fid(m,57);
        Predict.BoxP.Zpos                      = fid(m,58);
        Predict.BoxP.x                         = fid(m,59);
        Predict.BoxP.y                         = fid(m,60);
        Predict.BoxP.z                         = fid(m,61);
        Predict.XvelWindows                    = fid(m,62);
        Predict.YvelWindows                    = fid(m,63);
        Predict.TrackInitTimeStamp             = fid(m,64);
        Predict.NewestAssoTimeStamp            = fid(m,65);
        Predict.AassoTime                      = fid(m,66);
        Predict.assoGvelMean                   = fid(m,67);
        Predict.boxLengthMean                  = fid(m,68);
        Predict.nAssoDet                       = fid(m,69);       
        Predict.QualityFlag                    = fid(m,70);
        Predict.numDiffV                       = fid(m,71);
        Predict.age                            = fid(m,72);
end