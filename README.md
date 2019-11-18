# Adam Altmejd's slides

Repository of slides for different talks. Latest version is available here. If you are interested in an older version, check the [commit history](https://github.com/adamaltmejd/slides/commits/master).

## List of slides

Handouts only in **Google Chrome** and have to be printed/exported in *landscape mode*.

[Introduction to Open Science](open_science.html) - [handout](open_science.html?print-pdf&showNotes=true) - Updated: 2019-11-18

## Building the repository

 and are available online at <https://adamaltmejd.se/slides>.

Slides use [Reveal.js](reveal.js) but because the built-in revealjs R extension that works with `Rmarkdown` doesn't use the latest version and lacks some customization,
this repository instead only uses `knitr` to convert from `.Rmd` to `.md` and then `Pandoc's` builtin presentation revealjs-functionality together with a custom template. To
build all `.Rmd` presentations in the main folder, simply run `make all`.
