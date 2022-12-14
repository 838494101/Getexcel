function  [Cluster] = GetCluster(fid,m)   
        Cluster.FrameID                        = fid(m(end),3);
        Cluster.numTrack                       = fid(m(end),4);
        Cluster.trkID                          = fid(m,5);
        Cluster.priorityScore                  = fid(m,6);
        Cluster.validFlag                      = fid(m,7);
        Cluster.ambigFlag                      = fid(m,8);
        Cluster.Confirm                        = fid(m,9);
        Cluster.assoWheelPointFlag             = fid(m,10);
        Cluster.highSpeedFlag                  = fid(m,11);
        Cluster.TrackStatus                    = fid(m,12);
        Cluster.refID                          = fid(m,13);
        Cluster.refID2                         = fid(m,14);
        Cluster.unstableFlag                   = fid(m,15);
        Cluster.classification                 = fid(m,16);
        Cluster.MotionStatus                   = fid(m,17);
        Cluster.bigVFlag                       = fid(m,18);
        Cluster.BSDTargetFlag                  = fid(m,19);
        Cluster.TurnFlag                       = fid(m,20);
        Cluster.CrossFlag                      = fid(m,21);
        Cluster.incompleteFlag                 = fid(m,22);
        Cluster.canStoppedCount                = fid(m,23);
        Cluster.mirrorTrackFlag                = fid(m,24);
        Cluster.wpTrackFlag                    = fid(m,25);
        Cluster.mirrorID                       = fid(m,26);
        Cluster.dInnovCount                    = fid(m,27);
        Cluster.dInnovSum                      = fid(m,28);
        Cluster.detThetaMin                    = fid(m,29);
        Cluster.detThetaMax                    = fid(m,30);
        Cluster.trackMaxV                      = fid(m,31);
        Cluster.forRCS.SNRmax                  = fid(m,32);
        Cluster.forRCS.RCSInstant              = fid(m,33);                                                        
        Cluster.Innov.xInnov                   = fid(m,34);
        Cluster.Innov.yInnov                   = fid(m,35);
        Cluster.Innov.zInnov                   = fid(m,36);
        Cluster.RCS                            = fid(m,37);
        Cluster.Xpos                           = fid(m,38);
        Cluster.Ypos                           = fid(m,39);
        Cluster.Zpos                           = fid(m,40);
        Cluster.Xvel                           = fid(m,41);
        Cluster.Yvel                           = fid(m,42);
        Cluster.Zvel                           = fid(m,43);
        Cluster.Xaccel                         = fid(m,44);
        Cluster.Yaccel                         = fid(m,45);
        Cluster.Zaccel                         = fid(m,46);
        Cluster.HeadingAngle                   = fid(m,47);
        Cluster.cosHeading                     = fid(m,48);
        Cluster.sinHeading                     = fid(m,49);
        Cluster.Length                         = fid(m,50);
        Cluster.Width                          = fid(m,51);
        Cluster.Height                         = fid(m,52);
        Cluster.BoxP.Length                    = fid(m,53);
        Cluster.BoxP.Width                     = fid(m,54);
        Cluster.BoxP.Height                    = fid(m,55);
        Cluster.BoxP.Xpos                      = fid(m,56);
        Cluster.BoxP.Ypos                      = fid(m,57);
        Cluster.BoxP.Zpos                      = fid(m,58);
        Cluster.BoxP.x                         = fid(m,59);
        Cluster.BoxP.y                         = fid(m,60);
        Cluster.BoxP.z                         = fid(m,61);
        Cluster.XvelWindows                    = fid(m,62);
        Cluster.YvelWindows                    = fid(m,63);
        Cluster.TrackInitTimeStamp             = fid(m,64);
        Cluster.NewestAssoTimeStamp            = fid(m,65);
        Cluster.AassoTime                      = fid(m,66);
        Cluster.assoGvelMean                   = fid(m,67);
        Cluster.boxLengthMean                  = fid(m,68);
        Cluster.nAssoDet                       = fid(m,69);        
        Cluster.QualityFlag                    = fid(m,70);
        Cluster.numDiffV                       = fid(m,71);
        Cluster.age                            = fid(m,72);	
end