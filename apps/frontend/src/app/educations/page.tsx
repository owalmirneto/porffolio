"use client"

import { gql, useQuery } from "@apollo/client"

const courseQuery = gql`
  {
    courses {
      id
      title
      subtitle
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

  if (loading) return "Loading..."

  return (
    <section id="education">
      <h2>Education</h2>

      { data.courses.map((course: any) => (
        <div key={course.id}>
          <div>
            <h3>{course.school.name}</h3>
            <div>{course.title}</div>
            <div>{course.subtitle}</div>
            <a href={course.school.website} target="blank">
              {course.school.website}
            </a>
          </div>
          <div>
            <span>{course.startDate} - {course.finishDate}</span>
          </div>
        </div>
      ))}
    </section>
  )
}
