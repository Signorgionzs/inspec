control 'PHP-Fusion-1.0' do
  impact 4.3
  title 'php fusion CVE-2005-4005'
  desc '1. Input passed to the "activate" parameter in "register.php" and the "cat_id" parameter in "faq.php" isn t properly sanitised before being used in a SQL query. This can be exploited to manipulate SQL queries by injecting arbitrary SQL code. 
2. Input passed to the "srch_text" parameter in "messages.php" isn t properly sanitised before being used in a SQL query. This can be exploited to manipulate SQL queries by injecting arbitrary SQL code. 
 '
  tag 'gordon'
  ref
describe command('php --version') do
   its('stdout') { should_not match (/PHP 6.00.109/) }
 end

end