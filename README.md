# qmd-tips-example

This repo demonstrates how to set up an analysis project which has some desirable features:

1) Paths. Quarto (qmd) document is in the /docs folder, output directed to /output, and the working directory is the project root.
2) Execution. The Quarto analysis can be executed either interactively, or via the targets pipeline.


Steps:

1) Establish a _quarto.yml file with the following options:

```
project:
  execute-dir: project
  output-dir: output
```

The first line ensures that qmd files use the project directory for execution.
The second directs output to the /output folder.


Tips:

* Setup chunk and paths. As of April 2025, unfortunately the RStudio IDE does not fully respect the interaction of chunks labelled 'setup' and execute-dir: project
RStudio DOES give special treatment to a chunk with:

```
#| label: setup
```

See if this is resolved: https://github.com/rstudio/rstudio/issues/14127
Discussion of behavior: https://forum.posit.co/t/quarto-equivalent-to-rmarkdown-setup-chunk/153018



Notes:

It appears that changing the execution directory of a qmd file requires a quarto 'project' configuration file in the root:
https://github.com/quarto-dev/quarto-cli/discussions/9667

Morgan's stackoverflow Q: https://stackoverflow.com/questions/78894145/quarto-document-not-seeing-project-directory-for-targets-data-functions-or-scr

Quarto projects: https://quarto.org/docs/projects/quarto-projects.html

Slightly weird: this is sending output to /output/docs b/c of the docs subfolder...

Discussion: https://github.com/ropensci/tarchetypes/discussions/107

Maybe related to `tar_quarto` error running on individual file.
https://github.com/quarto-dev/quarto-r/issues/16

