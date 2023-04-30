---
title: Contributors
nav_order: 1
layout: home-with-socials
parent: Credits
---

## The Catrobat development team

We would like to acknowledge and thank the following individuals and organizations for their contributions to this app

<style>
  table th {
    background-color: #B57BFF;
  }
</style>

## Project Head and Founder

<div class="table-responsive">
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Contribution</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>{% person_output site.data.contributors.project_head %}</td>
        <td>Created initial concept and design</td>
      </tr>
    </tbody>
  </table>
</div>

{% if site.data.contributors.product_owners.active.size > 0 %}

## Product Owners

<p>
{% for person in site.data.contributors.product_owners.active %}
{% assign penultimate = forloop.length | minus: 1 %}
  {% if forloop.index == penultimate %}
    {% person_output person %} and
  {% elsif forloop.last %}
    {% person_output person %}
  {% else %}
    {% person_output person %},
  {% endif %}
{% endfor %}
</p>
{% endif %}

{% if site.data.contributors.product_owners.former.size > 0 %}

### Alumni

<p>
{% for person in site.data.contributors.product_owners.former %}
{% assign penultimate = forloop.length | minus: 1 %}
  {% if forloop.index == penultimate %}
    {% person_output person %} and
  {% elsif forloop.last %}
    {% person_output person %}
  {% else %}
    {% person_output person %},
  {% endif %}
{% endfor %}
</p>
{% endif %}

{% if site.data.contributors.coordinators.active.size > 0 %}

## Team Coordinators

<p>
{% for person in site.data.contributors.coordinators.active %}
{% assign penultimate = forloop.length | minus: 1 %}
  {% if forloop.index == penultimate %}
    {% person_output person %} and
  {% elsif forloop.last %}
    {% person_output person %}
  {% else %}
    {% person_output person %},
  {% endif %}
{% endfor %}
</p>
{% endif %}

{% if site.data.contributors.coordinators.former.size > 0 %}

### Alumni

<p>
{% for person in site.data.contributors.coordinators.former %}
{% assign penultimate = forloop.length | minus: 1 %}
  {% if forloop.index == penultimate %}
    {% person_output person %} and
  {% elsif forloop.last %}
    {% person_output person %}
  {% else %}
    {% person_output person %},
  {% endif %}
{% endfor %}
</p>
{% endif %}

{% if site.data.contributors.senior_developers.active.size > 0 %}

## Senior Developers

<p>
{% for person in site.data.contributors.senior_developers.active %}
{% assign penultimate = forloop.length | minus: 1 %}
  {% if forloop.index == penultimate %}
    {% person_output person %} and
  {% elsif forloop.last %}
    {% person_output person %}
  {% else %}
    {% person_output person %},
  {% endif %}
{% endfor %}
</p>
{% endif %}

{% if site.data.contributors.senior_developers.former.size > 0 %}

### Alumni

<p>
{% for person in site.data.contributors.senior_developers.former %}
{% assign penultimate = forloop.length | minus: 1 %}
  {% if forloop.index == penultimate %}
    {% person_output person %} and
  {% elsif forloop.last %}
    {% person_output person %}
  {% else %}
    {% person_output person %},
  {% endif %}
{% endfor %}
</p>
{% endif %}

{% if site.data.contributors.designers.size > 0 %}

## Designers

<p>
{% for person in site.data.contributors.designers %}
{% assign penultimate = forloop.length | minus: 1 %}
  {% if forloop.index == penultimate %}
    {% person_output person %} and
  {% elsif forloop.last %}
    {% person_output person %}
  {% else %}
    {% person_output person %},
  {% endif %}
{% endfor %}
</p>
{% endif %}

{% if site.data.contributors.contributors.size > 0 %}

## All Members

<p>
{% for person in site.data.contributors.contributors %}
  {% if forloop.last == false %}
    {% person_output person %},
  {% else %}
    {% person_output person %} and {% person_output site.data.contributors.project_head %}
  {% endif %}
{% endfor %}
</p>
{% endif %}

## Translators

<p>
{% assign sortedList = site.data.contributors.translators | sort: 'language' %}
{% for language in sortedList %}
  <b>{{ language.language }}</b>:
  {% for person in language.people %}
  {% assign penultimate = forloop.length | minus: 1 %}
    {% if forloop.index == penultimate %}
      {% person_output person %} and
    {% elsif forloop.last %}
      {% person_output person %}
    {% else %}
      {% person_output person %},
    {% endif %}
  {% endfor %}
  <br/>
{% endfor %}
</p>

## Create@School app and "No one left behind (NOLB)" consortium members

{% for entry in site.data.contributors.createAtSchoolNOLBMembers %}
  <p>
    <b>{{ entry.university.name }}</b>:
    {% for person in entry.people %}
    {% assign penultimate = forloop.length | minus: 1 %}
      {% if forloop.index == penultimate %}
        {% person_output person %} and
      {% elsif forloop.last %}
        {% person_output person %}
      {% else %}
        {% person_output person %},
      {% endif %}
    {% endfor %}
  </p>
{% endfor %}

<hr/>

Finally, we would like to express our gratitude to our users for their support and feedback. Your input has been invaluable in making this app better.
