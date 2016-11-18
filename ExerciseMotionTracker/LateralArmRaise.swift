//
//  BodySegment.swift
//  ExerciseMonitoringApp
//
//  Created by Kurtis Gibson on 2016-10-06.
//  Copyright © 2016 Kurtis Gibson. All rights reserved.
//

import Foundation

final public class LateralArmRaise: ExerciseMonitor
{
    
    override func getPercentComplete() -> Double {
        
        var percentComplete: Double
        let wrist = skeleton.leftWrist
        //let elbow = skeleton.leftElbow
        //let shoulder = skeleton.leftShoulder
        
        percentComplete = (M_PI - tan((wrist.currPosition.z_)/(wrist.currPosition.x_))/(0.5*M_PI))
        return percentComplete
    }
}
