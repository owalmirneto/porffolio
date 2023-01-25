import Link from 'next/link';

export default function Aside() {
  return (
    <aside>
      <ul>
        <li>
          <Link href="/">About</Link>
        </li>
        <li>
          <Link href="/experiences">Experiences</Link>
        </li>
        <li>
          <Link href="/educations">Educations</Link>
        </li>
        <li>
          <Link href="/skills">Skills</Link>
        </li>
      </ul>
    </aside>
  )
}
