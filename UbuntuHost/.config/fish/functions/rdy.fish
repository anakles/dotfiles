function rdy
	cd $HOME/Repos/rdy/
	source venv/bin/activate.fish
	python rdy.py
	deactivate
	cd -
end
