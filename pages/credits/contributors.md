---
title: Contributors
nav_order: 1
layout: home-with-socials
parent: Credits
permalink: /contributors/
redirect_from:
  - /credits.html
  - /credits
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

{% if site.data.contributors.project_managers.size > 0 %}

## Project Managers

<p>
{% assign sortedList = site.data.contributors.project_managers | sort: 'lastname' %}
{% for person in sortedList %}
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

{% if site.data.contributors.product_owners.size > 0 %}

## Product Owners

<p>
{% assign sortedList = site.data.contributors.product_owners | sort: 'lastname' %}
{% for person in sortedList %}
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

{% if site.data.contributors.coordinators.size > 0 %}

## Team Coordinators

<p>
{% assign sortedList = site.data.contributors.coordinators | sort: 'lastname' %}
{% for person in sortedList %}
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

{% if site.data.contributors.senior_developers.size > 0 %}

## Senior Developers

<p>
{% assign sortedList = site.data.contributors.senior_developers | sort: 'lastname' %}
{% for person in sortedList %}
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
{% assign sortedList = site.data.contributors.designers | sort: 'lastname' %}
{% for person in sortedList %}
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

## All Contributors

<p>
{% assign sortedList = site.data.contributors.contributors | sort: 'lastname' %}
{% for person in sortedList %}
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
  {% assign sortedList2 = language.people | sort: 'lastname' %}
  {% for person in sortedList2 %}
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
    {% assign sortedList2 = entry.people | sort: 'lastname' %}
    {% for person in sortedList2 %}
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
