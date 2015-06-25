describe 'Critical Services' do

  it 'SSH daemon' do
    status        = `ps aux | grep [s]shd`
    error_message = "The sshd service is not running! \n\n Try starting the service with: 'sudo service sshd start'."
    expect(status).to_not be_empty, error_message
  end

  it 'nginx daemon' do
    status        = `ps aux | grep [n]ginx`
    error_message = "The nginx service is not running! \n\n Try starting the service with: 'sudo service nginx start'."\
                    "\n\n To investigate further, inspect the logs at /var/log/nginx/{access,error}.log"
    expect(status).to_not be_empty, error_message
  end

end
