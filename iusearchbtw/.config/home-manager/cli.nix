{ pkgs, ...}:

{
    home.packages = with pkgs; [
        fish
        neovim
        traceroute
    ];
}
