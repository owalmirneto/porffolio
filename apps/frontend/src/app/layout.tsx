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

      <body className="flex h-screen items-center justify-center">
        <section className="container">
          <TitleBar />

          <main className="grid grid-flow-row md:grid-cols-8">
            <Aside />

            <div className="bg-zinc-500 p-6 sm:col-span-8 lg:col-span-6">
              <ApolloProvider client={client}>{children}</ApolloProvider>
            </div>
          </main>

          <Footer />
        </section>
      </body>
    </html>
  )
}
