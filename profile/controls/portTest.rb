control 'port-1.0' do
  impact 0
  title 'test of ports'
  desc 'An optional description...'
  tag 'gordon'
  ref 
 
describe port(8080) do
  it { should be_listening }
  its('addresses') {should include '127.0.0.1'}
  its('processes') {should include  'java'}
end

end
