control 'CVE-2015-0235-1.0' do
  impact 9
  title 'Ghost test CVE-2015-0235'
  desc 'this vulnerability can allow malicious users to take complete control of a system remotely by exploiting a buffer overflow in the __nss_hostname_digits_dots function through gethostbyname() and gethostbyname2() functions in the glibc library. '
  tag 'gordon'
  ref 

describe command('ldd --version | head -n1') do
   its('stdout') { should_not  match (/\) 2\.([0-9]|1[0-7])$/) }
   its('stdout') { should_not  match (/\) 2\.22$/) }
  
   



end
end