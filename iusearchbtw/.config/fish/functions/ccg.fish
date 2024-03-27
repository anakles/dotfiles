function ccg
    cd ~/Repos/ccg/
    source venv/bin/activate.fish
    python generate.py --output-dir ~/MEGA/Notes/Nikis_Notes/Obsidian_Notes/templates/ --format md --indent 4
    deactivate
    cd -
end
