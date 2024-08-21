---
layout: page
permalink: /research/
title: Research
description: 
years: [2021, 2020, 2015]
nav: true
nav_order: 1
---
<!-- _pages/publications.md -->
<div class="publications">
{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  <h3>Working Papers</h3>
  {% bibliography -f working_papers -q @*[year={{y}}]* %}
  <h3>Published Papers</h3>
  {% bibliography -f published_papers -q @*[year={{y}}]* %}
{% endfor %}
</div>