control 'ProcessMysqld-1.0' do
  impact 0.7
  title '1 process Mysqld'
  desc 'An optional description...'
  tag 'gordon'
  ref 

describe processes('mysqld') do
  its('list.length') { should eq 1 }
end 
end
