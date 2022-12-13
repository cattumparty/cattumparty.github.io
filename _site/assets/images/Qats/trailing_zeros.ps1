$files = Get-ChildItem -File -Filter IMG_0*

# Use `Rename-Item` with `TrimStart` to rename the files to the appropriate name without the leading 0s
$files |Rename-Item -NewName { $_.Name.Trim('IMG_0') }