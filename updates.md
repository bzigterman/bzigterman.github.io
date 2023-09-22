---
layout: page
title: Updates
permalink: /updates
---

{% assign postsByYear =
    site.posts | group_by_exp:"post", "post.date | date: '%Y'" %}
{% for year in postsByYear %}
<h3>{{ year.name }}</h3>
<ul>
      {% for post in year.items %}
<li>{{ post.date | date: "%B %e: " }} <a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endfor %}
</ul>
{% endfor %}

