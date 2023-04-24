import { Company } from "@/models/Company"

type Job = {
  title: string
  hireDate: string
  rescissionDate: string
  duration: string
  description: string
  company: Company
}

export type { Job }
