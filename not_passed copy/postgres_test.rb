control 'postgres-1.0' do
  impact 0.7
  title 'postgres on port 5431'
  desc 'An optional description...'
  tag 'gordon'
  ref 

describe postgres_conf do
  its('port') { should eq '5432' }
end
end