---
layout: page
title: Photos
permalink: /photos/
---

<ul>
  {% for post in site.categories.photos %}
    <li>
      <p>{{ page.date | date: "%B %e, %Y: " }}</p> <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
