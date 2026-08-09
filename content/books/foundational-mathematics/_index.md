+++
title = 'Foundational Mathematics'
description = 'The first book in the Maximum Mathematics series.'
type = 'chapter'
weight = 10

[params]
  cover = 'The_Book_of_Foundational_Mathematics.png'

# Scopes the main sidebar tree to this book's own table of contents (instead
# of the whole site's page tree) for every page inside it — cascades down
# regardless of how deeply a chapter/section is nested. The `pageRef` has to
# repeat this book's own path; there's no way to self-reference it here.
[cascade.params]
  sidebarmenus = [
    { type = 'page', identifier = 'main', pageRef = '/books/foundational-mathematics' },
    { type = 'menu', identifier = 'shortcuts' },
  ]
+++

Chapters are on their way.
