+++
title = 'Images'
description = 'The canvas a visualization is drawn into: size, margins, padding, and captions.'
weight = 20
+++

`Image` is the canvas your visualization is drawn into. Create it with a size
in centimetres and configure it with setters.

```asy
Image img = Image();          // default 10 x 8
Image img = Image(14, 10);    // explicit width x height
```

Size can also be set after construction with `set_width(w)` and
`set_height(h)`.

A visualization is laid out to **fill the image's content area** — the image
size minus its padding. If that area is too small for the content, the
visualization comes out cramped; increase the width and height until it looks
right. `set_debug_mode(true)` draws the zones and bounds to help you tune
sizes.

## Configuration methods

| Concern | Methods |
|---|---|
| **Dimensions** | `set_width(w)`, `set_height(h)`, or pass them to the constructor |
| **Margins** (outside the canvas) | `set_margin(m)`, `set_margin_horizontal(m)`, `set_margin_vertical(m)`, `set_margin_left/right/top/bottom(m)` |
| **Diagram padding** (inside the canvas, around the visualization) | `set_diagram_padding(p)`, `set_diagram_padding_horizontal/vertical(p)`, `set_diagram_padding_left/right/top/bottom(p)` |
| **Caption padding** (inside the caption zone) | `set_caption_padding(p)`, `set_caption_padding_horizontal/vertical(p)`, `set_caption_padding_left/right/top/bottom(p)` |
| **Caption** | `caption_title(text)`, `caption_text(text)`, `set_caption_title_width_factor(f)` |
| **Background** | `set_background_color(pen)` |
| **Debug** | `set_debug_mode(bool)` |
| **Add and render** | `add(visualization)` |

The more specific a setter, the higher its priority, exactly as in CSS:
`set_margin` sets all four sides, `set_margin_horizontal` overrides left and
right, `set_margin_left` overrides just the left.

## Captions

A caption has two optional parts laid out side by side: a right-aligned
**title** in a narrow left column, and a left-aligned, word-wrapped **text**
filling the rest.

{{< figure src="layout.svg"
           alt="A relation diagram inside an image, with a two-part caption beneath it."
           caption="Both caption parts set. The caption inside the figure is drawn by `Image`; both parts support LaTeX math."
           source="layout.asy" >}}

Provide only `caption_title`, only `caption_text`, or both. Provide neither and
no caption zone is created at all.

The caption zone's height is **auto-sized** to exactly fit the current caption
content. It is measured from the actually rendered title and text — including
how many lines the text wraps into at the image's width — plus the caption
padding. The diagram zone always receives the remaining height. There is no
manual height to tune: change the caption text, change the image width (which
changes how the text wraps), or call `set_caption_padding(p)` for breathing
room, and the zone resizes itself.
