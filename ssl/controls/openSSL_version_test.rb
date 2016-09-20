control 'openssl-1.0' do
  impact 0.7
  title 'check version ssl not affected by heartbleed'
  desc 'An optional description...'
  tag 'gordon'
  ref 
 


describe command('openssl version') do
   its('stdout') { should_not match (/OpenSSL 1.0.1[a-f]/) }
its('stdout') { should_not match(/OpenSSL 1.0.2-beta*/) }


end
end