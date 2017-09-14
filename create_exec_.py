#!usr/bin/python
try:
    f = open("link.txt","r")
except IOError:
    print "ERROR!\n"
    exit
o = open("download_all_files.sh","w")
for line in f:
    if len(line)==0:
        continue
    file_name = line.split("/")
    file_name = file_name[len(file_name)-1]
    file_name = "\""+file_name[:len(file_name)-1]+".mp4\""
    command =  "if test -f "+file_name+"\nthen\n continue\n else\n get_flash_videos "+line[:len(line)-1]+" -f "+file_name+""+"\nfi\n"+"if test $? -ne 0\n then\n if test -f "+file_name+"\n then rm "+file_name+"\nfi\n echo \""+line[:len(line)-1]+"\">>\"problem_downloading.txt\"\nfi\n"
    o.write(command)
