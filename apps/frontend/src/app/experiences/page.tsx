"use client"

import Loading from "@/components/commons/Loading"
import PageTitle from "@/components/commons/PageTitle"

import { currentUser } from "@/data/currentUser"

import JobDetail from "./JobDetail"
import { Job } from "@/models/Job"
import { FaLinkedin } from "react-icons/fa"
import { BiLinkExternal } from "react-icons/bi"

import { gql, useQuery } from "@apollo/client"

const jobsByEmailQuery = gql`
  {
    jobsByEmail(userEmail: "${currentUser.email}") {
      title
      hireDate
      rescissionDate
      duration
      description
      company {
        name
        website
        brand
      }
    }
  }
`

export default function Experiences() {
  const { loading, data } = useQuery(jobsByEmailQuery)

  if (loading) return <Loading />

  return (
    <section>
      <PageTitle title="Experiences" />

      {data.jobsByEmail.map((job: Job, key: number) => <JobDetail key={key} job={job} />)}

      <div className="flex-1 text-sm mr-4 text-gray-300 text-right">
        <a href={currentUser.linkedInUrl} target="blank" className="flex items-center gap-1">
          <FaLinkedin />
          <span>See another jobs in LinkedIn</span>
          <BiLinkExternal />
        </a>
      </div>
    </section>
  )
}
