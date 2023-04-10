import Link from "next/link"

import { about } from "@/data/about"

export default async function PageAbout() {
  return (
    <div id="about">
      <h1>{about.title}</h1>
      <p>{about.email}</p>

      <div>{about?.bio?.map(mountBio)}</div>

      <div>{mountLocation(about)}</div>
    </div>
  )
}

function mountBio(item: string, key: number) {
  return <p key={key}>{item}</p>
}

// eslint-disable-next-line @typescript-eslint/no-explicit-any
function mountLocation(about: any) {
  return (
    <div>
      {about?.location} · {about?.country} ·
      <Link href={`mailto:${about?.email}`}>{about?.email}</Link>
    </div>
  )
}
