---
layout: myteamlive
permalink: /myteamlive/releases
title: "Release Notes"
section_logo: /images/MyTeamLive.png
section_name: MyTeamLive
section_url: /myteamlive/overview
---

{% assign releases = site.pages | where_exp: "p", "p.path contains 'myteamlive/releases/'" %}
{% assign releases = releases | where_exp: "p", "p.path != page.path" %}
{% assign releases = releases | sort: "title" | reverse %}
{% if releases.size > 0 %}
<div class="release-list" markdown="1">
{% for release in releases %}
- [{{ release.title }}]({{ release.url | relative_url }})
{% endfor %}
</div>
{% else %}
No releases have been published yet. Check back soon!
{% endif %}
