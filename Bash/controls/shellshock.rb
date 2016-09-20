control 'shellshock-1.0' do
  impact 0.7
  title 'check bash not affected by shellshock  CVE-2014-6271'
  desc 'GNU Bash through 4.3 processes trailing strings after function definitions in the values of environment variables, which allows remote attackers to execute arbitrary code via a crafted environment, as demonstrated by vectors involving the ForceCommand feature in OpenSSH sshd, the mod_cgi and mod_cgid modules in the Apache HTTP Server, scripts executed by unspecified DHCP clients, and other situations in which setting the environment occurs across a privilege boundary from Bash execution, aka "ShellShock." NOTE: the original fix for this issue was incorrect; CVE-2014-7169 has been assigned to cover the vulnerability that is still present after the incorrect fix.
'
  tag 'gordon'
  ref 
 


describe command('env x=\'() { :;}; echo vulnerable\' bash -c "echo this is a test"') do
   its('stdout') { should match (/this is a test/) }



end
end