import Link from "next/link"

import { contacts } from "../data/contacts"

export default function Contacts() {
  return (
    <section id="contact" className="flex gap-6">
      {contacts.map(({ IconComponent, link, alt }) => (
        <Link
          key={link}
          href={link}
          title={alt}
          aria-label={alt}
          className="bg-slate-300 p-3 rounded-full"
        >
          <IconComponent className="text-xl text-zinc-950" />
        </Link>
      ))}
    </section>
  )
}
