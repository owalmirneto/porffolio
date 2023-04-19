import Link from "next/link"
import Image from "next/image"

import { contacts } from "@/data/contacts"

import PageTitle from "@/components/commons/PageTitle"

export default function Contact() {
  return (
    <section id="contact">
      <PageTitle title="Contact" />

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
  )
}

const renderContacts = () => {
  return contacts.map(({ IconComponent, link, alt }) => {
    return (
      <Link key={link} href={link} aria-label={alt}>
        <IconComponent />
      </Link>
    )
  })
}
