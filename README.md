# matdehaven.github.io
My academic website

## Create Github repository

Titled `username.github.io`

## Create local R project linked to github repository

Initialize "renv" to keep track of package versions.

Install and load R package "blogdown"

    blogdown::new_site(theme = "adityatelange/hugo-PaperMod", netlify = F)

Click through yeses, should see a local template version of the PaperMod site.

Add to "config.yaml" `publishDir: docs/`

Run `blogdown::build_site()`

Delete the folder "./public", this is now replaced by "./docs".

Push to Github.

## Setup Github Pages


