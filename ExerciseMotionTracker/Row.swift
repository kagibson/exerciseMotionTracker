//
//  Row.swift
//  ExerciseMotionTracker
//
//  Created by Kurtis Gibson on 2017-04-02.
//  Copyright © 2017 Capstone G09. All rights reserved.
//

import Foundation

final public class Row: ExerciseMonitor
{
    let EXERCISE_RANGE: Float = (Float(32) * Float(M_PI)) / Float(180)
    var MIN_CURL_ANGLE: Float = (Float(70) * Float(M_PI)) / Float(180)
    
    // returns percent complete of a bicep curl
    override public func getPercentComplete() -> Int? {
        
        var percentComplete: Int
        var percentCompleteFloat: Float
        
        let rightBicep = skeleton.bodyJoints["rightBicep"]
        let rightForearm = skeleton.bodyJoints["rightForearm"]
        
        let curlAngle = rightBicep?.getAngleBetweenJoints(otherJoint: rightForearm!)
        
        if (curlAngle! > MIN_CURL_ANGLE)
        {
            percentComplete = 0;
        }
            
        else if (curlAngle! < (MIN_CURL_ANGLE - EXERCISE_RANGE))
        {
            percentComplete = 100;
        }
            
        else
        {
            percentCompleteFloat = (100.0 * (abs(curlAngle! - MIN_CURL_ANGLE) / EXERCISE_RANGE))
            
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
            MIN_CURL_ANGLE = curlAngle!
        }
    }

}
