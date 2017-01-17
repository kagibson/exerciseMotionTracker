//
//  BodySegment.swift
//  ExerciseMonitoringApp
//
//  Created by Kurtis Gibson on 2016-10-06.
//  Copyright © 2016 Kurtis Gibson. All rights reserved.
//

import Foundation

public struct Quaternion
{
    var w_ = 0.0
    var x_ = 0.0
    var y_ = 0.0
    var z_ = 0.0
    
    var norm: Double
    {
        get
        {
            return sqrt(pow(w_,2) + pow(x_,2) + pow(y_,2) + pow(z_,2))
        }
    }
    
    // returns the normalized quaternion of itself
    public func getUnitQuaterion() -> Quaternion
    {
        return Quaternion(w_: w_/norm, x_: x_/norm, y_: y_/norm, z_: z_/norm)
    }
    
    // returns the conjugate of itself
    public func getConjugate() -> Quaternion
    {
        return Quaternion(w_: w_, x_: (-x_), y_: (-y_), z_: (-z_))
    }
    
    // returns the dot product of itself and another quaternion
    public func getDotProduct(q2: Quaternion) -> Double
    {
        let q1 = self
        let product = (q1.w_ * q2.w_) + (q1.x_ * q2.x_) + (q1.y_ * q2.y_) + (q1.z_ * q2.z_)
        return product
    }
}

final public class BodyJoint
{
    var orientation: Quaternion
    
    public init()
    {
        orientation = Quaternion()
    }
    
    public func getAngleBetweenJoints(otherJoint: BodyJoint) -> Double
    {
        var q1 = self.orientation
        var q2 = otherJoint.orientation
        
        // normalize orientation quaternions
        q1 = q1.getUnitQuaterion()
        q2 = q2.getUnitQuaterion()
        
        let q2Conj = q2.getConjugate()
        
        let cosTheta = q1.getDotProduct(q2: q2Conj)
        
        // do i need to subtract this from 2pi if greater than pi?
        return acos(cosTheta)
    
    }
    
}
