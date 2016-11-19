//
//  BodySegment.swift
//  ExerciseMonitoringApp
//
//  Created by Kurtis Gibson on 2016-10-06.
//  Copyright © 2016 Kurtis Gibson. All rights reserved.
//

import Foundation


public struct Position
{
    var x_ = 0.0
    var y_ = 0.0
    var z_ = 0.0
}

public struct Quaternion
{
    var w_ = 0.0
    var x_ = 0.0
    var y_ = 0.0
    var z_ = 0.0
}

final public class BodyJoint
{
    // distances between other nodes could be used for constraining position based on body kinematics
    
    var currPosition = Position()
    var currOrientation = Quaternion()
    
    public init(initial_x: Double, initial_y: Double, initial_z: Double)
    {
        currPosition.x_ = initial_x
        currPosition.y_ = initial_y
        currPosition.z_ = initial_z
    }
    
    
}
