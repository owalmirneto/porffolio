"use client"

import Loading from "@/components/commons/Loading"
import PageTitle from "@/components/commons/PageTitle"

import { currentUser } from "@/data/currentUser"
import { Skill } from "@/models/Skill"

import { gql, useQuery } from "@apollo/client"

const skillsByEmailQuery = gql`
  {
    skillsByEmail(userEmail: "${currentUser.email}") {
      id
      kind
      name
      image
    }
  }
`

export default function Skills() {

  const { loading, data } = useQuery(skillsByEmailQuery)

  if (loading) return <Loading />

  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const groupedSkills = data.skillsByEmail.reduce((group: any, skill: Skill) => {
    group[skill.kind] = group[skill.kind] ?? []
    group[skill.kind].push(skill)

    return group
  }, {})

  return (
    <section>
      <PageTitle title="Skills" />

      {Object.keys(groupedSkills).map((kind: string, key: number) => (
        <section key={key} className="mb-6">
          <h3 className="text-2xl font-semibold mb-2 text-zinc-200">{kind}</h3>

          <div className="flex flex-wrap gap-2">
            {groupedSkills[kind].map((skill: Skill, k: number) => (
              <div key={k}>
                {/* eslint-disable-next-line @next/next/no-img-element */}
                <img
                  alt={skill.name}
                  title={skill.name}
                  src={skill.image}
                  className="bg-white rounded p-1 shadow-lg"
                  height={48}
                  width={48}
                />
              </div>
            ))}
          </div>
        </section>
      ))}
    </section>
  )
}
