PLAY	= site.yml
HOST	= all
TAG	= all
COMMAND	= ansible-playbook $(PLAY) -l $(HOST) -t $(TAG)

help:
	@printf "Targets:\n\n"
	@printf "    syntax - check syntax of playbook and included roles\n"
	@printf "      test - test changes\n"
	@printf "      diff - test and diff changes\n"
	@printf "      push - push changes\n\n"
	@printf "Variables:\n\n"
	@printf "      PLAY - playbook to use (default: site.yml)\n"
	@printf "      HOST - limit to hosts (default: all)\n"
	@printf "       TAG - limit to tags (default: all)\n"

syntax:
	$(COMMAND) --syntax-check -vvv

test:
	$(COMMAND) --check

diff:
	$(COMMAND) --check --diff

push:
	$(COMMAND)
