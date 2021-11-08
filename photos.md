---
layout: page
title: Photos
permalink: /photos/
---

<ul>
  {% for post in site.categories.photos %}
    <li>
    	<a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
