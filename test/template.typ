#import("functions.typ"): *

#let example(title: text(size:28pt)[*phys* + *math*: double major example\*], 
tagline : text[Recommended for careers in physics research or academia, astronomy, astrophysics],
search-url : "https://www.wgtn.ac.nz/explore/degrees/science/requirements?major=physics&otherMajor=mathematics", 
body) = {
  set document(title: "example programme", author: "SCPS")

set page("a4", flipped: true, margin: (left:1.5cm, rest:1cm))
set text(font: "Source Sans Pro", size:16pt,number-type: "lining")

intro(title: smallcaps[#title], tagline: tagline, url: search-url)

v(5pt, weak: true)
show grid.cell: set text(font: "Source Sans Pro", size:11pt)
show grid.cell: set rect(fill:none,stroke:none, inset:8pt)
show regex("(PHYS|CHEM|MATH|SPCE|STAT|ENGR|COMP|EEEN|NWEN|DATA|GEOG|ESCI|QUAN|SCIS|BIOL|BMSC|BTEC)(\d+)"): (x) => {
smallcaps(lower(x))}

set grid(columns: (0.8cm,auto,auto,auto, auto),
  rows: (auto),
  align: (x,y) => if x==0 { left + horizon} else {top + left},
  column-gutter: 3pt,
  row-gutter: (3pt,3pt,10pt,3pt,3pt,10pt,3pt,3pt))

  body
  
text(font: "Source Sans Pro", size:9pt,number-type: "lining")[\*: For full details on degree requirements visit: #search-url]
}
