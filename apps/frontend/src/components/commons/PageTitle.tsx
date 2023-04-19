// eslint-disable-next-line @typescript-eslint/no-explicit-any
export default function PageTitle({ title }: any) {
  return (
    <h1 className="mb-6 text-5xl text-zinc-800 font-bold">
      {title}
    </h1>
  )
}
