import "./globals.css"

import Aside from "./aside"
import Footer from "./footer"

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="pt-BR">
      {/*
        <head /> will contain the components returned by the nearest parent
        head.tsx. Find out more at https://beta.nextjs.org/docs/api-reference/file-conventions/head
      */}
      <head />
      <body>
        <Aside />

        <main>{children}</main>

        <Footer />
      </body>
    </html>
  )
}
