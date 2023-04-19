import AsideLink from "@/components/layouts/AsideLink"

import { AiFillExperiment } from "react-icons/ai"
import { BsFillInfoSquareFill, BsFillPenFill, BsTools, BsFillTelephoneFill } from "react-icons/bs"

export default function Aside() {
  return (
    <aside className="w-72 bg-zinc-950 p-6">
      <nav className="flex flex-col space-y-5">
        <AsideLink title="About" path="/" ComponentIcon={BsFillInfoSquareFill} />

        <AsideLink title="Experiences" path="/experiences" ComponentIcon={AiFillExperiment} />

        <AsideLink title="Educations" path="/educations" ComponentIcon={BsFillPenFill} />

        <AsideLink title="Skills" path="/skills" ComponentIcon={BsTools} />

        <AsideLink title="Contact" path="/contact" ComponentIcon={BsFillTelephoneFill} />
      </nav>
    </aside>
  )
}
