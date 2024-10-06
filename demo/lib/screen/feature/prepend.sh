directory="/Users/alexs/dev/pluto_grid/demo/lib/screen/feature/src"

# String to prepend
#prepend_string="part of '../index.dart';\n"

# # Loop through all text files (*.txt) in the directory
# for file in "$directory"/*.dart; do
#     # Create a temporary file
#     temp_file=$(mktemp)
    
#     # Write the prepend string to the temporary file
#     echo "$prepend_string" > "$temp_file"
    
#     # Append the content of the original file to the temporary file
#     cat "$file" >> "$temp_file"
    
#     # Move the temporary file back to the original file
#     mv "$temp_file" "$file"
# done

for file in "$directory"/*.dart; do
    # Use sed to delete lines starting with "import" and save changes in-place
       sed -i '' '/^import/d' "$file"
done