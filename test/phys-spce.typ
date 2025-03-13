#import "@local/tuhi-programme-vuw:0.1.0": tuhi-programme-vuw

#let courses = json("courses.json")
#let ids = yaml("phys-spce.yml")

#show: tuhi-programme-vuw.with(
  author:"SCPS",
  title: smallcaps[#text(size:28pt)[*phys* + *spce*: double major example\*]],
  tagline: text[Excellent preparation for a career in the growing space industry],
  search-url: "https://www.wgtn.ac.nz/explore/degrees/science/requirements?major=physics&otherMajor=space-science",
  course-info: courses,
  course-ids: ids,
  show-trimester: false)

