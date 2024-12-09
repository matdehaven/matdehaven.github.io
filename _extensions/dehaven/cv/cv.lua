-- TODO: Transform the document using a filter, if needed
cv_item = function(el)

  if el.classes[1] ~= 'cv-item' then return el end
  

  if quarto.doc.isFormat("html") then
    
    if el.content[4] ~= nil then
      return {
        pandoc.RawInline('html', '<div class="quarto-layout-panel" data-layout="[[0.7, 0.3], [1]]"><div class="quarto-layout-row"><div id="firstcol" class="quarto-layout-cell" style="flex-basis: 70.0%;justify-content: flex-start;">'),
        el.content[1],
        pandoc.RawInline('html', '</div><div id="secondcol" class="quarto-layout-cell" style="flex-basis: 30.0%;justify-content: flex-start;"><div class="flushright">'),
        el.content[2],
        pandoc.RawInline('html', '</div></div></div><div class="quarto-layout-row"><div id="secondrow" class="quarto-layout-cell" style="flex-basis: 100.0%;justify-content: flex-start;">'),
        el.content[3],
        pandoc.RawInline('html', '</div></div><div class="quarto-layout-row"><div id="thirdrow" class="quarto-layout-cell" style="flex-basis: 100.0%;justify-content: flex-start;">'),
        el.content[4],
        pandoc.RawInline('html', '</div></div></div>')
      }
  
    elseif el.content[3] ~= nil then
      return {
        pandoc.RawInline('html', '<div class="quarto-layout-panel" data-layout="[[0.7, 0.3], [1]]"><div class="quarto-layout-row"><div id="firstcol" class="quarto-layout-cell" style="flex-basis: 70.0%;justify-content: flex-start;">'),
        el.content[1],
        pandoc.RawInline('html', '</div><div id="secondcol" class="quarto-layout-cell" style="flex-basis: 30.0%;justify-content: flex-start;"><div class="flushright">'),
        el.content[2],
        pandoc.RawInline('html', '</div></div></div><div class="quarto-layout-row"><div id="secondrow" class="quarto-layout-cell" style="flex-basis: 100.0%;justify-content: flex-start;">'),
        el.content[3],
        pandoc.RawInline('html', '</div></div></div>')
      }
    
    elseif el.content[2] ~= nil then
      return {
        pandoc.RawInline('html', '<div class="quarto-layout-panel" data-layout="[0.7, 0.3]"><div class="quarto-layout-row"><div id="firstcol" class="quarto-layout-cell" style="flex-basis: 70.0%;justify-content: flex-start;">'),
        el.content[1],
        pandoc.RawInline('html', '</div><div id="secondcol" class="quarto-layout-cell" style="flex-basis: 30.0%;justify-content: flex-start;"><div class="flushright">'),
        el.content[2],
        pandoc.RawInline('html', '</div></div></div></div>')
      }

    elseif el.content[1] ~= nil then
      return {
        pandoc.RawInline('html', '<div class="quarto-layout-panel" data-layout="[1]"><div class="quarto-layout-row"><div id="firstcol" class="quarto-layout-cell" style="flex-basis: 100.0%;justify-content: flex-start;">'),
        el.content[1],
        pandoc.RawInline('html', '</div></div></div>')
      }

    end


  elseif quarto.doc.isFormat("pdf") then

    if el.content[4] ~= nil then
      return {
        pandoc.RawInline('latex', '\\begin{minipage}{0.7\\linewidth}'),
        el.content[1],
        pandoc.RawInline('latex', '\\end{minipage}\\begin{minipage}{0.3\\linewidth}\\begin{flushright}'),
        el.content[2],
        pandoc.RawInline('latex', '\\end{flushright}\\end{minipage}'),
        pandoc.RawInline('latex', '\\vspace{-6pt}\\begin{minipage}{\\linewidth}'),
        el.content[3],
        pandoc.RawInline('latex', '\\end{minipage}'),
        pandoc.RawInline('latex', '\\vspace{-1pt}\\begin{minipage}{\\linewidth}'),
        el.content[4],
        pandoc.RawInline('latex', '\\end{minipage}')
      }
  
    elseif el.content[3] ~= nil then
      return {
        pandoc.RawInline('latex', '\\begin{minipage}{0.7\\linewidth}'),
        el.content[1],
        pandoc.RawInline('latex', '\\end{minipage}\\begin{minipage}{0.3\\linewidth}\\begin{flushright}'),
        el.content[2],
        pandoc.RawInline('latex', '\\end{flushright}\\end{minipage}'),
        pandoc.RawInline('latex', '\\vspace{-6pt}\\begin{minipage}{\\linewidth}'),
        el.content[3],
        pandoc.RawInline('latex', '\\end{minipage}')
      }
    
    elseif el.content[2] ~= nil then
      return {
        pandoc.RawInline('latex', '\\begin{minipage}{0.7\\linewidth}'),
        el.content[1],
        pandoc.RawInline('latex', '\\end{minipage}\\begin{minipage}{0.3\\linewidth}\\begin{flushright}'),
        el.content[2],
        pandoc.RawInline('latex', '\\end{flushright}\\end{minipage}')
      }

    elseif el.content[1] ~= nil then
      return {
        pandoc.RawInline('latex', '\\begin{minipage}{\\linewidth}'),
        el.content[1],
        pandoc.RawInline('latex', '\\end{minipage}')
      }
    end


  else
    -- for other format return unchanged
    return el
  end
end


cv_header = function(el)

  if el.level ~= 2 then return el end

  if quarto.doc.isFormat("pdf") then
    return {
      {pandoc.RawInline('latex', '\\subsection{')}
      .. el.content ..
      {pandoc.RawInline('latex', '}\\vspace{-20pt}\\noindent\\makebox[\\linewidth]{\\rule{\\textwidth}{0.5pt}}')}
    }
  else
    return el
  end
end


return {
  {
    Div = cv_item,
    Header = cv_header
  }
}