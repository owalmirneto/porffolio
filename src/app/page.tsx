import Link from "next/link"

import { about } from "../data/about";

// import { Client } from "@notionhq/client";

// const notion = new Client({
//   auth: "secret_MW16ns70TgqXmqqk4eNqkroNi59dkWpPnrKyX3f7bJf",
// })

// const getDatabase = (async () => {
//   return await notion.databases.query({
//     database_id: "24ea7d4ee5fb4ab281470128eb47ea26"
//   })
// })

// const pages = (await getDatabase()).results

// console.log(pages[0].properties.Page.title[0].text.content);

export default async function PageAbout() {
  return (
    <div id="about">
      <h1>{about.title}</h1>
      <p>{about.email}</p>

      <div>{about?.bio?.map(mountBio)}</div>

      <div>{mountLocation(about)}</div>
    </div>
  );
};

function mountBio(item: any, key: number) {
  return <p key={key}>{item}</p>
}

function mountLocation(about: any) {
  return (
    <div>
      {about?.location} · {about?.country} ·
      <Link href={`mailto:${about?.email}`}>{about?.email}</Link>
    </div>
  )
}
