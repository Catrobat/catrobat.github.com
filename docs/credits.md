---
title: Credits
layout: home
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
        <td>{{ site.data.team.project_head.firstname }} {{ site.data.team.project_head.lastname }}</td>
        <td>Created initial concept and design</td>
      </tr>
    </tbody>
  </table>
</div>

{% if site.data.team.product_owners.active > 0 %}

## Product Owners

<div class="table-responsive">
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Contribution</th>
      </tr>
    </thead>
    <tbody>
      {% for person in site.data.team.product_owners.active %}
      <tr>
        <td>{{ person.firstname }} {{ person.lastname }}</td>
        <td>Product Owner for Catroid</td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>
{% endif %}

{% if site.data.team.product_owners.former > 0 %}

## Former Product Owners

<div class="table-responsive">
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Contribution</th>
      </tr>
    </thead>
    <tbody>
    {% for person in site.data.team.product_owners.former %}
    <tr>
      <td>{{ person.firstname }} {{ person.lastname }}</td>
      <td>Product Owner for Catroid</td>
    </tr>
    {% endfor %}
    </tbody>
  </table>
</div>
{% endif %}

{% if site.data.team.designers > 0 %}

## Designers

<div class="table-responsive">
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Contribution</th>
      </tr>
    </thead>
    <tbody>
      {% for person in site.data.team.designers %}
      <tr>
        <td>{{ person.firstname }} {{ person.lastname }}</td>
        <td>Product Owner for Catroid</td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>
{% endif %}

{% if site.data.team.senior_developers.active > 0 %}

## Active Senior Members

<div class="table-responsive">
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Contribution</th>
      </tr>
    </thead>
    <tbody>
      {% for person in site.data.team.senior_developers.active %}
      <tr>
        <td>{{ person.firstname }} {{ person.lastname }}</td>
        <td>Product Owner for Catroid</td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>
{% endif %}

{% if site.data.team.senior_developers.former > 0 %}

## Almuni Senior Members

<div class="table-responsive">
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Contribution</th>
      </tr>
    </thead>
    <tbody>
      {% for person in site.data.team.senior_developers.former %}
      <tr>
        <td>{{ person.firstname }} {{ person.lastname }}</td>
        <td>Product Owner for Catroid</td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>
{% endif %}

{% if site.data.team.developers > 0 %}

## All Members

<p>
{% for person in site.data.team.contributors %}
  {% if forloop.last == false %}
    {{ person.firstname }} {{ person.lastname }},
  {% else %}
    {{ person.firstname }} {{ person.lastname }} and {{ site.data.team.project_head.firstname }} {{ site.data.team.project_head.lastname }}
  {% endif %}
{% endfor %}
</p>
{% endif %}

Finally, we would like to express our gratitude to our users for their support and feedback. Your input has been invaluable in making this app better.
