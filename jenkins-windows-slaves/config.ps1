# Need to unset credential.helper in windows git installation
git config --global --unset credential.helper
git config --system --unset credential.helper

# Enable files having long path names should be allowed
git config --system core.longpaths true
