import AsideLink from "@/components/layouts/AsideLink"

import { AiFillExperiment, AiOutlineDownload } from "react-icons/ai"
import { BsFillPenFill, BsTools, BsFillHouseFill } from "react-icons/bs"

export default function Aside() {
  return (
    <aside className="w-72 bg-zinc-950 p-6">
      <nav className="flex flex-col space-y-5">
        <AsideLink title="About me" path="/" ComponentIcon={BsFillHouseFill} />

        <AsideLink title="Experiences" path="/experiences" ComponentIcon={AiFillExperiment} />

        <AsideLink title="Educations" path="/educations" ComponentIcon={BsFillPenFill} />

        <AsideLink title="Skills" path="/skills" ComponentIcon={BsTools} />

        <a className="border text-zinc-200 bg-zinc-600 border-zinc-800 hover:bg-zinc-700 hover:text-zinc-100 rounded-md p-3" href="/documents/resume.pdf" download target="blank">
          <div className="flex">
            <span className="flex-1 font-semibold">Download CV</span>
            <AiOutlineDownload className="text-2xl" />
          </div>
        </a>
      </nav>
    </aside>
  )
}
