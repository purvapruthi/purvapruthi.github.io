---
layout: homepage
title: Blog
permalink: /blog/
---

## Blog

{% if site.posts and site.posts != empty %}
<ul>
{% for post in site.posts %}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    <span style="color: #666;"> — {{ post.date | date: "%b %d, %Y" }}</span>
    {% if post.excerpt %}<div>{{ post.excerpt }}</div>{% endif %}
  </li>
{% endfor %}

</ul>
{% else %}
<p>No posts yet. Check back soon.</p>
{% endif %}


