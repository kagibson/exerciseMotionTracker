//
//  ExerciseMonitor.swift
//  ExerciseMonitoringApp
//
//  Created by Kurtis Gibson on 2016-10-08.
//  Copyright © 2016 Kurtis Gibson. All rights reserved.
//

import Foundation

public class ExerciseMonitor
{
    let skeleton: Skeleton
    public var exerciseMonitorDelegate: ExerciseMonitorDelegate?
    
    public init(skeleton: Skeleton)
    {
        self.skeleton = skeleton
    }
    
    public func getPercentComplete() -> Int? {
        return 0
    }
    
    public func initAngle()
    {
        
    }
    
    public func updateDelegates()
    {
        if (self.exerciseMonitorDelegate != nil)
        {
            self.exerciseMonitorDelegate?.completionLevelDidUpdate()
        }
    }
}
