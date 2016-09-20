control 'port-1.0' do
  impact 0.7
  title 'test of ports'
  desc 'An optional description...'
  tag 'gordon'
  ref 
 

describe port(80) do
  it { should be_listening }
end


describe port(3306) do
  it { should be_listening }
  its('addresses') {should include '127.0.0.1'}
  its('processes') {should include  'mysqld'}
end
end