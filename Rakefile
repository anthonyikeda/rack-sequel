namespace :db do
  desc 'Run DB migrations'
  task :migrate => :app do
    require 'sequel/extensions/migration'

    Sequel::Migrator.apply(MicroServices::App.database, 'db/migrations')
  end
end
