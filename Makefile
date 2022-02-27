pdf:
	latexmk resume.tex

clean:
	ls resume* *.log | grep -v "resume.\(tex\|cls\)" | xargs rm -f
