/** @type {import('next').NextConfig} */
const nextConfig = {
  experimental: {
    appDir: true,
  },
  images: {
    domains: [process.env.UPLOAD_HOST]
  },
}

module.exports = nextConfig
