

Pod::Spec.new do |s|


  s.name         = "ExerciseMotionTracker"
  s.version      = "0.0.2"
  s.summary      = "Tracks a users motion while performing an exercise."
  s.description  = "Uses IMU quaternion data to track a users motion as they perform exercises"
  s.homepage     = "https://github.com/kagibson/exerciseMotionTracker"


  s.license           = { :type => "MIT", :file => "License.txt" }

  s.author             = { "Kurtis Gibson" => "kurtisgibsonmusic@gmail.com" }

  s.platform     = :ios, "10.0"

  s.source       = { :git => "https://github.com/kagibson/exerciseMotionTracker.git", :tag => "#{s.version}" }

  s.source_files  = "ExerciseMotionTracker", "ExerciseMotionTracker/**/*.{h,m,swift}"
  s.exclude_files = "Classes/Exclude"

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }


end
