function merge_files
    set output_file $argv[1]
    for file_path in (seq 2 (count $argv))
        set file_path $argv[$file_path]
        cat $file_path >> $output_file
    end
    echo "Files merged successfully!"
end
