/** @type {import('next').NextConfig} */
const nextConfig = {
  experimental: {
    appDir: true,
  },
  images: {
    domains: ["localhost", "site-walmir-dev.onrender.com"],
  },
}

module.exports = nextConfig
