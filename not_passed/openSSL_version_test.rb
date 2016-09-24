control 'openssl-1.0' do
  impact 0.7
  title 'check version ssl not affected by heartbleed'
  desc 'An optional description...'
  tag 'gordon'
  ref 
 


describe command('echo "QUIT"|openssl s_client -connect 127.0.0.1 2>&1|grep \'server extension "heartbeat" (id=15)\' || echo safe') do
   its('stdout') { should match (/safe/) }



end
end
