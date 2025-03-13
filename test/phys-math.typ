#import "@local/tuhi-programme-vuw:0.1.0": tuhi-programme-vuw

#let courses = json("courses.json")
#let ids = yaml("phys-math.yml")

#show: tuhi-programme-vuw.with(
  author:"SCPS",  title: smallcaps[#text(size:28pt)[*phys* + *math*: double major example\*]],
  
  tagline: text[Recommended for careers in physics research or academia, astronomy, astrophysics],
  
  search-url: "https://www.wgtn.ac.nz/explore/degrees/science/requirements?major=physics&otherMajor=mathematics",
  course-info: courses,
  course-ids: ids,
  show-trimester: false)

