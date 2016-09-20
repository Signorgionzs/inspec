control 'ssh-1.0' do
  impact 0.7
  title 'ssh test'
  desc 'An optional description...'
  tag 'gordon'
  ref 

describe sshd_config do
   its('Ciphers') { should_not eq('chacha20-poly1305@openssh.com,aes256-ctr,aes192-ctr,aes128-ctr') }
end
end