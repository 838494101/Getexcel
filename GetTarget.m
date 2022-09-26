function [Target] = GetTarget(fid,m)   
        Target.FrameID                        = fid(m(1),3);
        Target.numTrack                       = fid(m(end),2);
        Target.trkID                          = fid(m,4);        
        Target.RCS                            = fid(m,12);
        Target.Xpos                           = fid(m,5);
        Target.Ypos                           = fid(m,6);
        Target.Zpos                           = fid(m,7);
        Target.Xvel                           = fid(m,8);
        Target.Yvel                           = fid(m,9);
        Target.Xaccel                         = fid(m,10);
        Target.Yaccel                         = fid(m,11);
        Target.objQualityFlag                 = fid(m,13);
        Target.MotionPatter                   = fid(m,14);
        Target.TrackStatus                    = fid(m,15);        
end