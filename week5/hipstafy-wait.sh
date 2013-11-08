#!/bin/bash

watchdir=~/Desktop/hipstafy-dropbox/
outdir=~/Desktop/hipstafy-dropbox/hipstafied/

# monitor for freshly written OR moved files
inotifywait -m -e close_write,moved_to $watchdir | while read dir event file; do
        echo DEBUG: $dir $event $file

        in="$dir$file"

        echo DEBUG: hipstafying "$in"
        
        echo "$(./hipstafy.sh $in)"       

        echo "DEBUG: all done."
done
