--- Bold the CV owner's name wherever it appears in a rendered bibliography.
---
--- Citeproc emits author lists as plain inline text, so the owner's name has to be
--- re-marked after formatting. Matching is done on the *rendered* form, which
--- depends on the CSL style in use: AMA renders "Payne J", author-date styles
--- render "Payne, Justin". Both shapes are handled.
---
--- Configure via pandoc metadata:
---   owner-family: Payne
---   owner-forms: ["J", "Justin", "J."]

local family = "Payne"
local forms = { ["J"] = true, ["J."] = true, ["Justin"] = true }

function Meta(meta)
  if meta["owner-family"] then
    family = pandoc.utils.stringify(meta["owner-family"])
  end
  if meta["owner-forms"] then
    forms = {}
    for _, f in ipairs(meta["owner-forms"]) do
      forms[pandoc.utils.stringify(f)] = true
    end
  end
end

-- Strip trailing punctuation a style may attach to a name token ("J," / "Justin.").
local function bare(s)
  return (s:gsub("[,;.]+$", ""))
end

local function tail_punct(s)
  return s:match("[,;.]+$") or ""
end

function Inlines(inlines)
  local out = pandoc.Inlines({})
  local i = 1
  while i <= #inlines do
    local a, sp, b = inlines[i], inlines[i + 1], inlines[i + 2]
    local matched = false

    if a and a.t == "Str" and sp and sp.t == "Space" and b and b.t == "Str" then
      local first, second = bare(a.text), bare(b.text)
      -- "Payne J" / "Payne Justin"
      if first == family and forms[second] then
        out:insert(pandoc.Strong({ pandoc.Str(family), pandoc.Space(), pandoc.Str(second) }))
        if tail_punct(b.text) ~= "" then out:insert(pandoc.Str(tail_punct(b.text))) end
        i = i + 3
        matched = true
      -- "Justin Payne" (given name first)
      elseif forms[first] and second == family then
        out:insert(pandoc.Strong({ pandoc.Str(first), pandoc.Space(), pandoc.Str(family) }))
        if tail_punct(b.text) ~= "" then out:insert(pandoc.Str(tail_punct(b.text))) end
        i = i + 3
        matched = true
      end
    end

    if not matched then
      out:insert(a)
      i = i + 1
    end
  end
  return out
end

-- Meta must run before the inline walk so configuration is applied first.
return { { Meta = Meta }, { Inlines = Inlines } }
