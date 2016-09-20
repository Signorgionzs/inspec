control 'apache apacheVersion-1.0' do
  impact 4.3
  title 'check version of apache  CVE-2007-6388'
  desc 'when the server-status page is enabled, allows remote attackers to inject arbitrary web script or HTML via unspecified vectors'
  tag 'gordon'
  ref 
 


describe command('apache2 -v') do
   its('stdout') { should_not match (/(2.2.[0-6])|(2.0.[35-61])|(1.3.[2-39])/) }

end
end