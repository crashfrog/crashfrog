--- Flatten citeproc's second-field-align markup.
---
--- With second-field-align="flush", citeproc wraps each bibliography entry in
--- a .csl-left-margin span (the citation number) and a .csl-right-inline span
--- (the entry text). Those spans exist to drive HTML/CSS hanging indents; the
--- AsciiDoc writer emits them as literal `[.role]#...#` markup, which
--- Asciidoctor then prints verbatim.
---
--- Unwrapping them here keeps the number correctly separated from the entry
--- (dropping second-field-align from the style instead glues "1." to the first
--- author's given name) and leaves clean inlines for later filters to match on.
---
--- Must run before bold-author.lua.

local function has_class(el, name)
  for _, c in ipairs(el.classes) do
    if c == name then return true end
  end
  return false
end

function Span(el)
  if has_class(el, "csl-left-margin") then
    local out = el.content:clone()
    -- The label may already end in a space; normalise to exactly one.
    while #out > 0 and out[#out].t == "Space" do out:remove(#out) end
    out:insert(pandoc.Space())
    return out
  elseif has_class(el, "csl-right-inline") then
    return el.content
  end
  return nil
end
