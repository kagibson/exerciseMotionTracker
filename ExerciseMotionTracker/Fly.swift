//
//  Fly.swift
//  ExerciseMotionTracker
//
//  Created by Kurtis Gibson on 2017-04-02.
//  Copyright © 2017 Capstone G09. All rights reserved.
//

import Foundation

final public class Fly: ExerciseMonitor
{
    let EXERCISE_RANGE: Float = (Float(32) * Float(M_PI)) / Float(180) // range is 32 degrees
    var MAX_FOREARM_ANGLE: Float = (Float(86) * Float(M_PI)) / Float(180) // max angle is 86 degrees
    var BENT_ELBOW_CONSTRAINT: Float = (Float(20) * Float(M_PI) / Float(180)) // max elbow bend is 25 degrees
    
    // returns percent complete of a fly exercise
    override public func getPercentComplete() -> Int? {
        
        var percentComplete: Int
        var percentCompleteFloat: Float
        
        // get sensor orientations
        let rightBicep = skeleton.bodyJoints["rightBicep"]
        let rightForearm = skeleton.bodyJoints["rightForearm"]
        let leftBicep = skeleton.bodyJoints["leftBicep"]
        let leftForearm = skeleton.bodyJoints["leftForearm"]
        
        // determine angle between forearm sensors and angle between bicep sensors
        let forearmAngle = rightForearm?.getAngleBetweenJoints(otherJoint: leftForearm!)
        let bicepAngle = rightBicep?.getAngleBetweenJoints(otherJoint: leftBicep!)
        
        // constrain range of angle
        if (forearmAngle! > MAX_FOREARM_ANGLE)
        {
            percentComplete = 0;
        }
            
        else if ((forearmAngle! < (MAX_FOREARM_ANGLE - EXERCISE_RANGE)) && (abs(bicepAngle!-forearmAngle!) < BENT_ELBOW_CONSTRAINT))
        {
            percentComplete = 100;
        }
            
        else
        {
            if (abs(bicepAngle!-forearmAngle!) < BENT_ELBOW_CONSTRAINT)
            {
                percentCompleteFloat = (100.0 * (abs(forearmAngle! - MAX_FOREARM_ANGLE) / EXERCISE_RANGE))
            
                if (!percentCompleteFloat.isNaN)
                {
                    percentComplete = Int(percentCompleteFloat)
                }
                else
                {
                    percentComplete = 0
                }
            }
            else
            {
                percentComplete = 666 // error code for 'straighten arms'
            }
        }
        
        return percentComplete
        
    }
    
    // get initial curl angle for min angle
    override public func initAngle()
    {
        let rightForearm = skeleton.bodyJoints["rightForearm"]
        let leftForearm = skeleton.bodyJoints["leftForearm"]
        
        let forearmAngle = rightForearm?.getAngleBetweenJoints(otherJoint: leftForearm!)
        
        if (forearmAngle != nil)
        {
            MAX_FOREARM_ANGLE = forearmAngle!
        }
    }
}
