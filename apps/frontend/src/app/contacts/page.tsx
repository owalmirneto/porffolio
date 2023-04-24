import Image from "next/image"
import Contacts from "../Contacts"
import { FaMapMarkedAlt } from "react-icons/fa"

export default function ContactsPage() {
  return (
    <div>
      <div className="relative max-w-md mx-auto md:max-w-2xl mt-16 min-w-0 break-words bg-white w-full mb-6 shadow-lg rounded-xl">
        <div className="px-6">
          <div className="flex flex-wrap justify-center">
            <div className="w-full flex justify-center">
              <div className="relative">
                <Image
                  src="/images/walmir.png"
                  alt="Foto do Walmir Neto"
                  width={150}
                  height={150}
                  className="shadow-xl rounded-full align-middle border-none absolute -m-16 -ml-20 lg:-ml-16 max-w-[150px]"
                />
              </div>
            </div>

            <div className="w-full text-center mt-20">
              <div className="flex justify-center lg:pt-4 pt-8 pb-0">
                <div className="p-3 text-center">
                  <span className="text-xl font-bold block uppercase tracking-wide text-slate-700">3,360</span>
                  <span className="text-sm text-slate-400">Photos</span>
                </div>
                <div className="p-3 text-center">
                  <span className="text-xl font-bold block uppercase tracking-wide text-slate-700">2,454</span>
                  <span className="text-sm text-slate-400">Followers</span>
                </div>
                <div className="p-3 text-center">
                  <span className="text-xl font-bold block uppercase tracking-wide text-slate-700">564</span>
                  <span className="text-sm text-slate-400">Following</span>
                </div>
              </div>
            </div>
          </div>

          <div className="text-center mt-2">
            <h3 className="text-2xl text-slate-700 font-bold leading-normal mb-1">
              Walmir Neto
            </h3>
            <div className="flex gap-2 justify-center text-xs mt-0 mb-2 text-slate-400 font-bold uppercase">
              <FaMapMarkedAlt />
              <div>Recife-PE, Brazil</div>
            </div>
          </div>
          <div className="mt-6 py-6 border-t border-slate-200 text-center">
            <div className="flex flex-wrap justify-center">
              <div className="w-full px-4">
                <div className="flex justify-center">
                  <Contacts />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}
