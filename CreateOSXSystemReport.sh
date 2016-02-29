#!/bin/bash -l
echo "OS X System Report is being created..."
cd $TMPDIR
system_profiler -xml > System\ Report.spx
echo "Compressing report..."
tar -czf System\ Report.tar.gz System\ Report.spx
mv System\ Report.tar.gz ~/Desktop/
rm System\ Report.spx
echo "System Report.tar.gz has been created on your Desktop"
printf "NOTIFICATION:System Report.tar.gz has been created on your Desktop\n"
exit 0
