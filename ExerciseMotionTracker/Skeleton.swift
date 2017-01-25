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
    let leftForearm: BodyJoint
    let leftBicep: BodyJoint
    let leftShoulder: BodyJoint
    let rightForearm: BodyJoint
    let rightBicep: BodyJoint
    let rightShoulder: BodyJoint
    
    public init()
    {
        self.leftForearm = BodyJoint()
        self.leftBicep = BodyJoint()
        self.leftShoulder = BodyJoint()
        self.rightForearm = BodyJoint()
        self.rightBicep = BodyJoint()
        self.rightShoulder = BodyJoint()
    }
    
    // updates the orientation of each BodyJoint using quaternion data received from the sensors
    public func updateFromSensors(singleArmSensorData: [Float])
    {
        self.rightForearm.orientation = Quaternion(w_: singleArmSensorData[0], x_: singleArmSensorData[1], y_: singleArmSensorData[2], z_: singleArmSensorData[3])
        self.rightBicep.orientation = Quaternion(w_: singleArmSensorData[4], x_: singleArmSensorData[5], y_: singleArmSensorData[6], z_: singleArmSensorData[7])
        self.rightShoulder.orientation = Quaternion(w_: singleArmSensorData[8], x_: singleArmSensorData[9], y_: singleArmSensorData[10], z_: singleArmSensorData[11])
    }
    
}
