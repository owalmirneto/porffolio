# frozen_string_literal: true

SKILLS = [
  {
    kind: SkillKinds::CURRENTLY,
    images: [
      { filename: "rspec", name: "RSpec" },
      { filename: "rails", name: "Ruby on Rails" },
      { filename: "postgresql", name: "PostgreSQL" },
      { filename: "sidekiq", name: "SideKiq" },
      { filename: "redis", name: "Redis" },
      { filename: "cypress", name: "Cypress.io" },
      { filename: "node", name: "Node.js" },
      { filename: "go", name: "Go Lang" },
      { filename: "rabbitmq", name: "RabbitMQ" },
      { filename: "rancher", name: "Rancher" },
      { filename: "okteto", name: "Okteto" },
      { filename: "next.js", name: "Next.js" },
      { filename: "ts", name: "TypeScript" },
      { filename: "graphql", name: "GraphQL" }
    ]
  }, {
    kind: SkillKinds::INFRASTRUCTURE,
    images: [
      { filename: "aws", name: "Amazon Web Services" },
      { filename: "aws-ec2", name: "AWS EC2" },
      { filename: "aws-s3", name: "AWS S3" },
      { filename: "digital-ocean", name: "DigitalOcean" },
      { filename: "linode", name: "Linode" }
    ]
  }, {
    kind: SkillKinds::INTERESTS,
    images: [
      { filename: "kubernetes", name: "Kubernetes" },
      { filename: "terraform", name: "Terraform" },
      { filename: "ansible", name: "Ansible" },
      { filename: "kafka", name: "Kafka" },
      { filename: "grpc", name: "gRPC" },
      { filename: "flutter", name: "Flutter" },
      { filename: "nestjs", name: "Nest.js" },
      { filename: "elasticsearch", name: "Elastic Search" },
      { filename: "logstash", name: "Logstash" },
      { filename: "kibana", name: "Kibana" }
    ]
  }, {
    kind: SkillKinds::OLDEST,
    images: [
      { filename: "php", name: "PHP" },
      { filename: "sass", name: "SASS" },
      { filename: "mysql", name: "MySQL" },
      { filename: "laravel", name: "Laravel" },
      { filename: "cakephp", name: "CakePHP" },
      { filename: "jquery", name: "jQuery" },
      { filename: "react", name: "React.js" },
      { filename: "js", name: "JavaScript" },
      { filename: "html5", name: "HTML5" },
      { filename: "css3", name: "CSS3" }
    ]
  }
].freeze

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
    location: "Recife",
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
    subtitle: "English courses in London - Greenford campus",
    location: "London",
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
    subtitle: "Liverpool is a maritime city located in the north west of England",
    location: "Liverpool",
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
    subtitle: "In this module, we teach how to model an object-oriented system and bring a lot of Expert stuff",
    location: "Recife",
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
    brand: "/images/companies/ilove.me.png"
  )
  iloveme.jobs.create!(
    title: "Fullstack Software Developer",
    hire_date: "2022-07-01",
    description: <<-TEXT
      ilove.me is an ecosystem made for the beauty and aesthetics industry and my responsibilities here are to develop and maintain features including stocks, contracts, schedules, notifiers, etc..

      ilove.me stack is a compound Ruby on Rails and PostgreSQL as main database. Ember.js in our frontend, Node.js and GoLang for some microservices. We use RabbitMQ to communicate between microservices. In Infrastructure we use Rancher management with Kubernetes and Okteto in our development environment
    TEXT
  )

  repassa = walmir.companies.create!(
    name: "Repassa · Brechó Online das Melhores Marcas",
    website: "https://repassa.com.br",
    brand: "/images/companies/repassa.png"
  )
  repassa.jobs.create!(
    title: "Fullstack Software Developer",
    hire_date: "2021-10-01",
    rescission_date: "2022-07-31",
    description: <<-TEXT
    Repassa is the largest online thrift store in Brazil, my responsibilities here were to develop and maintain features including product stock, sign up of users, and receiving clothes bags.
    Repassa stack is a compound API developed with Ruby on Rails and PostgreSQL as the main database (Using GraphQL to serve). On frontend is used by Next.js to consume GraphQL API. We use RabbitMQ to communicate between microservices. In Infrastructure we use Rancher management with Kubernetes
    TEXT
  )

  interage = walmir.companies.create!(
    name: "Interage · agile software house",
    website: "http://www.interage.in",
    brand: "/images/companies/interage.png"
  )
  interage.jobs.create!(
    title: "TechLead and Fullstack Software Developer",
    hire_date: "2017-10-01",
    rescission_date: "2021-09-30",
    description: <<-TEXT
    Interage is a software house, which since 2012 has been delivering benefits to its customers through projects of the most varied sectors and sizes, my responsibilities here were to gather requirements for some projects with customers and/or P.O. and define together with the team how we would develop each feature
    My responsibilities here were to maintain and develop new features for each customer's applications
    Stack: Ruby on Rails, PostgreSQL, Sidekiq, Redis, Node.js, React.js, Python, PHP, Heroku, Linode, AWS EC2, AWS S3.
    TEXT
  )

  comunikapp = walmir.companies.create!(
    name: "Comunika · Comunicação Escolar",
    website: "https://comunikapp.com",
    brand: "/images/companies/comunika.png"
  )
  comunikapp.jobs.create!(
    title: "Fullstack Software Developer",
    hire_date: "2016-06-01",
    rescission_date: "2017-12-29",
    description: <<-TEXT
    I am responsible for the API that serves the Web APP, Android and IOS apps, the platform used by schools to communicate with those responsible for students and the webapp used by those responsible, as well as the Android and IOS apps.
    TEXT
  )

  idealizza = walmir.companies.create!(
    name: "Idealizza",
    website: "http://idealizza.com.br",
    brand: "/images/companies/idealizza.png"
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
    brand: "/images/companies/tisstech.jpeg"
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
    brand: "/images/companies/pianolab.png"
  )
  pianolab.jobs.create!(
    title: "Software Developer",
    hire_date: "2011-08-02",
    rescission_date: "2014-09-02",
    description: "Web applications using a framework in PHP following the MVC pattern for the company to use in your projects."
  )

  SKILLS.each do |skill|
    skill[:images].each do |image|
      walmir.skills.create!(
        kind: skill[:kind],
        name: image[:name],
        image: "/images/skills/#{image[:filename]}.png"
      )
    end
  end
end
