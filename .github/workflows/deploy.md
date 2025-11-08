name: Build & Deploy Hugo via SFTP

on:
  push:
    branches: [ "main" ]
  workflow_dispatch:

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout (with submodules)
        uses: actions/checkout@v4
        with:
          submodules: recursive
          fetch-depth: 0
      - name: Setup Hugo
        uses: peaceiris/actions-hugo@v3
        with:
          hugo-version: 'latest'
          extended: true

      - name: Build
        run: hugo --minify

      - name: SFTP Deploy public/
        uses: wlixcc/SFTP-Deploy-Action@v1.2.4
        with:
          username: ${{ secrets.SFTP_USERNAME }}
          server: ${{ secrets.SFTP_SERVER }}
          port: ${{ secrets.SFTP_PORT }}
          password: ${{ secrets.SFTP_PASSWORD }}
          local_path: ./public/*
          remote_path: ${{ secrets.SFTP_REMOTE_PATH }}
          delete: true
