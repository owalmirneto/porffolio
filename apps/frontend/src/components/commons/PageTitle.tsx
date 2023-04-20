export default function PageTitle({ title }: { title: string }) {
  return (
    <h1 className="mb-6 text-4xl text-zinc-800 font-bold">
      {title}
    </h1>
  )
}
