require 'net/ssh'
require 'net/http'

When(/^I provision it$/) do
  @host = 'local.ansible.com'
  @user = 'ita'

  # `vagrant halt`
  # `vagrant up`
  `vagrant provision`
end

When(/^I get access to it$/) do
  result = run_remote("ssh #{@user}@#{@host}")
  expect $?.success? == true
end

Then(/^I expect it to have nginx running$/) do
  expect(Net::HTTP.get(@host, '/index.html').length).to be > 0
end

def run_remote(command, verbose = false)
  Net::SSH.start(@host, @user) do |ssh|
    if verbose
      ssh.exec(command)
    else
      ssh.exec!(command)
    end
  end
end
