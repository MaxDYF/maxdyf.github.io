---
title: "About"
layout: gridlay
sitemap: false
permalink: /about/
---

## About

<div class="section-card">
<div class="pi-card">
<img src="{{ site.url }}{{ site.baseurl }}/images/{{ site.photo }}" class="pi-photo" alt="{{ site.name }}" loading="lazy">
<div>
<h3 class="pi-name">{{ site.name }}</h3>
<p style="font-style: italic; color: var(--text-secondary);">{{ site.title }}, {{ site.institution }}</p>
<div class="pi-links">
{% if site.email %}<a href="mailto:{{ site.email }}" class="icon-link" title="Email"><i class="fa-solid fa-envelope"></i></a>{% endif %}
{% if site.links.cv and site.links.cv != "" %}<a href="{{ site.url }}{{ site.baseurl }}/{{ site.links.cv }}" class="icon-link" title="CV"><i class="ai ai-cv"></i></a>{% endif %}
{% if site.links.google_scholar and site.links.google_scholar != "" %}<a href="{{ site.links.google_scholar }}" class="icon-link" title="Google Scholar"><i class="ai ai-google-scholar"></i></a>{% endif %}
{% if site.links.github and site.links.github != "" %}<a href="{{ site.links.github }}" class="icon-link" title="GitHub"><i class="fa-brands fa-github"></i></a>{% endif %}
{% if site.links.researchgate and site.links.researchgate != "" %}<a href="{{ site.links.researchgate }}" class="icon-link" title="ResearchGate"><i class="ai ai-researchgate"></i></a>{% endif %}
</div>
{% if site.data.pi[0].education %}
<ul style="margin-top: var(--space-4);">
{% for education in site.data.pi[0].education %}
<li>{{ education | replace: "-","&#8211;" }}</li>
{% endfor %}
</ul>
{% endif %}
</div>
</div>
</div>

<div class="section-card">
<h3>🧭 Academic Direction</h3>
<p>I study <strong>Computer Science and Technology</strong> at <strong>Northeastern University at Qinhuangdao</strong>. I am drawn to embodied AI because it connects learning-based methods with the practical challenges of perception, interaction, and deployment in the physical world.</p>
<p>My current interests center on simulation, synthetic data, and the sim-to-real gap: how simulated environments and data can support more capable and reliable robotic systems.</p>
</div>

<div class="section-card">
<h3>📍 Selected Milestones</h3>
<ul>
<li><strong>2023-present:</strong> B.Eng. student in Computer Science and Technology, Northeastern University at Qinhuangdao.</li>
<li><strong>March 2025:</strong> Joined the <strong>Language and Intelligent Systems Lab</strong>, contributing to benchmarks for robots in industrial environments.</li>
<li><strong>Current:</strong> Research Assistant at <strong>The Hong Kong University of Science and Technology (Guangzhou)</strong>, advised by <strong>Haoang Li</strong>.</li>
</ul>
</div>

<div class="section-card">
<h3>🏆 Challenge and Practice</h3>
<p>Competitive programming, robotics, and embodied AI challenges are an important part of how I develop practical problem-solving skills. They offer a disciplined setting to work under constraints, learn quickly, and turn technical ideas into working systems.</p>
<p>My competition record includes a <strong>Gold Prize</strong> at the 2026 CCPC National Invitational Contest (Qinhuangdao). Explore the complete <a href="{{ site.url }}{{ site.baseurl }}/competitions">🏆 competition record</a>.</p>
</div>

{% if site.data.grants %}
<div class="section-card">
<h3>Grants</h3>
<ul>
{% for grant in site.data.grants %}
<li>{{ grant.name }}</li>
{% endfor %}
</ul>
</div>
{% endif %}

{% if site.data.awards %}
<div class="section-card">
<h3>Awards</h3>
<ul>
{% for award in site.data.awards %}
<li>{{ award.name | replace: "-","&#8211;" }}</li>
{% endfor %}
</ul>
</div>
{% endif %}

{% if site.data.people %}
<div class="section-card">
<h3>Students and Mentoring</h3>
<ul>
{% for student in site.data.people %}
<li>{{ student.name }}, {{ student.location }} ({{ student.degree }}, {{ student.year }})</li>
{% endfor %}
</ul>
</div>
{% endif %}

{% if site.data.funders %}
<div class="section-card">
<h4>Sponsors</h4>
<div class="sponsor-logos" style="display: flex; flex-wrap: wrap; align-items: center; justify-content: center; gap: var(--space-6);">
{% for funder in site.data.funders %}
<a href="{{ funder.url }}" target="_blank"><img src="{{ site.url }}{{ site.baseurl }}/images/{{ funder.image }}" alt="Funder logo" style="max-height: 80px; max-width: 200px; border-radius: 0;" loading="lazy"></a>
{% endfor %}
</div>
</div>
{% endif %}
