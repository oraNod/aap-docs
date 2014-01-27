Welcome to the AWX Docs!

This web interface is a fork of [Gollum](https://github.com/gollum/gollum) which is based on the same backend that Github uses for their wikis.

In order to update the docs, you will need to be comfortable with:

- html
- [markdown (github flavored)](https://help.github.com/articles/github-flavored-markdown)
- [gollum markup](https://github.com/gollum/gollum/wiki)

For advanced manipulation of the generated pdf file, you'll need to be comfortable with CSS and use the [PrinceXML (pdf generator) documentation](http://www.princexml.com/doc/9.0/).

To set this system up locally or in production, refer to the [Gollumite](https://github.com/nanobeep/gollumite) docs.

### Handy notes

- To avoid images orphaned on a page without its associated text, be sure to keep the image declaration in the same paragraph.

- If you change a main heading, you will need to update the Table of Contents and any other internal document links. The anchor links in the document are auto-generated from the headings. In the future, perhaps it'd be best to decouple that.

- For images, we use the `![AWX Guide Cover](images/awx-guide-cover.png)` markdown syntax here instead of the gollum `[[images/awx-guide-cover.png|alt=AWX Guide Cover]]` syntax so that the images will show on Github (since they are still using an old version of Gollum that doesn't support the new gollum syntax).
