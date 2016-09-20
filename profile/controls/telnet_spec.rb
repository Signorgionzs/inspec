control 'telnetspec-1.0' do
  impact 0.7
  title 'funzionamento telnet'
  desc 'An optional description...'
  tag 'gordon'
  ref 
 
           

describe package('telnetd') do
  it { should_not be_installed }
end

describe inetd_conf do
  its("telnet") { should eq nil }
end
end