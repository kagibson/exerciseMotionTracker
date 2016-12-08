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
    public func updateFromSensors(sensorData: [Double])
    {
        self.rightWrist.orientation = Quaternion(w_: sensorData[0], x_: sensorData[1], y_: sensorData[2], z_: sensorData[3])
        self.rightElbow.orientation = Quaternion(w_: sensorData[4], x_: sensorData[5], y_: sensorData[6], z_: sensorData[7])
        self.rightShoulder.orientation = Quaternion(w_: sensorData[8], x_: sensorData[9], y_: sensorData[10], z_: sensorData[11])
    }
    
}
