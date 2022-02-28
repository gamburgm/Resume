pdf:
	latexmk resume.tex

clean:
	ls resume* *.log *.fls | grep -v "resume.\(tex\|cls\)" | xargs rm -f
