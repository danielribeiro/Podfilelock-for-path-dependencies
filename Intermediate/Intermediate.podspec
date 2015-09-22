Pod::Spec.new do |s|
  s.name         = "Intermediate"
  s.version      = "0.1.0"
  s.summary      = "A Intermediate with no deps"

  s.description  = s.summary
  s.homepage     = "http://squareup.com/"
  s.license = { :type => 'MIT', :text => 'the mit license'}
  s.author             = { "Daniel Ribeiro" => "danrbr@gmail.com" }
  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.7"

  s.source       = { :http => "https://example.com/intermediate" }
  s.source_files  = "Intermediate", "Intermediate/**/*.{h,m}"

  s.dependency 'AMCoreAudio', '< 2'
end
