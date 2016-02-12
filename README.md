Rig for testing feature branch to test-kitchen to allow shell provisioner to run with specified command interpreter

* git clone https://github.com/b00ga/kitchen-bootstrap-testrig.git
* cd kitchen-bootstrap-testrig
* bundle install --path vendor/bundle
* Test different configs
  * Test a default Linux setup: bundle exec kitchen converge centos
  * Test default stub script: mv bootstrap.sh bootstrap.sh.bak; bundle exec kitchen converge centos
  * Restore bootstrap.sh: mv bootstrap.sh.bak bootstrap.sh
  * Test explicit call as bash:  Unomment out bash line in .kitchen.yml -> bundle exec kitchen converge centos
  * Test zsh: Comment out bash line and uncomment zsh line -> bundle exec kitchen converge centos
  * Test ksh: Comment out zsh line and uncomment ksh line: bundle exec kitchen converge centos
  * Test tcsh: Comment out ksh line. Uncomment 2 tcsh lines: bundle exec kitchen converge centos
  * Test python bootstrap: Comment out 2 tcsh lines. Uncomment 2 python lines: bundle exec kitchen converge centos
  * Test default Windows setup: bundle exec kitchen converge 2012  (May timeout but still get created. Try another converge once vagrant/VBox bring up the VM)
  * Test default stub script: mv bootstrap.ps1 bootstrap.ps1.bak; bundle exec kitchen converge 2012
  * Restore bootstrap: mv bootstrap.ps1.bak bootstrap.ps1
  * Test with cmd.exe: Uncomment 2 cmd lines in .kitchen.yml -> bundle exec kitchen converge 2012
* Cleanup when you're all dine: bundle exec kitchen destroy

