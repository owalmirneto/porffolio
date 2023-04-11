import moment from "moment"
import "moment/locale/pt-BR"

moment.locale("pt-BR")

const jobs = [
  {
    code: "ilove.me",
    title: "Fullstack Software Developer",
    hireDate: moment("2022-07").format("MMMM/YY"),
    rescissionDate: null,
    description: "I'm a Fullstack Software Developer at ilove.me",
    company: {
      name: "ilove.me · Sistema fácil para Salões de Beleza, Clínicas e Spas",
      site: "https://ilove.me",
      avatar: "/images/companies/ilove.me.png"
    }
  },
  {
    code: "repassa",
    title: "Fullstack Software Developer",
    hireDate: "2022-10-01",
    rescissionDate: "2022-07-31",
    description: "I'm a Fullstack Software Developer at Repassa",
    company: {
      name: "Repassa · Brechó Online das Melhores Marcas",
      site: "https://repassa.com.br",
      image: "/images/companies/repassa.png"
    }
  },
  {
    code: "interage",
    title: "TechLead and Fullstack Software Developer",
    hireDate: "2017-10-01",
    rescissionDate: "2021-09-31",
    description: "I'm a TechLead and Fullstack Software Developer at Interage, our main stack consists of ruby on rails, postgres as main database but we also use Sidekiq and Redis a lot for background jobs and other secondary tasks.",
    company: {
      name: "Interage · agile software house",
      site: "http://www.interage.in",
      image: "/images/companies/interage.png"
    }
  },
  {
    code: "comunikapp",
    title: "Fullstack Software Developer",
    hireDate: "2016-06-01",
    rescissionDate: "2017-12-29",
    description: "I am responsible for the API that serves the Web APP, Android and IOS apps, the platform used by schools to communicate with those responsible for students and the webapp used by those responsible, as well as the Android and IOS apps.",
    company: {
      name: "Comunika · Comunicação Escolar",
      site: "https://comunikapp.com",
      image: "/images/companies/comunika.png"
    }
  },
  {
    code: "idealizza",
    title: "Fullstack Software Developer",
    hireDate: "2017-07-01",
    rescissionDate: "2017-12-29",
    description: "At Idealizza, I developed web applications using HTML5, CSS3, jQuery, CakePHP, MySQL, DigitalOcean.",
    company: {
      name: "Idealizza",
      site: "http://idealizza.com.br",
      image: "/images/companies/idealizza.png"
    }
  },
  {
    code: "tisstech",
    title: "Software Developer",
    hireDate: "2014-07-01",
    rescissionDate: "2015-11-28",
    description: "Web applications using Laravel, Git, MySQL e Jquery.",
    company: {
      name: "Tisstech",
      site: null,
      image: "/images/companies/tisstech.png"
    }
  },
  {
    code: "pianolab",
    title: "Software Developer",
    hireDate: "2011-08-02",
    rescissionDate: "2014-09-02",
    description: "Web applications using a framework in PHP following the MVC pattern for the company to use in your projects.",
    company: {
      name: "PIANOLAB Agência Digital",
      site: "http://pianolab.com.br",
      image: "/images/companies/pianolab.png"
    }
  }
]

export { jobs }
