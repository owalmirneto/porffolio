import { Job } from "@/models/Job"
import Image from "next/image"
import { BiLinkExternal } from "react-icons/bi"

type Props = {
  job: Job
}

export default function JobDetail({ job }: Props): JSX.Element {
  const { title, hireDate, rescissionDate, duration, description, company } = job

  return (
    <div className="flex bg-zinc-200 shadow-lg rounded-lg my-4">
      <div className="flex w-full items-start px-4 py-6">
        <Image
          alt={ company.name }
          src={ company.brand }
          className="w-12 h-12 rounded-xl object-cover mr-4 shadow-lg"
          height={ 80 }
          width={ 80 }
        />
        <div className="w-full">
          <div className="flex items-center justify-between">
            <h2 className="text-lg font-semibold text-gray-900">
              { title }
            </h2>
            <small className="text-sm italic text-gray-700">
              { hireDate } · { rescissionDate }
            </small>
          </div>
          <p className="text-gray-700">{ company.name }</p>
          <p className="mt-3 text-gray-700 text-sm ">
            { description }
          </p>
          <div className="mt-4 flex items-center">
            <div className="flex-1 text-gray-700 text-sm mr-4">
              <a href={ company.website } target="blank" className="flex items-center gap-1">
                <BiLinkExternal />
                <span>{ company.website }</span>
              </a>
            </div>
            <div className="text-gray-700 text-sm mr-4 italic">
              { duration }
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}
