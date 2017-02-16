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
    let MAX_CURL_ANGLE: Float = (Float(120) * Float(M_PI)) / Float(180)
    let MIN_CURL_ANGLE: Float = (Float(70) * Float(M_PI)) / Float(180)
        
    // returns percent complete of a bicep curl
    override public func getPercentComplete() -> Float? {
        
        var percentComplete: Float
        
        let rightBicep = skeleton.bodyJoints["rightBicep"]
        let rightForearm = skeleton.bodyJoints["rightForearm"]
        
        let curlAngle = rightBicep?.getAngleBetweenJoints(otherJoint: rightForearm!)
        
        percentComplete = (curlAngle! - MIN_CURL_ANGLE) /   (MAX_CURL_ANGLE - MIN_CURL_ANGLE)
        
        return percentComplete
        
    }
}
