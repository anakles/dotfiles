#!/bin/bash

# Set vars
templateDir="$HOME/Repos/OSCPasting/templates/"

# Download remote templates

remoteSources=(
	"https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1"
	"https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.exe"
	"https://github.com/gentilkiwi/mimikatz/releases/download/2.2.0-20220919/mimikatz_trunk.zip"
	"https://raw.githubusercontent.com/clymb3r/PowerShell/master/Invoke-Mimikatz/Invoke-Mimikatz.ps1"
	"https://download.sysinternals.com/files/SysinternalsSuite.zip"
	"https://raw.githubusercontent.com/r3motecontrol/Ghostpack-CompiledBinaries/master/Rubeus.exe"
	"https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy64"
	"https://github.com/jpillora/chisel/releases/download/v1.9.1/chisel_1.9.1_windows_amd64.gz"
	"https://github.com/jpillora/chisel/releases/download/v1.9.1/chisel_1.9.1_linux_amd64.gz"
)

# Function to unzip all ".zip" files in the template directory
unzip_files() {
	cd "$templateDir" || exit 1
	for zip_file in *.zip; do
		unzip "$zip_file" -d "${zip_file%.zip}"
		# Optionally, you can remove the zip file after extraction
		# rm "$zip_file"
	done
}

gunzip_files() {
	cd "$templateDir" || exit 1
	for gzip_file in *.gz; do
		gunzip "$gzip_file" -d "${gzip_file%.gz}"
		# Optionally, you can remove the zip file after extraction
		# rm "$gzip_file"
	done
}

# Create the template directory if it doesn't exist
mkdir -p "$templateDir"

# Download remote resources
for source in "${remoteSources[@]}"; do
	# Extract the filename from the URL
	filename=$(basename "$source")

	# Check if the file already exists in the template directory
	if [ -e "$templateDir/$filename" ]; then
		echo "Skipping $filename as it is already downloaded."
	else
		# Download the file into the template directory
		wget -P "$templateDir" "$source"

		# Check if the download was successful
		if [ $? -eq 0 ]; then
			echo "Downloaded $filename successfully."
		else
			echo "Failed to download $filename."
		fi
	fi
done

# Unzip all ".zip" files in the template directory
unzip_files
# Unzip all ".gz" files in the template directory
gunzip_files
