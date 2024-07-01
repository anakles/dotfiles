{ pkgs, ...}:

{
    home.packages = with pkgs; [
        
        # WEB
        burpsuite
        
        # Other
        python311Packages.impacket
        crackmapexec   
        python311Packages.pypykatz
        metasploit
        sqlmap
        bloodhound
        bloodhound-py

        # Enumeration
        jsluice
        gobuster
        feroxbuster
        gospider
        kiterunner
        ffuf

        # Password Attacks
        thc-hydra
        hashcat
        john

        # Mobile
        android-studio
        checkra1n
        jadx

    ];
}
