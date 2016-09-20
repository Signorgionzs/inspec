control 'user_spec-1.0' do
  impact 0.7
  title 'user profile'
  desc 'An optional description...'
  tag 'gordon'
  ref 

describe user('root') do
  it { should exist }
  
end

describe user('mysql') do
 it { should exist }
end


end