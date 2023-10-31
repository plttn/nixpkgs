# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{ inputs
, lib
, config
, pkgs
, ...
}: {
  programs.git = {
    enable = true;
    userName = "Jack Platten";
    userEmail = "jack@platten.me";
    # Replaces ~/.gitignore
    ignores = [
      ".cache/"
      ".DS_Store"
      ".idea/"
      "*.swp"
      "built-in-stubs.jar"
      "dumb.rdb"
      ".elixir_ls/"
      ".vscode/"
      "npm-debug.log"
      "shell.nix"
    ];


    # Replaces aliases in ~/.gitconfig
    aliases = {
      ba = "branch -a";
      bd = "branch -D";
      br = "branch";
      cam = "commit -am";
      co = "checkout";
      cob = "checkout -b";
      ci = "commit";
      cm = "commit -m";
      cp = "commit -p";
      d = "diff";
      dco = "commit -S --amend";
      s = "status";
      pr = "pull --rebase";
      st = "status";
      l = "log --graph --pretty='%Cred%h%Creset - %C(bold blue)<%an>%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)' --abbrev-commit --date=relative";
      whoops = "reset --hard";
      wipe = "commit -s";
      fix = "rebase --exec 'git commit --amend --no-edit -S' -i origin/develop";
      # list aliases
      la = "!git config -l | grep alias | cut -c 7-";
    };
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      push = {
        autoSetupRemote = "true";
      };
      # gpg = {
      #   program = "${pkgs.gnupg}/bin/gpg";
      # };
    };
  };
}
