#import "@preview/modern-cv:0.10.0": *

#set document(title: "Matthew DeHaven - Curriculum Vitae") // Custom document title

#show "Résumé": "Curriculum Vitae" // Replace footer text to CV

#show: resume.with(
  author: (
      firstname: "Matthew",
      lastname: "DeHaven",
      email: "matthew_dehaven@brown.edu",
      phone: "+1 919-548-7939",
      website: "matthewdehaven.com",
      address: "Providence, RI",
      positions: ()
  ),
  profile-picture: none,
  date: "",
  paper-size: "us-letter",
  show-footer: true,
  description: "Curriculum Vitae of Matthew DeHaven"
)


= References

#v(0.5em) // Add a little breathing room
#align(center)[#grid(
  columns: (1fr, 1fr, 1fr), // Three columns of equal width
  gutter: 1em,              // Space between columns
  [
    *Şebnem Kalemli-Özcan*\
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
    *Amy Handlan*\
    Brown University\
    Department of Economics\
    #link("mailto:amy_handlan@brown.edu")[#raw("amy_handlan@brown.edu")]
  ]
)]
#v(1em) 
#align(center)[#grid(
  columns: (20pt, 120pt, 90pt, 100pt, 50pt),
  align: (center, right, left, left, center),
  gutter: 1em,              // Space between columns
  [],
  [
    Placement Director:

    Placement Administrator:
  ],
  [
    *Toru Kitagawa*

    *Angelica Spertini* 
  ],
  [
    #link("mailto:toru_kitagawa@brown.edu")[#raw("toru_kitagawa@brown.edu")]

    #link("mailto:angelica_spertini@brown.edu")[#raw("angelica_spertini@brown.edu")]
  ],
  []
)]

= Education

#resume-entry(
  title: "Brown University",
  location: "",
  date: "2021 - May 2027 (Expected)",
  description: "Doctor of Philosophy, Economics"
)

#resume-entry(
  title: "Furman University",
  location: "",
  date: "2014 - 2018",
  description: "Bachelor of Science, Summa Cum Laude, Mathematics-Economics and Political Science"
)

= Research

_Primary Fields_: Macroeconomics, International Finance, Macro-Finance

#set list(marker: [‣])

== Job Market Paper

- DeHaven, Matthew. "Source Matters: Demand vs. Supply Uncertainty in a Small Open Economy."

#block(inset: (left: 1.5em, right: 1.5em), [
  #set text(size: 11pt)
  _Abstract_: How do domestic uncertainty shocks affect the macroeconomy and financial markets? I study this question in a New Keynesian small open economy model with stochastic volatility and incomplete international risk sharing. I find that in an open economy, the effects of domestic uncertainty shocks depend upon the source of uncertainty. Domestic productivity uncertainty shocks lead to an increase in the foreign bond risk premium and an appreciation of the nominal exchange rate. Domestic demand uncertainty shocks lead to a depreciation instead. In data from the United Kingdom, I separate supply and demand uncertainty shocks and find they have opposite responses in the nominal exchange rate. My model can account for this pattern with shocks to different sources of uncertainty.
])


== Publications

- Chen, Mary, Matthew DeHaven, Isabel Kitschelt, Seung Jung Lee, and Martin J. Sicilian. 2023. "Identifying Financial Crises Using Machine Learning on Textual Data." #emph[Journal of Risk and Financial Management] 16 (3): 161.


== Working Papers

- Adrian, Tobias, Matthew DeHaven, Fernando Duarte, and Tara Iyer. 2023. "The Market Price of Risk and Macro-Financial Dynamics." IMF Working Papers 2023 (199). CEPR Discussion Paper No. 17777.


== Work in Progress

- Adrian, Tobias, Matthew DeHaven, and Fernando Duarte. "The Price of Risk Drives the Business Cycle."

= Teaching
#block(breakable: false)[
  #resume-entry(
    title: "Brown University",
    location: "Providence, RI",
    date: "2024 - 2026",
    description: "Teaching Fellow"
  )
  #resume-item[
    - Applied Economics Analysis (first-year PhD course)
  ]
  Developed course and delivered all lectures.
  Class focused on programming, version control, and reproducible research.
]

#resume-entry(
  title: "Brown University",
  location: "Providence, RI",
  date: "2022 - 2023",
  description: "Teaching Assistant"
)
#resume-item[
  - Intermediate Macroeconomics
  - Macroeconomics (first-year PhD course)
]

_Sheridan Center Teaching Certificates_:
Reflective Teaching Seminar (2023),
Course Design Seminar (2024),
Teaching Consultant Program (2025)

= Research Experience

#resume-entry(
  title: "Federal Reserve Board of Governors",
  location: "Washington, DC",
  date: "2018 - 2021",
  description: "Research Assistant"
)
Worked in the International Finance Division. In my third year, served as research assistant for the Division Director.

= Fellowships

#resume-entry(
  title: "Federal Reserve Board of Governors",
  location: "Washington, DC",
  date: "Summer 2026",
  description: "Dissertation Fellowship"
)

= Presentations and Workshops
Southern Economic Association (November 21-23, 2026)\*, 
Furman University Visiting Scholar (October 30-31, 2025),
Stanford Big-Data Initiative in International Macro-Finance (August 2025),
Southern Economic Association (November 23-25, 2024)

= Awards and Honors
Department of Economics Teaching Award, Brown University (2026),
Department Nominee for Presidential Award for Excellence in Teaching, Brown University (2025, 2026)

= Other
_Technical_: R, Python, Julia, LaTeX, Typst, Git, Quarto

_Citizenship_: United States of America

