require('rmarkdown')

project_dir <- path.expand("~/code/modelling")
Rmd_dir <- file.path(project_dir, "Rmd")
html_dir <- file.path(project_dir, "website")

# Rmd_files <- c("index","code_sto_model","play_with_seitl","play_with_seitl_example")
# Rmd_files <- c("code_sto_model", "SEITL_model", "SEITL_deter", "SEITL_flowchart")
# Rmd_files <- c("index") #,"intro_to_r_gk","code_sto_model","SEITL_implement_partial", "SEITL_implement_full")
Rmd_files <- c("index","code_sto_model") 
# Rmd_files <- c("SEITL_transition_table") #my_first_fitmodel
# Rmd_files <- c("index","using_fitR","posterior_example_solution","posterior_example")


for (Rmd_file in Rmd_files) {
	render(file.path(Rmd_dir, sprintf("%s.Rmd", Rmd_file)),
		output_dir = html_dir)
}

