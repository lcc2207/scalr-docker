# install docker
docker_installation_package 'default' do
  version node['scalr-docker']['version']
  action :create
end

docker_service 'default' do
  logfile node['scalr-docker']['logfile']
  action [:create, :start]
end

 node['scalr-docker']['webhooks'].each do |hook|
  docker_container hook['Name'] do
    repo hook['Image']
    env [hook['SCALR_SIGNING_KEY'], hook['SCALR_WEBHOOK_ENV'], hook['SCALR_COMMAND_GV']]
    volumes ['/opt/scripts:/opt/scripts', '/var/log/webhook:/var/log/webhook']
    port hook['Port']
    action :run
  end
 end
