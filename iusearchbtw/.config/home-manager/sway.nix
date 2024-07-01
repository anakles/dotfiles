{ pkgs, ...}:

{
    home.packages = with pkgs; [
        
        # ERROR: Rofi can't find the locale
        #rofi

    ];
}
