require('rmarkdown')

project_dir <- path.expand("~/edu/chennai-modelling")
Rmd_dir <- file.path(project_dir, "Rmd")
html_dir <- file.path(project_dir, "gh-pages")

# Rmd_files <- c("index","code_sto_model","play_with_seitl","play_with_seitl_example")
# Rmd_files <- c("code_sto_model", "SEITL_model", "SEITL_deter", "SEITL_flowchart")
Rmd_files <- c("index","intro_to_r_gk","code_sto_model","SEITL_implement_partial", "SEITL_implement_full")

for (Rmd_file in Rmd_files) {
	render(file.path(Rmd_dir, sprintf("%s.Rmd", Rmd_file)),
		output_dir = html_dir)
}

