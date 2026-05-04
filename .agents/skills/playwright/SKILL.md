# Playwright CLI

Use `playwright-cli` when you need to inspect rendered pages, verify layout changes, capture screenshots, or check browser console errors.

## Typical Flow

1. Render or preview the site.

```bash
make render
```

2. Serve the built site if needed.

```bash
python3 -m http.server 5360 --directory "site/_site"
```

3. Open a browser session and inspect a page.

```bash
playwright-cli -s=site-check open "http://127.0.0.1:5360/stories.html"
playwright-cli -s=site-check resize 1440 1000
playwright-cli -s=site-check screenshot
playwright-cli -s=site-check console error
```

## Useful Commands

- `playwright-cli --help`
- `playwright-cli open <url>`
- `playwright-cli goto <url>`
- `playwright-cli snapshot`
- `playwright-cli screenshot`
- `playwright-cli console error`
- `playwright-cli click <ref>`
- `playwright-cli resize <w> <h>`
- `playwright-cli close`

## Sessions

Use `-s=<name>` to keep a browser session alive across multiple commands.

```bash
playwright-cli -s=site-check open "http://127.0.0.1:5360/"
playwright-cli -s=site-check goto "http://127.0.0.1:5360/stories.html"
playwright-cli -s=site-check screenshot
```

## Repo Notes

- The runnable Quarto example lives in `site/`.
- The built output is `site/_site/`.
- For visual regression or review, `stories.html`, `posts/storytelling-page/`, and `posts/data-figures/` are the most useful pages to inspect first.
