${BASE}.posts.html: ${BASE}.notes.html.markdown
	pandoc --template pandoc-jekyll-talk-template ${PDSFLAGS} \
	       --atx-headers \
	       ${POSTFLAGS} \
               --to html \
               --out ${BASE}.posts.html  ${BASE}.notes.html.markdown 
	cp ${BASE}.posts.html ${POSTDIR}/${OUT}.html
