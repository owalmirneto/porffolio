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
      "I'm a Fullstack Software Developer and I started my career in 2007 studying using PHP and then I was able to obtain my first Internship in 2009.",

      "I kept studying and worked with PHP until 2012 when I ran into Ruby on Rails. I liked it a lot because Ruby on Rails is simpler than PHP for some things, that is my first impression of Ruby on Rails.",

      "I kept studying Ruby on Rails until I got some jobs with RoR and PHP. In 2016 I started to work for an app called 'ComunikApp' that would help with communication between the parents and school where I was responsible for the development of the platform, WebApp, and API that was consumed by Android APP, IOS APP, and WebApp.",

      "Now I have experience as TechLead and Fullstack Software Developer. At the middle of 2022 was when I started to work for my current job in ilove.me as a Fullstack Software Developer.",

      "So, this is a place for you to know about my career and below you can see my professional contacts and social networks."
    ],
    location: "Recife - PE",
    country: "Brazil",
    email: "hello@walmir.dev"
  )

  iloveme = walmir.companies.create!(
    name: "ilove.me · Sistema fácil para Salões de Beleza, Clínicas e Spas",
    website: "https://ilove.me",
    brand: Pathname.new(Rails.root.join("public/images/companies/ilove.me.png")).open
  )
  iloveme.jobs.create!(
    title: "Fullstack Software Developer",
    hire_date: "2022-07-01",
    description: "I'm a Fullstack Software Developer at ilove.me"
  )

  repassa = walmir.companies.create!(
    name: "Repassa · Brechó Online das Melhores Marcas",
    website: "https://repassa.com.br",
    brand: Pathname.new(Rails.root.join("public/images/companies/repassa.png")).open
  )
  repassa.jobs.create!(
    title: "Fullstack Software Developer",
    hire_date: "2022-10-01",
    rescission_date: "2022-07-31",
    description: "I'm a Fullstack Software Developer at Repassa"
  )

  interage = walmir.companies.create!(
    name: "Interage · agile software house",
    website: "http://www.interage.in",
    brand: Pathname.new(Rails.root.join("public/images/companies/interage.png")).open
  )
  interage.jobs.create!(
    title: "TechLead and Fullstack Software Developer",
    hire_date: "2017-10-01",
    rescission_date: "2021-09-31",
    description: "I'm a TechLead and Fullstack Software Developer at Interage, our main stack consists of ruby on rails, postgres as main database but we also use Sidekiq and Redis a lot for background jobs and other secondary tasks."
  )

  comunikapp = walmir.companies.create!(
    name: "Comunika · Comunicação Escolar",
    website: "https://comunikapp.com",
    brand: Pathname.new(Rails.root.join("public/images/companies/comunika.png")).open
  )
  comunikapp.jobs.create!(
    title: "Fullstack Software Developer",
    hire_date: "2016-06-01",
    rescission_date: "2017-12-29",
    description: "I am responsible for the API that serves the Web APP, Android and IOS apps, the platform used by schools to communicate with those responsible for students and the webapp used by those responsible, as well as the Android and IOS apps."
  )

  idealizza = walmir.companies.create!(
    name: "Idealizza",
    website: "http://idealizza.com.br",
    brand: Pathname.new(Rails.root.join("public/images/companies/idealizza.png")).open
  )
  idealizza.jobs.create!(
    title: "Fullstack Software Developer",
    hire_date: "2017-07-01",
    rescission_date: "2017-12-29",
    description: "At Idealizza, I developed web applications using HTML5, CSS3, jQuery, CakePHP, MySQL, DigitalOcean."
  )

  tisstech = walmir.companies.create!(
    name: "TIS TECH Angola",
    website: "https://www.tistech.co.ao",
    brand: Pathname.new(Rails.root.join("public/images/companies/tisstech.jpeg")).open
  )
  tisstech.jobs.create!(
    title: "Software Developer",
    hire_date: "2014-07-01",
    rescission_date: "2015-11-28",
    description: "Web applications using Laravel, Git, MySQL e Jquery."
  )

  pianolab = walmir.companies.create!(
    name: "PIANOLAB Agência Digital",
    website: "http://pianolab.com.br",
    brand: Pathname.new(Rails.root.join("public/images/companies/pianolab.png")).open
  )
  pianolab.jobs.create!(
    title: "Software Developer",
    hire_date: "2011-08-02",
    rescission_date: "2014-09-02",
    description: "Web applications using a framework in PHP following the MVC pattern for the company to use in your projects."
  )
end
