control 'hostRecheable' do
  impact 0.7
  title 'check if the host is recheable'
  desc 'An optional description...'
  tag 'gordon'
  ref 

describe host('www.google.com') do
  it { should be_reachable }
end
end