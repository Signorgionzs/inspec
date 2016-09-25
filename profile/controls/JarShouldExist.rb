control 'Jars should exist' do
  impact 0.7
  title 'Jars should exist'
  desc 'Download jars must exist to continue'
  tag 'gordon'
  ref 

describe file('/home/centos/slave.jar') do
  it {  should exist }
end
describe file('/home/centos/ropeytasks.jar') do
  it {  should exist }
end
end
