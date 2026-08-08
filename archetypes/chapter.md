+++
title = '{{ replace .File.ContentBaseName "-" " " | title }}'
date = '{{ .Date }}'
type = 'chapter'
weight = 10
chapter = 1                 # Prefixes statement numbers on this page, e.g. Theorem 1.4.
draft = true
+++

# {{ replace .File.ContentBaseName "-" " " | title }}

A one-paragraph statement of what this chapter covers and what the reader is
assumed to know already.
