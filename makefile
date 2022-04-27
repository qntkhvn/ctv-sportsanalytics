all: README.md

README.md: SportsAnalytics.md
	Rscript -e 'ctv::ctv2html("SportsAnalytics.md")'
	Rscript -e 'browseURL("SportsAnalytics.html")'
	cp SportsAnalytics.md README.md

clean: 
	rm *.idx *.ilg *.ind *.bbl *.blg *.bcf *.out *.aux *.log *.run.xml
	