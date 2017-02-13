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
    let MAX_CURL_ANGLE: Float = Float(0.5) * Float(M_PI) // not sure what this angle will be
    
    // returns percent complete of a bicep curl
    override public func getPercentComplete() -> Float? {
        
        var percentComplete: Float
        
        let rightBicep = skeleton.bodyJoints["rightBicep"]
        let rightForearm = skeleton.bodyJoints["rightForerm"]
        
        let curlAngle = rightBicep?.getAngleBetweenJoints(otherJoint: rightForearm!)
        
        percentComplete = curlAngle! /   MAX_CURL_ANGLE
        
        return percentComplete
        
    }
}
