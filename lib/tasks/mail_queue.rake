namespace :mail_queue do
  task :pop do
    puts Redis.new.lpop('queue:default')
  end
end
