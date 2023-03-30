import Link from "next/link"
import Image from "next/image"

import { contacts } from "../../data/contacts"
import { jobs } from "../../data/jobs"



export default function Contact() {

  // moment.locale("pt-BR")
  return (
    <section id="contact">
      <h1>Contact</h1>
      <div>{jobs[0].hireDate}</div>

      <div>
        <Image
          src="/images/avatar.png"
          alt="avatar with letters WN"
          height={60}
          width={60}
        />
      </div>

      <div>Walmir Neto - Software Developer</div>

      <div>{renderContacts()}</div>
    </section>
  );
}

const renderContacts = () => {
  return contacts.map(({ Comp, link, alt }) => {
    return (
      <Link key={link} href={link} aria-label={alt}>
        <Comp />
      </Link>
    );
  })
}
