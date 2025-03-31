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




Notes:

It appears that changing the execution directory of a qmd file requires a quarto 'project' configuration file in the root:
https://github.com/quarto-dev/quarto-cli/discussions/9667

Morgan's stackoverflow Q: https://stackoverflow.com/questions/78894145/quarto-document-not-seeing-project-directory-for-targets-data-functions-or-scr

Quarto projects: https://quarto.org/docs/projects/quarto-projects.html
