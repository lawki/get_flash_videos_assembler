if test -f "video_url1.mp4"
then
 continue
 else
 get_flash_videos http://mywebsite.com/video_url1 -f "video_url1.mp4"
fi
if test $? -ne 0
 then
 if test -f "video_url1.mp4"
 then rm "video_url1.mp4"
fi
 echo "http://mywebsite.com/video_url1">>"problem_downloading.txt"
fi
if test -f "video_url2.mp4"
then
 continue
 else
 get_flash_videos http://mywebsite.com/video_url2 -f "video_url2.mp4"
fi
if test $? -ne 0
 then
 if test -f "video_url2.mp4"
 then rm "video_url2.mp4"
fi
 echo "http://mywebsite.com/video_url2">>"problem_downloading.txt"
fi
if test -f "video_url3.mp4"
then
 continue
 else
 get_flash_videos http://mywebsite.com/video_url3 -f "video_url3.mp4"
fi
if test $? -ne 0
 then
 if test -f "video_url3.mp4"
 then rm "video_url3.mp4"
fi
 echo "http://mywebsite.com/video_url3">>"problem_downloading.txt"
fi
if test -f "video_url4.mp4"
then
 continue
 else
 get_flash_videos http://mywebsite.com/video_url4 -f "video_url4.mp4"
fi
if test $? -ne 0
 then
 if test -f "video_url4.mp4"
 then rm "video_url4.mp4"
fi
 echo "http://mywebsite.com/video_url4">>"problem_downloading.txt"
fi
