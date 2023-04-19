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
end
