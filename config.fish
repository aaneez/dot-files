
# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.fish.inc' ]; 
    . '~/google-cloud-sdk/path.fish.inc'; 
end


set -g theme_color_scheme dracula
eval (direnv hook fish)
set -Ux PYENV_ROOT $HOME/.pyenv
status is-login; and pyenv init --path | source
pyenv init - | source

cd ~/Downloads

## == Start - Bob The fish settings ==
set -g theme_powerline_fonts yes
set -g default_user your_normal_user
set -g fish_prompt_pwd_dir_length 1
set -g theme_date_format "+%a %H:%M"
set -g theme_display_cmd_duration yes
set -g theme_display_date yes
set -g theme_display_git yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty yes
set -g theme_display_git_default_branch yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_untracked yes
set -g theme_display_user ssh
set -g theme_git_default_branches master main
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$: '
set -g theme_display_git_default_branch yes
set -g theme_use_abbreviated_branch_name yes
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_display_k8s_context no
set -g theme_display_k8s_namespace no
set -g theme_display_vagrant yes
## == End - Bob The fish settings ==


#test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish ; or true
