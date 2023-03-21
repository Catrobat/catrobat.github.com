# Backend for <https://developer.catrobat.org/>

## Changing the version of the theme and/or Jekyll

Simply edit the relevant line(s) in the `Gemfile`.

## Adding a plugin

The Just the Docs theme automatically includes the [`jekyll-seo-tag`] plugin.

To add an extra plugin, you need to add it in the `Gemfile` *and* in `_config.yml`. For example, to add [`jekyll-default-layout`]:

- Add the following to your site's `Gemfile`:

  ```ruby
  gem "jekyll-default-layout"
  ```

- And add the following to your site's `_config.yml`:

  ```yaml
  plugins:
    - jekyll-default-layout
  ```

Note: If you are using a Jekyll version less than 3.5.0, use the `gems` key instead of `plugins`.

## Building and previewing your site locally

Assuming [Jekyll] and [Bundler] are installed on your computer:

1.  Change your working directory to the root directory of your site.

2.  Run `bundle install`.

3.  Run `bundle exec jekyll serve` to build your site and preview it at `localhost:4000`.

    The built site is stored in the directory `_site`.

## Customization

You're free to customize sites that you create with this template, however you like!

[Browse our documentation][Just the Docs] to learn more about how to use this theme.

## Licensing and Attribution

This repository is licensed under the [MIT License]. You are generally free to reuse or extend upon this code as you see fit; just include the original copy of the license (which is preserved when you "make a template"). While it's not necessary, we'd love to hear from you if you do use this template, and how we can improve it for future use!

The deployment GitHub Actions workflow is heavily based on GitHub's mixed-party [starter workflows]. A copy of their MIT License is available in [actions/starter-workflows].

----

[Jekyll]: https://jekyllrb.com
[Just the Docs]: https://just-the-docs.github.io/just-the-docs/
[Bundler]: https://bundler.io
[`jekyll-default-layout`]: https://github.com/benbalter/jekyll-default-layout
[`jekyll-seo-tag`]: https://jekyll.github.io/jekyll-seo-tag
[MIT License]: https://en.wikipedia.org/wiki/MIT_License
[starter workflows]: https://github.com/actions/starter-workflows/blob/main/pages/jekyll.yml
[actions/starter-workflows]: https://github.com/actions/starter-workflows/blob/main/LICENSE
