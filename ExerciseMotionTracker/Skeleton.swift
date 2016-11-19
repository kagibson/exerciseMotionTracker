//
//  Skeleton.swift
//  ExerciseMonitoringApp
//
//  Created by Kurtis Gibson on 2016-10-22.
//  Copyright © 2016 Kurtis Gibson. All rights reserved.
//

import Foundation

public struct UserBodyMeasurements
{
    let lowerArmLength: Double
    let upperArmLength: Double
    let shoulderWidth: Double
}

final public class Skeleton
{
    let leftWrist: BodyJoint
    let leftElbow: BodyJoint
    let leftShoulder: BodyJoint
    //let rightWrist: BodyJoint
    //let rightElbow: BodyJoint
    //let rightShoulder: BodyJoint
    let userDimensions: UserBodyMeasurements
    
    public init(leftWrist: BodyJoint, leftElbow: BodyJoint, leftShoulder: BodyJoint, userDimensions: UserBodyMeasurements)
    {
        self.leftWrist = leftWrist
        self.leftElbow = leftElbow
        self.leftShoulder = leftShoulder
        self.userDimensions = userDimensions
    }
    
    // estimates the position of arm joints using their orientations and user inputted arm measurements
    func updateLeftArmPosition(wristOrientation: Quaternion, elbowOrientation: Quaternion)
    {
        
    }
}
