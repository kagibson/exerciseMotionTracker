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
    /*let leftForearm: BodyJoint
    let leftBicep: BodyJoint
    //let leftShoulder: BodyJoint
    let rightForearm: BodyJoint
    let rightBicep: BodyJoint
    //let rightShoulder: BodyJoint */
    public var skeletonDelegate: SkeletonDelegate?
    
    var bodyJoints = [String:BodyJoint]()
    
    public init()
    {
        self.bodyJoints["leftForearm"] = BodyJoint()
        self.bodyJoints["leftBicep"] = BodyJoint()
        //self.bodyJoints["rightShoulder"] = BodyJoint()
        self.bodyJoints["rightForearm"] = BodyJoint()
        self.bodyJoints["rightBicep"] = BodyJoint()
        //self.bodyJoints["rightShoulder"] = BodyJoint()
        //skeletonDelegate = nil
    }
    
    // updates the orientation of each BodyJoint using quaternion data received from the sensors
    public func updateFromSensors(sensorData: [String:Float])
    {
        self.bodyJoints["leftForearm"]?.orientation = Quaternion(w_: sensorData["s1w"]!, x_: sensorData["s1x"]!, y_: sensorData["s1y"]!, z_: sensorData["s1z"]!) // should probably not force unwrap
        self.bodyJoints["leftBicep"]?.orientation = Quaternion(w_: sensorData["s2w"]!, x_: sensorData["s2x"]!, y_: sensorData["s2y"]!, z_: sensorData["s2z"]!)
        self.bodyJoints["rightForearm"]?.orientation = Quaternion(w_: sensorData["s3w"]!, x_: sensorData["s3x"]!, y_: sensorData["s3y"]!, z_: sensorData["s3z"]!)
        self.bodyJoints["rightBicep"]?.orientation = Quaternion(w_: sensorData["s4w"]!, x_: sensorData["s4x"]!, y_: sensorData["s4y"]!, z_: sensorData["s4z"]!)
        if (self.skeletonDelegate != nil)
        {
            print("its working!")
            self.skeletonDelegate?.updateBodyJoints(sensorData: self.bodyJoints)
        }
        
    }
    
}
