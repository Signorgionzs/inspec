control 'poodle-1.0' do
  impact 4.3
  title 'check version ssl'
  desc 'The POODLE attack takes advantage of the protocol version negotiation feature built into SSL/TLS to force the use of SSL 3.0 and then leverages this new vulnerability to decrypt select content within the SSL session. The decryption is done byte by byte and will generate a large number of connections between the client and server.'
  tag 'gordon'
  ref 
 


describe command('openssl version') do
   its('stdout') { should_not match (/OpenSSL 3.0/) }

end
end