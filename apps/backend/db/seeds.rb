ActiveRecord::Base.transaction do
  walmir = User.create!(
    name: "Walmir Neto",
    email: "owalmirneto@gmail.com"
  )

  leiaut = walmir.schools.create!(
    name: "ECPIE · Leiaut",
    website: "https://leiaut.com.br"
  )
  leiaut.courses.create!(
    title: "Information systems technician",
    subtitle: "Computer Science - Web Development Track",
    start_date: "2007-04-01",
    finish_date: "2010-05-01",
    ordination: 1
  )

  ep = walmir.schools.create!(
    name: "English Path",
    website: "https://englishpath.com/destination/ep-london"
  )
  ep.courses.create!(
    title: "GENERAL ENGLISH COURSE",
    subtitle: "📍London",
    start_date: "2022-10-03",
    finish_date: "2022-10-28",
    ordination: 2
  )

  ncg = walmir.schools.create!(
    name: "New College Group",
    website: "https://newcollegegroup.com/locations/liverpool"
  )
  ncg.courses.create!(
    title: "GENERAL ENGLISH COURSE",
    subtitle: "📍Liverpool",
    start_date: "2022-11-07",
    finish_date: "2022-12-02",
    ordination: 3
  )

  especializa = walmir.schools.create!(
    name: "Especializa treinamentos",
    website: "https://especializa.com.br"
  )
  especializa.courses.create!(
    title: "PHP Developer",
    subtitle: "📍Recife",
    start_date: "2010-06-01",
    finish_date: "2010-09-01",
    ordination: 4
  )

  walmir.pages.create!(
    title: "Hello, I'm Walmir!",
    description: [
      "I started my career in 2007 and I started studying using PHP and then I was able to obtain my first Internship in 2009. I kept studying and I switched between some internships from 2009 to 2011, then in 2012 I ran into Ruby on Rails.",
      "I liked it a lot because Ruby on Rails is simpler than PHP for some things, that is my first impression of Ruby on Rails.",
      "Now I have experience as TechLead and Fullstack Software Developer. Working with Software as a Service (SaaS) using the web as a platform. Also into Mobile Apps Development, Cloud Computing, Open Source and New Technologies."
    ],
    location: "Recife - PE",
    country: "Brazil",
    email: "hello@walmir.dev"
  )
end
