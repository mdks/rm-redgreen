$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.files = Dir.glob(File.join(app.project_dir, 'app/**/*.rb'))
  app.name = 'rm-redgreen'
end
