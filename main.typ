
// #import "temmpl: modern-resume, experience-work, experience-edu, project, pill
#import "template/lib.typ": modern-resume, experience-work, experience-edu, project, pill, separator, setLogoContent



#show: modern-resume.with(
  author: "Yacine El Ayar",
  job-title: "Freelance, Ingénieur logiciel, Enseignant.",
  bio: text("En recherche active d'une nouvelle aventure professionnelle, ouvert à toutes propositions."),
  avatar: image("assets/avatar.png"),
  contact-options: (
    email: link("mailto:elayar.yacine@gmail.com")[elayar.yacine\@gmail.com],
    mobile: "07 63 94 63 17",
    location: "France, Troyes",
    linkedin: link("https://www.linkedin.com/in/yacine-elayar")[linkedin/yacine-elayar],
    github: link("https://github.com/zurgl")[github.com/zurgl],
    website: link("https://yacine.elayar.fr")[elayar.fr],
  ),
)

#let logoColLen = 12%
#let logoRowLen = 12%

== éducation

#experience-edu(
  title: "Master en Mathématiques Appliquées",
  subtitle: [#link("https://www.univ-reims.fr/")[Université de Reims Champagne-Ardenne]],
  task-description: [
    - Mathématiques appliquées à l'industrie.
    - Machine learning, réseaux de neurones.
  ],
  date-from: "09/2000",
  date-to: "08/2006",
)

#separator()

== Expériences professionnelle

#experience-work(
  title: "Freelancer",
  subtitle: [#link("https://figment.io/emea/")[Figement]],
  facility-description: "Company operating in sector Blockchain",
  task-description: [
    - Content Writer, Ingénieur logiciel.
    - Smart contract developpeur.
  ],
  date-from: "10/2022",
  date-to: "04/2021",
)

#separator()

#experience-work(
  title: "Enseignant mathématiques et R&D",
  subtitle: [#link("https://www.education.gouv.fr/")[Ministère de l'éducation national]],
  task-description: [
    - Enseignant en collège, préparation au Brevet.
    - Chargé de TD à Y-Schools (Ecole de commerce).
    - Enseignant en Lycée Profesionnel.
    - R&D à l'Université Technologique de Troyes.
  ],
  date-from: "08/2020",
  date-to: "01/2013",
)

#separator()

#experience-work(
  title: "Consultant en ingénerie logicielle",
  subtitle: [#link("https://tinyurl.com/4zkh9yw2")[Société de conseil en ingénerie]],
  facility-description: "Company operating in sector Consulting",
  task-description: [
    - Création d'un nouveau pipeline dédié à l'indice VIX.
    - En charge de la maintenance et de l'évolution d'une application d'évaluation des risques financiers sur les fonds d'investissement.
    - Migration en Java de 40 applications chargées de la valorisation et du reporting des produits d'AXA IM.
  ],
  date-from: "12/2011",
  date-to: "07/2008",
)

#colbreak()

== Compétences

#pill("Travail en équipe", fill: true)
#pill("Animation de groupe", fill: true)
#pill("Gestion de classe", fill: true)
#pill("Organisation de cours", fill: true)
#pill("Reporting", fill: true)
#pill("Méthode Agile, Scrum", fill: true)
#pill("Git", fill: true)
#pill("Typescript", fill: true)
#pill("Next.js", fill: true)
#pill("Solana", fill: true)
#pill("Rust", fill: true)
#pill("C++", fill: true)
#pill("Java", fill: true)
#pill("LLM", fill: true)
#pill("Deep Learning", fill: true)

#separator()

== Auto-entrepreneur

#project(
  title: [#link("https://ai-generated-front.vercel.app/")[AI Generated]],
  description: [
    - Conseil en ingénierie des S.I auprès d'entreprise nationale et internationale.
    - Focus prioritaire sur les nouvelles technologies et leur intégration.
  ],
  date-from: "2023",
)

#separator()

== Langues

#pill("Français (natif)", fill: true)
#pill("English (fluent)")

== Loisirs

#pill("Science")
#pill("Cuisine")
#pill("Jardinage")
#pill("Sports")
#pill("Musiques")


== Clients

#table(
  columns: (logoColLen, logoColLen, logoColLen, logoColLen, logoColLen),
  rows: (logoRowLen, logoRowLen),
  column-gutter: 10pt,
  stroke: none,
  setLogoContent("bnp.png"),
  setLogoContent("cetelem.png"),
  setLogoContent("edf.png"),
  setLogoContent("figment.png"),
  setLogoContent("marie.png"),

  setLogoContent("reims.png"),
  setLogoContent("sfds.png"),
  setLogoContent("sg.png"),
  setLogoContent("ssc.png"),
  setLogoContent("utt.png"),
)

// #experience-edu(
//   title: "Baccalauréat Série Scientifique",
//   subtitle: "Lycée Joliot-Curie, Romilly-sur-seine.",
//   task-description: [
//     - Sciences de l'Ingénieur.
//     - Spécialié mathématiques.
//   ],
//   date-from: "08/2000",
//   date-to: "09/1997",
// )

// #project(
//   title: "Project 2",
//   subtitle: "Data Visualization, Data Engineering",
//   description: [
//     - #lorem(20)
//   ],
//   date-from: "08/2022",
//   date-to: "09/2022",
// )
