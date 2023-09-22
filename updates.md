---
layout: page
title: Updates
permalink: /updates
---

<ul>
  {% for post in site.posts %}
    <li>
      {{ post.date | date: "%B %e, %Y: " }} <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

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



