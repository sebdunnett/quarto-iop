# Institute of Physics (IOP)

This is a Quarto template that assists you in creating a manuscript for IOP journals. You can learn more about ...

## Creating a New Article

You can use this as a template to create an article for an IOP journal. To do this, use the following command:

```bash
quarto use template quarto-journals/iop
```

This will install the extension and create an example qmd file and bibiography that you can use as a starting place for your article.

## Installation For Existing Document

You may also use this format with an existing Quarto project or document. From the quarto project or document directory, run the following command to install this format:

```bash
quarto install extension quarto-journals/iop
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

You can view a preview of the rendered template at <https://quarto-journals.github.io/article-format-template/>.

## Format Options

This format does not have specific format option. Include documentation of such option otherwise. See <https://github.com/quarto-journals/elsevier#format-options> for an example.
