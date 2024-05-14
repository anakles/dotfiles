function ccg
	cd ~/Repos/ccg/
	source venv/bin/activate.fish 
	python generate.py --output-dir ~/.obsidian/NBE\ usd\ AG/templates/ --format md --indent 4
	deactivate
	cd -
end
