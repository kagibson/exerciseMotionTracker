//
//  TricepExtension.swift
//  ExerciseMotionTracker
//
//  Created by Kurtis Gibson on 2017-04-02.
//  Copyright © 2017 Capstone G09. All rights reserved.
//

import Foundation

final public class TricepExtension: ExerciseMonitor
{
    let EXERCISE_RANGE: Float = (Float(18) * Float(M_PI)) / Float(180)
    var MAX_EXTENSION_ANGLE: Float = (Float(70) * Float(M_PI)) / Float(180)
    
    // returns percent complete of a bicep extension
    override public func getPercentComplete() -> Int? {
        
        var percentComplete: Int
        var percentCompleteFloat: Float
        
        let rightBicep = skeleton.bodyJoints["rightBicep"]
        let rightForearm = skeleton.bodyJoints["rightForearm"]
        
        let extensionAngle = rightBicep?.getAngleBetweenJoints(otherJoint: rightForearm!)
        
        if (extensionAngle! > MAX_EXTENSION_ANGLE)
        {
            percentComplete = 0;
        }
            
        else if (extensionAngle! < (MAX_EXTENSION_ANGLE - EXERCISE_RANGE))
        {
            percentComplete = 100;
        }
            
        else
        {
            percentCompleteFloat = (100.0 * (abs(extensionAngle! - MAX_EXTENSION_ANGLE) / EXERCISE_RANGE))
            
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
    
    // get initial extension angle for min angle
    override public func initAngle()
    {
        let rightBicep = skeleton.bodyJoints["rightBicep"]
        let rightForearm = skeleton.bodyJoints["rightForearm"]
        
        let extensionAngle = rightBicep?.getAngleBetweenJoints(otherJoint: rightForearm!)
        
        if (extensionAngle != nil)
        {
            MAX_EXTENSION_ANGLE = extensionAngle!
        }
    }

}
