#!/bin/bash
find . -type f -size +100M -print0 | while IFS= read -r -d $'\0' file; do
  git lfs track "$file"
done
