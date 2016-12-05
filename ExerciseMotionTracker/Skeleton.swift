//
//  Skeleton.swift
//  ExerciseMonitoringApp
//
//  Created by Kurtis Gibson on 2016-10-22.
//  Copyright © 2016 Kurtis Gibson. All rights reserved.
//

import Foundation

final public class Skeleton
{
    //let leftWrist: BodyJoint
    //let leftElbow: BodyJoint
    //let leftShoulder: BodyJoint
    let rightWrist: BodyJoint
    let rightElbow: BodyJoint
    let rightShoulder: BodyJoint
    
    public init()
    {
        //self.leftWrist = BodyJoint()
        //self.leftElbow = BodyJoint()
        //self.leftShoulder = BodyJoint()
        self.rightWrist = BodyJoint()
        self.rightElbow = BodyJoint()
        self.rightShoulder = BodyJoint()
    }
    
    // updates the orientation of each BodyJoint using quaternion data received from the sensors
    public func updateFromSensors()
    {
    
    }
    
}
