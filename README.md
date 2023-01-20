# Institute of Physics (IOP)

This Quarto format will help you create documents for journals published by IOP. For more about producing LaTeX output for IOP journals, see <https://publishingsupport.iopscience.iop.org/questions/latex-template/>.

## Creating a New Article

You can use this as a template to create an article for an IOP journal. To do this, use the following command:

```bash
quarto use template sebdunnett/quarto-iop
```

This will install the extension and create an example qmd file and bibiography that you can use as a starting place for your article.

## Installation For Existing Document

You may also use this format with an existing Quarto project or document. From the Quarto project or document directory, run the following command to install this format:

```bash
quarto install extension sebdunnett/quarto-iop
```

## Usage

To use the format, you can use the format names `iop-pdf` and `iop-html`. For example:

```bash
quarto render article.qmd --to iop-pdf
```

or in your document yaml

```yaml
format:
  pdf: default
  iop-pdf:
    keep-tex: true    
```

You can view a preview of the rendered template at <https://sebdunnett.github.io/quarto-iop/>.

## Format Options

This format provides a number of custom YAML header options to control the PDF format:

```yaml
# set to true to use the orcidlink package to display linked orcid logos
# beside authors on title page
display-orcids: true
# use journal macros set out in the IOP style guide
# to add which journal an article is targetting
# e.g. \ERL = Environmental Research Letters
submitted-to: \ERL
# test your article in two column form
# NB: does not work well with code chunk outputs
twocol: true
```
