import { School } from "./School"

type Course = {
  id: string
  title: string
  subtitle: string
  location: string
  startDate: string
  finishDate: string
  duration: string
  school: School
}

export type { Course }
