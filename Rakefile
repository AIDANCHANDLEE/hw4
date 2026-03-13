# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

# No asset pipeline in this app (Bootstrap loaded via CDN, CSS in public/)
namespace :assets do
  task :precompile do; end
  task :clean do; end
end
