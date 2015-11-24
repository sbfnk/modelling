require('rmarkdown')

project_dir <- path.expand("~/edu/chennai-modelling")
Rmd_dir <- file.path(project_dir, "Rmd")
html_dir <- file.path(project_dir, "gh-pages")

Rmd_files <- c("index")

for (Rmd_file in Rmd_files) {
	render(file.path(Rmd_dir, sprintf("%s.Rmd", Rmd_file)),
		output_dir = html_dir)
}

