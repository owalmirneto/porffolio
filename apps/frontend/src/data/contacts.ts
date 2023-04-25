import {
  // FaTwitch,
  // FaInstagram,
  FaLinkedin,
  FaTwitterSquare
} from "react-icons/fa"
import { BsTelegram } from "react-icons/bs"
import { SiGmail, SiGithub, SiGitlab } from "react-icons/si"

const contacts = [
  {
    IconComponent: FaLinkedin,
    alt: "LinkedIn icon",
    link: "https://linkedin.com/in/owalmirneto"
  },
  {
    IconComponent: SiGithub,
    alt: "Github icon",
    link: "https://github.com/owalmirneto"
  },
  {
    IconComponent: SiGitlab,
    alt: "Gitlab icon",
    link: "https://gitlab.com/owalmirneto"
  },
  {
    IconComponent: BsTelegram,
    alt: "Telegram icon",
    link: "https://t.me/owalmirneto"
  },
  {
    IconComponent: SiGmail,
    alt: "Email icon",
    link: "mailto:owalmirneto@gmail.com",
  },
  // {
  //   IconComponent: FaTwitch,
  //   alt: "Twitch icon",
  //   link: "https://twitch.tv/owalmirneto"
  // },
  // {
  //   IconComponent: FaInstagram,
  //   alt: "Instagram icon",
  //   link: "https://instagram.com/owalmirneto"
  // },
  {
    IconComponent: FaTwitterSquare,
    alt: "Twitter icon",
    link: "https://twitter.com/owalmirneto"
  },
]

export { contacts }
