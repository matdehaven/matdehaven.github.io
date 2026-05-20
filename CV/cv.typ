#import "@preview/modern-cv:0.10.0": *

#show: resume.with(
  author: (
      firstname: "Matthew",
      lastname: "DeHaven",
      email: "matthew_dehaven@brown.edu",
      phone: "+1 919-548-7939",
      website: "matthewdehaven.com",
      address: "125 Pleasant St., Providence, RI 02906",
      positions: ()
  ),
  profile-picture: none,
  date: "",
  paper-size: "us-letter"
)

= References

#v(0.5em) // Add a little breathing room
#align(center)[#grid(
  columns: (1fr, 1fr, 1fr), // Three columns of equal width
  gutter: 1em,              // Space between columns
  [
    *Şebnem-Kalemli Özcan*\
    Brown University\
    Department of Economics\
    #link("mailto:sebnem_kalemli-ozcan@brown.edu")[#raw("sebnem_kalemli-ozcan@brown.edu")]
  ],
  [
    *Gauti B. Eggertsson*\
    Brown University\
    Department of Economics\
    #link("mailto:gauti_eggertsson@brown.edu")[#raw("gauti_eggertsson@brown.edu")]
  ],
  [
    *Fernando Duarte*\
    Brown University\
    Department of Economics\
    #link("mailto:fernando_duarte@brown.edu")[#raw("fernando_duarte@brown.edu")]
  ]
)]

= Education

#resume-entry(
  title: "Brown University",
  location: "",
  date: "2021 - Present",
  description: "Doctor of Philosophy, Economics"
)

#resume-entry(
  title: "Furman University",
  location: "",
  date: "2014 - 2018",
  description: "Bachelor of Science, Mathematics-Economics and Political Science"
)

= Work Experience

#resume-entry(
  title: "Federal Reserve Board of Governors",
  location: "Washington, DC",
  date: "2018 - 2021",
  description: "Research Assistant"
)
Worked in the International Finance Division studying International Financial Stability and
assisting the division director. Daily work contained a mix of policy and research projects.
Built experience coding in R and Python.

= Teaching
#resume-entry(
  title: "Brown University",
  location: "Providence, RI",
  date: "2024 - 2026",
  description: "Teaching Fellow"
)
#resume-item[
  - Applied Economics Analysis
]
Developed course and delivered all lectures.
Class focused on programming, version control, and creating reproducible research.


#resume-entry(
  title: "Brown University",
  location: "Providence, RI",
  date: "2022 - 2023",
  description: "Teaching Assistant"
)
#resume-item[
  - Intermediate Macroeconomics
  - Macroeconomics (first year PhD course)
]

= Presentations, Workshops, and Fellowships

Federal Reserve Board of Governors Dissertation Fellowship (Summer 2026),
Furman University Visiting Scholar (October 30-31, 2025),
Stanford Big-Data Initiative in International Macro-Finance (August 2025),
Southern Economic Association (November 23-25, 2024)

= Awards and Honors
Teaching Award, Brown University (2026), department nomination for Presidential Award for Excellence in Teaching, Brown University (2025, 2026)



#pagebreak()


= Research

#set list(marker: [‣])

== Publications

- Chen, Mary, Matthew DeHaven, Isabel Kitschelt, Seung Jung Lee, and Martin J. Sicilian. 2023. "Identifying Financial Crises Using Machine Learning on Textual Data." #emph[Journal of Risk and Financial Management] 16 (3): 161.


== Working Papers

- Adrian, Tobias, Matthew DeHaven, Fernando Duarte, and Tara Iyer. 2023. "The Market Price of Risk and Macro-Financial Dynamics." IMF Working Papers 2023 (199).


== Work in Progress

- DeHaven, Matthew. "Asset Price Responses to Domestic Uncertainty Shocks." #strong[Job Market Paper]
- Adrian, Tobias, Matthew DeHaven, and Fernando Duarte. "The Price of Risk Drives the Business Cycle."
