+++
title = 'Output and Viewing'
description = 'Choosing an output format and previewing the result.'
weight = 70
+++

The library does not override your output format. Choose one the standard
Asymptote way, in the file itself:

```asy
settings.outformat = "svg";   // or "pdf", "eps", "png"
```

or on the command line:

```bash
asy mydiagram.asy
```

```bash
asy -f svg mydiagram.asy
```

{{% notice style="warning" title="Do not rasterize with ImageMagick" %}}
If you convert Asymptote's SVG output to PNG to preview it, use a WebKit-based
tool — `qlmanage` on macOS, or a browser. ImageMagick does not resolve the
glyph references in Asymptote's SVG and drops characters, which makes a
perfectly correct figure look broken.

```bash
qlmanage -t -s 900 -o . mydiagram.svg
```
{{% /notice %}}

## Which format to use

**SVG** for the web. Text stays text, the figure scales to any size, and the
files are small — every figure on this site is SVG.

**PDF** for LaTeX documents, where it drops straight into `\includegraphics`.

**PNG** only when something downstream cannot accept vectors.
