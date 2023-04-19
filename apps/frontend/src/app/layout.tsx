"use client"

import "@/app/globals.css"

import Aside from "@/components/layouts/Aside"
import TitleBar from "@/components/layouts/TitleBar"
import Footer from "@/components/layouts/Footer"

import { ApolloProvider } from "@apollo/client"
import { client } from "../services/apollo"

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="pt-BR">
      <head>
        <title>@owalmirneto</title>
      </head>

      <body className="h-screen text-zinc-200 px-52 pt-20">
        <section className="h-3/4 flex flex-col">
          <TitleBar />

          <div className="flex flex-1">
            <main className="bg-zinc-500 flex-1 p-6">
              <ApolloProvider client={client}>{children}</ApolloProvider>
            </main>

            <Aside />
          </div>

          <Footer />
        </section>
      </body>
    </html>
  )
}
