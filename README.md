#My project
For my project, I will analyze  `ProjectA` data. 
This project used linear regression to test the relationship between CPC counts and obsetity. 

#Execute the analysis
To execute the analysis using Docker, please first pull the image from Docker hub using
```{r}
docker pull jane177/info550
```
To build the report, run
```{r}
docker run -v /local_path/output:/project/output -it jane177/info550
```
*Replace "/local_path" with desired directory on your laptop. The report can be retrieved from the output folder in this directory.

Example
```{r}
docker run -v ~/Desktop/output:/project/output -it jane177/info550
```
will create a folder called output in specified directory which contains the output report.html
