
# Nice lightweight daemon for testing
nomad_job 'redis' do
  source 'redis.hcl.erb'
  notifies :run, 'nomad_job[redis]', :delayed
end
