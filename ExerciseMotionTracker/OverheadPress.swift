//
//  BicepCurl.swift
//  ExerciseMotionTracker
//
//  Created by Kurtis Gibson on 2016-11-27.
//  Copyright © 2016 Capstone G09. All rights reserved.
//

import Foundation

final public class OverheadPress: ExerciseMonitor
{
    let EXERCISE_RANGE: Float = (Float(20) * Float(M_PI)) / Float(180)
    var MAX_CURL_ANGLE: Float = (Float(70) * Float(M_PI)) / Float(180)
    
    // returns percent complete of a bicep curl
    override public func getPercentComplete() -> Int? {
        
        var percentComplete: Int
        var percentCompleteFloat: Float
        
        let rightBicep = skeleton.bodyJoints["rightBicep"]
        let rightForearm = skeleton.bodyJoints["rightForearm"]
        
        let curlAngle = rightBicep?.getAngleBetweenJoints(otherJoint: rightForearm!)
        
        if (curlAngle! > MAX_CURL_ANGLE)
        {
            percentComplete = 0;
        }
            
        else if (curlAngle! < (MAX_CURL_ANGLE - EXERCISE_RANGE))
        {
            percentComplete = 100;
        }
            
        else
        {
            percentCompleteFloat = (100.0 * (abs(curlAngle! - MAX_CURL_ANGLE) / EXERCISE_RANGE))
            
            if (!percentCompleteFloat.isNaN)
            {
                percentComplete = Int(percentCompleteFloat)
            }
            else
            {
                percentComplete = 0
            }
        }
        
        return percentComplete
        
    }
    
    // get initial curl angle for min angle
    override public func initAngle()
    {
        let rightBicep = skeleton.bodyJoints["rightBicep"]
        let rightForearm = skeleton.bodyJoints["rightForearm"]
        
        let curlAngle = rightBicep?.getAngleBetweenJoints(otherJoint: rightForearm!)
        
        if (curlAngle != nil)
        {
            MAX_CURL_ANGLE = curlAngle!
        }
    }
}

