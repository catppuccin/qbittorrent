<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/qbittorrent/qBittorrent">qBittorrent</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/qbittorrent/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/qbittorrent?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/qbittorrent/issues"><img src="https://img.shields.io/github/issues/catppuccin/qbittorrent?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/qbittorrent/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/qbittorrent?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/mocha.webp"/>
</details>

## Usage

### Client

1. Download the theme files (`.qbtheme`) from the latest [GitHub release](https://github.com/catppuccin/qbittorrent/releases/latest).
2. Open qBittorrent and go to **Tools** > **Preferences** > **Behaviour**.
3. Tick the **"use custom UI theme"** checkbox and select your chosen `.qbtheme` theme file.
4. Click **Apply** and restart qBittorrent for the changes to take effect.

### WebUI

The Catppuccin theme for the WebUI is only available via
[theme.park](https://docs.theme-park.dev/themes/qbittorrent/) as a
[community theme](https://docs.theme-park.dev/community-themes/catppuccin/).
There are currently no plans to add custom support for it. 

For example, if you are using the `linuxserver/qbittorrent` Docker image, you
can install the Catppuccin theme by configuring the following environment
variables:

```yaml
services:
  qbittorrent:
    image: lscr.io/linuxserver/qbittorrent:5.0.0
    environment:
      - DOCKER_MODS=ghcr.io/themepark-dev/theme.park:qbittorrent
      - QBITTORRENT_VERSION=5.0.0
      - TP_COMMUNITY_THEME=true
      - TP_THEME=catppuccin-{flavor}
```

Alternatively, the theme can also be installed via the browser extension
[Stylus](https://add0n.com/stylus.html). Create a new style in Stylus and add
the following code:

```css
@import "https://theme-park.dev/css/base/qbittorrent/catppuccin-{flavor}.css";
```

Where `{flavor}` is either: **latte**, **frappe**, **macchiato**, or **mocha**.

For all available installation methods, see
[docs.theme-park.dev/setup](https://docs.theme-park.dev/setup/).

## 💝 Thanks to

- [Xurdejl](https://github.com/Xurdejl)
- [Material Design icons](https://github.com/google/material-design-icons)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
