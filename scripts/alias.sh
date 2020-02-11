#!/bin/zsh
# shellcheck source=/dev/null

# file path aliases
alias to:cabochon='cd $CABOCHON_HOME'
alias to:developer='cd $CABOCHON_HOME/developer'
alias to:techdocs='cd $CABOCHON_HOME/techdocs'
alias to:monolith='cd $CABOCHON_HOME/packages/monolith'
alias to:universe='cd $UNIVERSE_HOME'
alias to:kuiper='cd $UNIVERSE_HOME/packages/kuiper'
alias to:lapidary='cd $UNIVERSE_HOME/packages/lapidary'
alias to:tachyon='cd $UNIVERSE_HOME/packages/tachyon'

# re-source bash profile updates in current terminal
alias update:zsh-profile='source ~/.zshrc'

# copies current git branch to clipboard
alias copy-branch="git branch | grep '^\*' | cut -d' ' -f2 | tr -d '\n' | pbcopy"

# remove all images from docker - frees up allocated hard drive space
alias run:docker-image-prune='docker image prune -af'

# run rails migrations for docker container
alias run:rails-migrate='yarn docker:rails:migrate'

# setup and run rails rspec test suite
alias run:rails-test-setup='yarn docker:rails:rspec:setup'
alias run:rails-test='yarn docker:rails:rspec'

# Print all logs for a docker service.
# 2>&1 combines stderr logs and stdout to allow piping into grep
# http://stackoverflow.com/questions/34724980/finding-a-string-in-docker-logs-of-container
# monolith-logs | grep --color 'findme'
alias monolith-logs='docker service logs --raw opal_monolith 2>&1'
alias queue-logs='docker service logs --raw opal_queue 2>&1'

# Begin tailing logs for a docker service
alias start:monolith-logs='docker service logs --raw --tail 500 -f opal_monolith'
alias start:monolith-setup-logs='docker service logs --raw --tail 500 -f opal_monolith-setup'
alias start:universe-logs='docker service logs --raw --tail 500 -f opal_universe'
alias start:universe-setup-logs='docker service logs --raw --tail 500 -f opal_universe-setup'
alias start:storybook-logs='docker service logs --raw --tail 500 -f opal_storybook'
alias start:queue-logs='docker service logs --raw --tail 500 -f opal_queue'
alias start:psql-logs='docker service logs --raw --tail 500 -f opal_pg-master'

# docker service dependencies
alias run:monolith-deps="to:cabochon && yarn docker:rails:exec 'bundle install'"
alias run:universe-deps="to:cabochon && yarn docker:exec opal_universe-shell 'yarn install'"

# get process id for given docker service
alias run:get-monolith-pid='docker service ps -f "desired-state=running" -q opal_monolith | cut -d: -f1'
alias run:get-universe-pid='docker service ps -f "desired-state=running" -q opal_universe | cut -d: -f1'
alias run:get-universe-shell-pid='docker service ps -f "desired-state=running" -q opal_universe-shell | cut -d: -f1'
alias run:get-storybook-pid='docker service ps -f "desired-state=running" -q opal_storybook | cut -d: -f1'

# start sh session inside docker service
alias start:monolith-sh='docker exec -it opal_monolith.1.$(run:get-monolith-pid) sh'
alias start:universe-sh='docker exec -it opal_universe.1.$(run:get-universe-pid) sh'
alias start:universe-shell-sh='docker exec -it opal_universe-shell.1.$(run:get-universe-shell-pid) sh'
alias start:storybook-sh='docker exec -it opal_storybook.1.$(run:get-storybook-pid) sh'

# restart docker-sync service
alias restart:docker-sync='bundle exec docker-sync stop && bundle exec docker-sync start'
alias restart:monolith='docker service update opal_monolith --force'
alias restart:universe='docker service update opal_universe --force'
alias restart:queue='docker service update opal_queue --force'

# start/stop local environment
alias start:local='yarn docker:start'
alias stop:local='yarn docker:stop'

# scale optional services
alias start:storybook='docker service scale opal_storybook=1'
alias stop:storybook='docker service scale opal_storybook=0'

# rails console and debugging commands
alias start:rails-console='yarn docker:rails:console'
alias start:rails-debug='yarn docker:rails:debug_monolith:start'
alias stop:rails-debug='yarn docker:rails:debug_monolith:stop'

# Git helpers
alias git:local-branches='git branch --merged | grep -v "\\*"'
alias git:cleanup-local-branches='git branch --merged | grep -v "\\*" | xargs -n 1 git branch -d'

# misc
alias grepc='grep --color'
