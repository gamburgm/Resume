pdf:
	latexmk resume.tex

clean:
	ls resume* | grep -v "resume.\(tex\|cls\)" | xargs rm
