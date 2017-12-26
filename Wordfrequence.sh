# Command to find word frequencey in a file
cat inputfile.txt | tr ' ' '\n' | sort | uniq -c > outfile.txt     #uniq -c does this operation just the input data needs to be sorted
