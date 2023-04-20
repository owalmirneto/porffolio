import { BiLoaderCircle } from "react-icons/bi"

export default function Loading() {
  return (
    <div className="flex flex-col items-center h-full justify-center">
      <BiLoaderCircle className="text-8xl animate-[spin_2s_ease-in-out_infinite]" />
    </div>
  )
}
