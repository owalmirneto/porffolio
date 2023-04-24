"use client"

import PageTitle from "@/components/commons/PageTitle"
import Loading from "@/components/commons/Loading"

import { Page } from "@/models/Page"

import Contacts from "@/app/Contacts"

import { gql, useQuery } from "@apollo/client"

const pageByEmailQuery = gql`
  {
    pageByEmail(userEmail: "owalmirneto@gmail.com") {
      title
      description
      location
      country
      email
    }
  }
`

export default function ContactPage() {
  const { loading, data } = useQuery(pageByEmailQuery)

  if (loading) return <Loading />

  const { title, description, location, country, email } = data.pageByEmail as Page

  return (
    <section id="contact" className="flex flex-col">
      <PageTitle title={title} />

      <div className="space-y-3 text-lg">
        {description.map((item: string, key: number) => <p key={key}>{item}</p>)}
      </div>

      <div className="mb-10 text-end">
        <p>{location} • {country}</p>

        <a href={`mailto:${email}`} className="text-zinc-950 font-semibold">{email}</a>
      </div>

      <Contacts />
    </section>
  )
}
