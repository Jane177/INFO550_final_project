# here’s a makefile
# rule of making report
output/report.html: Data/ProjectA.csv Rmd/report.Rmd
	Rscript -e "rmarkdown::render('Rmd/report.Rmd')"
	mv Rmd/report.html output/report.html

