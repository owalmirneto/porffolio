import Link from "next/link"

// eslint-disable-next-line @typescript-eslint/no-explicit-any
export default function AsideLink({ title, path, ComponentIcon }: any) {
  return (
    <Link className="flex gap-3" href={path}>
      <ComponentIcon className="text-2xl" />
      <span>{ title }</span>
    </Link>
  )
}
