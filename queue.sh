#!/bin/bash
# queue <cmd & options>

# grab the current directory
CWD=`pwd`

# generate a script file
echo "#!/bin/bash\npushd $CWD\nexec $@\npopd" > /tmp/queue.sh

# at the script to the at queue b (like batch, but easier to add a file)
at -q b -f /tmp/queue.sh now

# remove script now that it's been queued
rm /tmp/queue.sh
