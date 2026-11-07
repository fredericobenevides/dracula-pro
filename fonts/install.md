### Fonts

Here is how to install these fonts with ligatures:

- Cascadia Code
- Fira Code
- Inconsolata
- JetBrains Mono
- Victor Mono

#### Installation

> Before you start, close your editor so it can detect new fonts after installation.

1. Install the font files on your system:
   - **macOS**: Double-click the font file and click "Install Font".
   - **Windows**: Right-click the font file and select "Install".
   - **Linux**: Copy the font files to `~/.fonts/` or `~/.local/share/fonts/`.

#### Activating fonts

**Visual Studio Code**

1. Go to `View -> Command Palette`, or press `Ctrl+Shift+P`.
2. Type `Preferences: Open Settings (JSON)` and paste:

```json
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true
```

3. Save the file and restart Visual Studio Code.

**Sublime Text**

1. Go to `Preferences -> Settings` and paste:

```json
"font_face": "Fira Code",
"font_options": ["subpixel_antialias"]
```

2. Save the file and restart Sublime Text.

**JetBrains IDEs**

1. Enable ligatures in `Settings -> Editor -> Color Scheme -> Color Scheme Font -> Enable Font Ligatures`.
2. Set the font as "Primary font" in `Settings -> Editor -> Color Scheme -> Color Scheme Font`.
3. Apply the changes and restart the IDE if needed.
