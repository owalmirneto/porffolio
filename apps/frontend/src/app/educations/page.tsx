"use client"

import Loading from "@/components/commons/Loading"
import PageTitle from "@/components/commons/PageTitle"
import { Course } from "@/models/Course"

import CourseDetail from "./CourseDetail"

import { gql, useQuery } from "@apollo/client"

const courseQuery = gql`
  {
    courses {
      id
      title
      subtitle
      location
      startDate
      finishDate
      school {
        name
        website
      }
    }
  }
`

export default function Educations() {
  const { loading, data } = useQuery(courseQuery)

  if (loading) return <Loading />

  return (
    <section>
      <PageTitle title="Education" />

      { data.courses.map((course: Course) => (
        <CourseDetail key={course.id} course={course} />
      ))}
    </section>
  )
}
