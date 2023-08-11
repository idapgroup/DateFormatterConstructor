Pod::Spec.new do |s|
  s.name      = "DateFormatterConstructor"
  s.version   = "1.0.0"
  s.swift_version = "4.0"
  s.summary   = "DateFormatter extension which makes DateFormatter instance creation easier"
  s.description  = "This is simple DateFormatter extension which allows you to allows you to create a date formatter with a specific date pattern in one line"
  s.homepage  = "https://github.com/idapgroup/DateFormatterConstructor"
  s.license   = { :type => "New BSD", :file => "LICENSE" }
  s.author    = { "IDAP Group" => "hello@idapgroup.com" }
  s.source    = { :git => "https://github.com/idapgroup/DateFormatterConstructor.git",
                  :tag => s.version.to_s }

  # Platform setup
  s.requires_arc          = true
  s.ios.deployment_target = '9.0'

  # Preserve the layout of headers in the Module directory
  s.header_mappings_dir   = 'Source'
  s.source_files          = 'Source/**/*.{swift,h,m,c,cpp}'
end
