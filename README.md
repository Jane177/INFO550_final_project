# INFO 550
## My project

For my project, I will analyze  `ProjectA` data. 

This project used linear regression to test the relationship between CPC counts and obsetity. R packages used in this project were 'kableExtra','car','kableExtra' and 'knitr'. which can be installed using R commands.


``` r
installed_pkgs <- row.names(installed.packages())

pkgs <- c("kableExtra","car","kableExtra", "knitr")

for(p in pkgs){
	if(!(p %in% installed_pkgs)){
		install.packages(p)
	}
}
```

## Execute the analysis

To execute the analysis, from the project folder you can run 

``` bash
Rscript -e "rmarkdown::render('INFO 555-HW2-YajieLiu.Rmd')"
```

This will create a file called `INFO 555-HW2-YajieLiu.html` output in your directory that contains the results.

