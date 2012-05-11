set :application, "Ashley Hill and Chris Neitzer Wedding"
set :repository,  "git@github.com:aeonblue3/wedding.git"

set :deploy_to, "/home/neitzer/public_html/hill-neitzer"
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, "neitzer"
set :port, "22222"

ssh_options[:forward_agent] = true

server "hill-neitzer.com", :app, :web, :db, :primary => true
set :scm_passphrase, "D@isuki99"
set :branch, "master"
set :deploy_via, :remote_cache
set :scm_verbose, true
set :deploy_via, :remote_cache
set :use_sudo, false

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
