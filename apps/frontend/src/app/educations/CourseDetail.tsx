import { Course } from "@/models/Course"
import { BiLinkExternal } from "react-icons/bi"
import { HiOutlineLocationMarker } from "react-icons/hi"

type Props = {
  course: Course
}

export default function JobDetail({ course }: Props): JSX.Element {
  return (
    <div className="p-6 flex flex-row mx-auto bg-zinc-200 rounded-lg shadow-xl my-4">
      <div className="w-full space-y-4 flex flex-col my-4">
        <div className="flex flex-col">
          <div className="flex text-gray-900">
            <h1 className="text-2xl font-bold flex-1">{course.school.name}</h1>
            <p>{course.startDate} - {course.finishDate}</p>
          </div>

          <div className="inline leading-6 w-full text-base">
            <p className="font-semibold text-gray-600">{course.title}</p>
            <p className="text-sm italic text-gray-500">{course.subtitle}</p>
          </div>
        </div>

        <ul className="space-x-4 flex flex-row w-full">
          <li className="text-sm text-gray-800 flex-1">
            <a className="flex items-center gap-1" href={course.school.website} target="blank">
              <BiLinkExternal className="text-red-500" />
              <span>{course.school.website}</span>
            </a>
          </li>
          <li className="flex items-center text-sm text-gray-800">
            <HiOutlineLocationMarker className="text-red-500" />
            <span>{course.location}</span>
          </li>
        </ul>
      </div>
    </div>
  )
}
