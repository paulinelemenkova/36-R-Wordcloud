# R Word Cloud — Mariana Trench Project Terms

R script drawing a word cloud of the methods, tools and concepts used in the Mariana Trench R analysis, sized by term frequency, using the wordcloud package.

## Related publication

This script produced Figure 22 (right) in:

Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.

- DOI: https://doi.org/10.3846/gac.2019.3785
- figshare: https://doi.org/10.6084/m9.figshare.9762860
- HAL: https://hal.science/hal-02277500
- Zenodo: https://zenodo.org/record/3385005
- SSRN: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3447481
- ISSN: 2029-6991 (Scopus)

## Script

- Wordcloud-Mariana.R: reads a term corpus (Wordcloud-Mariana.txt) via the tm text-mining pipeline (Corpus, term-document matrix, frequency counts) and renders a frequency-sized word cloud (wordcloud, RColorBrewer palette).

## Methods

- Text mining: corpus cleaning, term-frequency matrix, frequency-proportional word-cloud layout.

## Data

- Wordcloud-Mariana.txt: corpus of terms from the Mariana Trench R project.

## Requirements

- R (>= 3.5); packages: wordcloud, tm, RColorBrewer

## Author and citation

Polina Lemenkova — ORCID https://orcid.org/0000-0002-5759-1089

Cite: Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84. https://doi.org/10.3846/gac.2019.3785

## License

MIT — see LICENSE (Copyright Polina Lemenkova).
