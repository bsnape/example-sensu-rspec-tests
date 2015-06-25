describe 'Critical Services' do

  it 'is running the SSH daemon' do
    status        = `sudo service sshd status`
    error_message = "The sshd service is not running! \n\n Got the following output when querying the status: '#{status}'"\
                    "\n Try starting the service with: 'sudo service sshd start'."
    expect(status).to_not include('stopped'), error_message
  end

  it 'is running the nginx daemon' do
    status        = `sudo service nginx status`
    error_message = "The nginx service is not running! \n\n Got the following output when querying the status: '#{status}'"\
                    "\n Try starting the service with: 'sudo service nginx start'."\
                    "\n\n To investigate further, inspect the logs at /var/log/nginx/{access,error}.log"
    expect(status).to_not include('stopped'), error_message
  end

end
