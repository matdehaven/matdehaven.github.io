# My Academic Website

Built with

-   Github Pages

-   R

    -   blogdown

-   Hugo

    -   PaperMod

## Purchase a custom domain

I purchased mine from [Google Domains](https://domains.google), which was easy.

### Set up forwarding for Github Pages

[Guide from Github](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)

Add two records to your domain registry:

    www CNAME username.github.io
        A     [ipaddresses]
        

There will be 4 ip addresses to add to the second record, which point to the Github Pages server.

See [here](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site) from Github to get the correct ip addresses, look for "Configuring an apex domain".

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

Add a blank file called ".nojekyll" to both the root folder "./" and to "./docs/".

Push to Github.

## Setup Github Pages

On the username.github.io repository, go to "Settings" then "Pages".

Change the branch to "main" and folder to "docs".

Set the custom domain as the custom apex domain: `yourdomain.com`.

## Hugo PaperMod setup

See [HugoPaperMod page](https://github.com/adityatelange/hugo-PaperMod/) for setting up and [HugoPaperMod Wiki](https://github.com/adityatelange/hugo-PaperMod/wiki/FAQs) for more information.

Change to Profile Mode. Edit social icons and buttons (I removed buttons).

Add a Menu to the site.