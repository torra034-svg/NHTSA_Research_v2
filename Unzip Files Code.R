zip_files <- list.files(
  path = "", # Replace with your actual folder path
  pattern = "\\.zip$",          # Finds only files ending in .zip (case-sensitive)
  full.names = TRUE,            # Returns the complete file path, not just the name
  recursive = TRUE              # Searches all subfolders
)

for (zip_file in zip_files) {
  unzip(zip_file, exdir = dirname(zip_file))
}