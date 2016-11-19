

Pod::Spec.new do |s|


  s.name         = "ExerciseMotionTracker"
  s.version      = "0.0.1"
  s.summary      = "Tracks a users motion while performing an exercise."
  s.description  = "Estimates a users skeletal position when orientation sensor data updates are received. Uses the position estimate to determine completion of a users exercise."
  s.homepage     = "http://capstone_g09.ca/ExerciseMotionTracker"


  s.license      = "MIT"

  s.author             = { "Kurtis Gibson" => "kurtisgibsonmusic@gmail.com" }

  s.platform     = :ios, "10.0"

  s.source       = { :git => "https://github.com/kagibson/exerciseMotionTracker.git", :tag => ‘0.0.1’ }

  s.source_files  = “ExerciseMotionTracker”, “ExerciseMotionTracker/**/*.{h,m,swift}”
  s.exclude_files = "Classes/Exclude"

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }


end
