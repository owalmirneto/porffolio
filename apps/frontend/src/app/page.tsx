import Link from "next/link"

import { about } from "@/data/about"
import PageTitle from "@/components/commons/PageTitle"

function mountBio(item: string, key: number) {
  return <p key={key}>{item}</p>
}

// eslint-disable-next-line @typescript-eslint/no-explicit-any
function mountLocation(about: any) {
  return (
    <div>
      {about?.location} · {about?.country}{" · "}
      <Link className="text-zinc-950 font-semibold" href={`mailto:${about?.email}`}>{about?.email}</Link>
    </div>
  )
}

export default async function PageAbout() {
  return (
    <div id="about">
      <PageTitle title={about.title} />

      <div className="text-xl space-y-4">
        {about?.bio?.map(mountBio)}
      </div>

      <div className="text-end mt-3">{mountLocation(about)}</div>
    </div>
  )
}
