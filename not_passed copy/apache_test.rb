
control 'apache-1.0' do
  impact 4.3
  title 'check apache is running'
  desc ' '
  tag 'gordon'
  ref


describe port(443) do
 it { should be_listening }
 its('processes') { should eq ['apache2'] }
end

describe port(80) do
 it { should be_listening }
 its('processes') { should eq ['apache2'] }
end

describe service('apache2') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

end
     