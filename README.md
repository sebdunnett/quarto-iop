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
  iop-pdf:
    keep-tex: true    
```

You can view a preview of the template rendered as PDF at <https://sebdunnett.github.io/quarto-iop/>.