//
//  BicepCurl.swift
//  ExerciseMotionTracker
//
//  Created by Kurtis Gibson on 2016-11-27.
//  Copyright © 2016 Capstone G09. All rights reserved.
//

import Foundation

final public class BicepCurl: ExerciseMonitor
{
    
    override public func getPercentComplete() -> Double? {
        
        //var percentComplete: Double
        
        let rightElbow = skeleton.rightElbow
        let rightWrist = skeleton.rightWrist
        
        let curlAngle = rightElbow.getAngleBetweenJoints(otherJoint: rightWrist)
        
        // need to do something with curlAngle
        return curlAngle
    }
}
