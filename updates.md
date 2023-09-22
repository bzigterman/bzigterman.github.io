---
layout: page
title: Updates
permalink: /updates
---

{% for post in site.posts %}
  {% assign currentdate = post.date | date: "%Y" %}
  {% if currentdate != date %}
    {% unless forloop.first %}</ul>{% endunless %}
<h3>{{ currentdate }}</h3>
<ul>
    {% assign date = currentdate %}
  {% endif %}
<li>{{ post.date | date: "%B %e: " }} <a href="{{ post.url }}">{{ post.title }}</a></li>
  {% if forloop.last %}</ul>{% endif %}
{% endfor %}



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
