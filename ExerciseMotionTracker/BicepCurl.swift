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
    let EXERCISE_RANGE: Float = (Float(48) * Float(M_PI)) / Float(180)
    var MIN_CURL_ANGLE: Float = (Float(70) * Float(M_PI)) / Float(180)
        
    // returns percent complete of a bicep curl
    override public func getPercentComplete() -> Int? {
        
        var percentComplete: Int
        
        let rightBicep = skeleton.bodyJoints["rightBicep"]
        let rightForearm = skeleton.bodyJoints["rightForearm"]
        
        let curlAngle = rightBicep?.getAngleBetweenJoints(otherJoint: rightForearm!)
        
        percentComplete = (Int) (100.0 * (abs(curlAngle! - MIN_CURL_ANGLE) / EXERCISE_RANGE))

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
