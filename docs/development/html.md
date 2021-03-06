HTML best practices
===================

Use [proper `rel`-attributes](http://microformats.org/wiki/existing-rel-values) for links. This helps search engines to better understand the structure of your page, and improves pre-caching of pages.

Important `rel`-attributes:

* `home`
* `prev`
* `next`
* `tag`
* `download`
* `search`
* `help`
* `nofollow`
* `canonical`
* `alternate` (also in combination with `hreflang`-attribute)

Accessibility
-------------

* Use [`aria-label` & `aria-hidden` for improved accessibility](https://dev.opera.com/articles/ux-accessibility-aria-label/).

Images & responsive layout
--------------------------

If you want to use responsive images it is important to understand the [`srcset` and `sizes`](http://ericportis.com/posts/2014/srcset-sizes/). The single most important example is:

```html
<img src="small.jpg" srcset="large.jpg 1024w, medium.jpg 640w, small.jpg 320w" sizes="100vw" alt="A rad wolf" />
```

You may want to use [picturefill.js](http://scottjehl.github.io/picturefill/) to help older browsers to understand the `srcset`-attribute.

Microformats
------------

See [schema.org](http://schema.org/Place) for useful examples on how to set up HTML to be machine readable. The most important will be:

* [schema.org for events](http://schema.org/Event)
* [schema.org for organisations](http://schema.org/Organization) 
* [schema.org for persons](http://schema.org/Person)
* [schema.org for places](http://schema.org/Place)

For something more lightweight you can try [microformats.org](http://microformats.org/wiki/Main_Page):

* [microformat for events](http://microformats.org/wiki/h-event)
* [microformat for address cards](http://microformats.org/wiki/h-card)

Robots
------

See [Google's guide for robots](https://developers.google.com/webmasters/control-crawl-index/docs/robots_meta_tag?hl=en). Keep in mind that not every search engine will understand the X-Robots-Tag HTTP header.

In most cases this will prevent bots from indexing a given page:

```html
<meta name="robots" content="noindex" />
```

Forms
-----

Atributes you want to consider:

* `required`
* `placeholder`
* `pattern`
* `accept` for hinting on required file type like `image/*`
* `autocorrect`
* `autocapitalize`
* `autofocus`
* `[autofill](http://blog.cloudfour.com/autofill-what-web-devs-should-know-but-dont/)`
* `capture` allowing you to use `camera`, `microphone`, `camcorder` for direct upload from a phone.

Important `type` attributes to use:

* `type="date" min="…" max="…"`
* `type="datetime-local" min="…" max="…"`
* `type="email"`
* `type="month" min="…" max="…"`
* `type="number" min="…" max="…" step="…"`
* `type="time"`
* `type="url"`
* `type="date"`

In HTML5 there is also a [CSS property `:invalid`](https://developer.mozilla.org/en/docs/Web/CSS/:invalid) and a [JS `invalid` event](https://developer.mozilla.org/en/docs/Web/Events/invalid) for invalid form fields.

There is a way of [styling checkboxes and radiobuttons with CSS](http://webdesign.tutsplus.com/tutorials/quick-tip-easy-css3-checkboxes-and-radio-buttons--webdesign-8953) without any Javascript.
