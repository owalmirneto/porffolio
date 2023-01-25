'use client';

import Link from 'next/link';

import { useState, useEffect } from 'react';

type Contact = {
  code: string;
  name: string;
  icon: string;
  link: string;
}

type About = {
  title: string;
  location: string;
  country: string;
  email: string;
  items: [];
  contacts: Contact[];
}

export default function PageAbout() {
  const [about, setAbout] = useState<any>(null);
  const [isLoading, setLoading] = useState(false);

  useEffect(() => {
    setLoading(true);

    fetch(`${process.env.NEXT_PUBLIC_API_BASE_URL}/about.json`)
      .then((res) => res.json())
      .then((about) => setAbout(about))
      .then(() => setLoading(false));
  }, [])

  if (isLoading) return <p>Loading...</p>

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

function mountLocation(about: About) {
  return (
    <div>
      {about?.location} · {about?.country} ·
      <Link href={`mailto:${about?.email}`}>{about?.email}</Link>
    </div>
  )
}

function mountLinks(contact: Contact) {
  return (
    <div key={contact.code}>
      <Link href={contact.link} title={contact.name}>{contact.icon}</Link>
    </div>
  )
}
