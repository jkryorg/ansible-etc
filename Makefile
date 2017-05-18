define HELP
Targets:

    syntax - check syntax of playbook and included roles
      test - test changes
      diff - test and diff changes
      push - push changes

Variables:

      PLAY - playbook to use (default: site.yml)
      HOST - limit to hosts (default: all)
       TAG - limit to tags (default: all)
endef
export HELP

HOST	= all
TAG	= all
PLAY	= site.yml
COMMAND	= ansible-playbook $(PLAY) -l $(HOST) -t $(TAG)

help:
	@echo "$$HELP"

syntax:
	$(COMMAND) -v --syntax

test:
	$(COMMAND) --check

diff:
	$(COMMAND) --check --diff

push:
	$(COMMAND)
