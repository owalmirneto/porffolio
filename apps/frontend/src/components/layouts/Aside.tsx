import AsideLink from "@/components/layouts/AsideLink"

import { AiFillExperiment } from "react-icons/ai"
import { BsFillPenFill, BsTools, BsFillHouseFill } from "react-icons/bs"
import { FaFileDownload } from "react-icons/fa"

export default function Aside() {
  return (
    <aside className="bg-zinc-950 sm:col-span-8 lg:col-span-2 flex-wrap-reverse space-y-4 p-6 items-center">
      <AsideLink title="About me" path="/" ComponentIcon={BsFillHouseFill} />

      <AsideLink title="Experiences" path="/experiences" ComponentIcon={AiFillExperiment} />

      <AsideLink title="Educations" path="/educations" ComponentIcon={BsFillPenFill} />

      <AsideLink title="Skills" path="/skills" ComponentIcon={BsTools} />

      <a href="/documents/resume.pdf" className="flex border text-zinc-200 bg-zinc-600 border-zinc-800 hover:bg-zinc-700 hover:text-zinc-100 rounded-md p-3" download target="blank">
        <span className="flex-1 font-semibold">Download CV</span>
        <FaFileDownload className="text-xl" />
      </a>
    </aside>
  )
}
