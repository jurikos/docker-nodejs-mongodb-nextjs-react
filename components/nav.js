import React from 'react';
import Link from 'next/link';

const Nav = () => {
  const pages = [
    {
      route: '/',
      title: 'Home'
    },
    {
      route: '/about',
      title: 'About'
    },
    {
      route: '/contact',
      title: 'Contact'
    }
  ];
  const listPages = pages.map((page, i) =>
    <li key={i}>
      <Link href={page.route}>
        {page.title}
      </Link>
    </li>
  );

  return(
    <nav>
      <ul>
        {listPages}
      </ul>
    </nav>
  );
};

export default Nav;
