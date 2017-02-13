//
//  SkeletonDelegate.swift
//  ExerciseMotionTracker
//
//  Created by Kurtis Gibson on 2017-02-13.
//  Copyright © 2017 Capstone G09. All rights reserved.
//

import Foundation

public protocol SkeletonDelegate {
    func updateBodyJoints(sensorData: [String:BodyJoint])
}
