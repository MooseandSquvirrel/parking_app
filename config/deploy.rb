# config valid only for current version of Capistrano
lock '3.9.1'

set :application, 'heimdall'
set :repo_url, "git@github.com:emoilenne/heimdall.git"
set :deploy_to,   "/home/deployer/heimdall"

set :linked_files, %w{config/database.yml config/api_key.yml config/secrets.yml}

set :linked_dirs, %w{log tmp/pids tmp/cache public/uploads}

set :rbenv_type, :user
set :rbenv_ruby, '2.4.2'
# set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value
set :default_env, {PATH: '$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH'}

after 'deploy:publishing', 'deploy:restart'


# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5
