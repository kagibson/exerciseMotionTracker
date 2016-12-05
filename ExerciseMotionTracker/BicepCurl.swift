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
    let MAX_CURL_ANGLE = 0.5 * M_PI // not sure what this angle will be
    
    // returns percent complete of a bicep curl
    override public func getPercentComplete() -> Double? {
        
        var percentComplete: Double
        
        let rightElbow = skeleton.rightElbow
        let rightWrist = skeleton.rightWrist
        
        let curlAngle = rightElbow.getAngleBetweenJoints(otherJoint: rightWrist)
        
        percentComplete = curlAngle /   MAX_CURL_ANGLE
        
        return percentComplete
        
    }
}
