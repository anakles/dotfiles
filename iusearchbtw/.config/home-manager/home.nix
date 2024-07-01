{ config, pkgs, ... }:

{

  home.username = "anakles";
  home.homeDirectory = "/home/anakles";

  #home.stateVersion = "23.11"; # Please read the comment before changing.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.language.base = "en_US.utf8";

  home.packages = with pkgs; [
    git
    localsend
    mullvad-vpn

    okular
    vscode
    vlc
    flameshot
    filelight

    yubikey-manager-qt
    yubikey-manager
    yubikey-personalization
    yubikey-personalization-gui

    # Ricing
    phinger-cursors

    # Gaming
    modrinth-app
  ];

  home.pointerCursor = {
    name = "phinger-cursors-dark";
    package = pkgs.phinger-cursors;
    size = 32;
    gtk.enable = true;
  };


  programs.git = {
    enable = true;
    userName = "Anakles";
    userEmail = "41325371+anakles@users.noreply.github.com";
    # signing = {
    #    key = "4522F4BD7D74E101ED341E29C5E2078A67845C1E";
    #    signByDefault = true;
    #};
    extraConfig = {
        core = {
            editor = "nvim";
            autocrlf = false;
            quotePath = false;
        };
        pull.rebase = true;
    };
  };


  # Import other configuration files
  imports = [

    ./hacking.nix
    ./cli.nix
    ./sway.nix

  ];


  xdg = {
    enable = true;

    mimeApps = {
        enable = false;

        defaultApplications = {
            "x-scheme-handler/http" = ["firefox.desktop"];
            "x-scheme-handler/https" = ["firefox.desktop"];
            "x-scheme-handler/chrome" = ["firefox.desktop"];
            "x-scheme-handler/mailto" = ["thunderbird.desktop"];
            "text/html" = ["firefox.desktop"];
            "application/x-extension-htm" = ["firefox.desktop"];
            "application/x-extension-html" = ["firefox.desktop"];
            "application/x-extension-shtml" = ["firefox.desktop"];
            "application/x-extension-xhtml" = ["firefox.desktop"];
            "application/x-extension-xht" = ["firefox.desktop"];
            "application/xhtml+xml" = ["firefox.desktop"];
            "application/pdf" = ["okular.desktop"];
            "image/jpeg" = ["okular.desktop"]; #okularApplication_kimgio.desktop
            "video/mp4" = ["vlc.desktop"];
        };

        associations = {
            added = {
                "x-scheme-handler/http" = ["firefox.desktop"];
                "x-scheme-handler/https" = ["firefox.desktop"];
                "x-scheme-handler/chrome" = ["firefox.desktop"];
                "x-scheme-handler/mailto" = ["thunderbird.desktop"];
                "text/html" = ["firefox.desktop"];
                "application/x-extension-htm" = ["firefox.desktop"];
                "application/x-extension-html" = ["firefox.desktop"];
                "application/x-extension-shtml" = ["firefox.desktop"];
                "application/x-extension-xhtml" = ["firefox.desktop"];
                "application/x-extension-xht" = ["firefox.desktop"];
                "application/xhtml+xml" = ["firefox.desktop"];
                "application/pdf" = ["okular.desktop"];
                "image/jpeg" = ["okular.desktop"]; #okularApplication_kimgio.desktop
                "video/mp4" = ["vlc.desktop"];
            };
        };
    };

  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}
