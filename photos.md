---
layout: page
title: Photos
permalink: /photos/
---

<ul>
  {% for post in site.categories.photos %}
    <li>
      {{ page.date | date: "%B %e, %Y:" }} <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
