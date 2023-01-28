--[[
  This file defines the shortcodes that your extension will make available
  https://quarto.org/docs/authoring/shortcodes.html#custom-shortcodes
  Quarto exports utils function that can be used in all filters. See 
  https://github.com/quarto-dev/quarto-cli/blob/main/src/resources/pandoc/datadir/init.lua#L1522-L1576
]]--

-- Example shortcode that provides a nicely formatted 'LaTeX' string
function latex()
  if quarto.doc.isFormat("pdf") then
    return pandoc.RawBlock('tex', '{\\LaTeX}')
  elseif quarto.doc.isFormat("html") then
    return pandoc.Math('InlineMath', "\\LaTeX")
  else 
    return pandoc.Span('LaTeX')
  end
end

function appendix()
  if quarto.doc.isFormat("pdf") then
    return {
      pandoc.RawBlock('tex', '\\appendix'),
      pandoc.RawBlock('tex', '\\section*{Appendix}'),
      pandoc.RawBlock('tex', '\\setcounter{section}{1}')
      }
  elseif quarto.doc.isFormat("html") then
    return pandoc.Null()
  end
end

function appendices()
  if quarto.doc.isFormat("pdf") then
    return {
      pandoc.RawBlock('tex', '\\appendix')
      }
  elseif quarto.doc.isFormat("html") then
    return pandoc.Null()
  end
end