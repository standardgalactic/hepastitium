#!/bin/bash

# Set counter
counter=1

# Folder containing the .jpg files (modify if needed)
folder="."

# Rename all .jpg files sequentially
for file in "$folder"/*.jpg; do
    mv "$file" "$folder/$counter.jpg"
    ((counter++))
done

# Compress (overwrite) and resize all .jpg files
mogrify -resize 75% -quality 80 "$folder"/*.jpg  # Resize to 75% and set quality to 80

echo "Renaming, resizing, and compression complete!"

