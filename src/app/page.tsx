'use client';

import Link from 'next/link';

import { useState, useEffect } from 'react';

export default function PageAbout() {
  const [about, setAbout] = useState(null);
  const [isLoading, setLoading] = useState(false);

  useEffect(() => {
    setLoading(true);

    fetch(`${process.env.NEXT_PUBLIC_API_BASE_URL}/about.json`)
      .then((res) => res.json())
      .then((about) => setAbout(about))
      .then(() => setLoading(false));
  }, [])

  if (isLoading) return <p>Loading...</p>
  // if (!about) return <p>About not found</p>

  return (
    <div id="about">
      <h1>{about?.title}</h1>
      <p>{about?.email}</p>

      {about?.items?.map(mountItems)}

      {mountLocation(about)}

      {about?.contacts?.map(mountLinks)}
    </div>
  );
};

function mountItems(item: any) {
  return <p key={item}>{item}</p>
}

function mountLocation(about: any) {
  return (
    <div>
      {about?.location} · {about?.country} ·
      <Link href={`mailto:${about?.email}`}>{about?.email}</Link>
    </div>
  )
}

function mountLinks(contact: any) {
  return (
    <div key={contact.code}>
      <Link href={contact.link} title={contact.name}>{contact.icon}</Link>
    </div>
  )
}
