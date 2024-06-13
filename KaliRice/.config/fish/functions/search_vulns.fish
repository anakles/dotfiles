function search_vulns
    source ~/Repos/search_vulns/venv/bin/activate.fish
    /home/nbetz/Repos/search_vulns/search_vulns.py -q $argv
    deactivate
end
