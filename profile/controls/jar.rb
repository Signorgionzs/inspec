control 'jar's existence' do
  impact 0
  title 'control the existence of the jar file'
  tag 'gordon'
  ref 
 describe file(/home/centos/ropeytasks.jar') do
 it { should exist }
end
end
