export default function TitleBar() {
  return (
    <div className="bg-zinc-700 rounded-t-md py-2 flex">
      <div className="flex items-center gap-2 pl-5">
        <div className="w-3 h-3 bg-red-500 rounded-full"></div>
        <div className="w-3 h-3 bg-yellow-500 rounded-full"></div>
        <div className="w-3 h-3 bg-green-500 rounded-full"></div>
      </div>

      <div className="text-center flex-1">@owalmirneto</div>
    </div>
  )
}
