# У вас должна быть настроена авторизация ssh по сертификатам

set :application, "railsbike"

# настройка системы контроля версий и репозитария, по умолчанию - git, если используется иная система версий, нужно изменить значение scm
set :scm, :git
set :repository,  "git://github.com/AdvaMedia/RailsBikeSandbox.git"

set :user, "hosting_a2mediadevel"
set :use_sudo, false
set :deploy_to, "/home/hosting_a2mediadevel/projects/railsbike"


role :web, "lithium.locum.ru"   # Your HTTP server, Apache/etc
role :app, "lithium.locum.ru"   # This may be the same as your `Web` server
role :db,  "lithium.locum.ru", :primary => true # This is where Rails migrations will run

# эта секция для того, чтобы вы не хранили доступ к базе в системе контроля версий. Поместите dayabase.yml в shared,
# чтобы он копировался в нужный путь при каждом выкладывании новой версии кода
# так лучше с точки зрения безопасности, но если не хотите - прсото закомментируйте этот таск

#after "deploy:update_code", :copy_database_config

task :copy_database_config, roles => :app do
  db_config = "#{shared_path}/database.yml"
  run "cp #{db_config} #{release_path}/config/database.yml"
end

#set :unicorn_rails, "/var/lib/gems/1.8/bin/unicorn_rails"
set :unicorn_rails, "bundle exec unicorn_rails"
set :unicorn_conf, "/etc/unicorn/railsbike.a2mediadevel.rb"
set :unicorn_pid, "/var/run/unicorn/railsbike.a2mediadevel.pid"

# - for unicorn - #
namespace :deploy do
  desc "Start application"
  task :start, :roles => :app do
    run "#{unicorn_rails} -Dc #{unicorn_conf}"
  end

  desc "Stop application"
  task :stop, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -QUIT `cat #{unicorn_pid}`"
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -USR2 `cat #{unicorn_pid}` || #{unicorn_rails} -Dc #{unicorn_conf}"
  end
end