cd hexo-zh && hexo clean && hexo g && cd .. && cd hexo-en && hexo clean && hexo g && cd .. && xcopy hexo-en\public hexo-zh\public\en /e /i && cd hexo-zh && hexo d && cd ..
