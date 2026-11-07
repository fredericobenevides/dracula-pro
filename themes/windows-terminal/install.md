### [Windows Terminal](https://github.com/microsoft/terminal)

#### Installation

> Back up your current `profile.json` before editing so you can restore it if needed.

1. Click the down-arrow symbol `˅` in the menu bar. Select **Settings** from the drop-down menu, or use `Ctrl + ,` to open settings directly.
2. In the `profile.json` settings file for Windows Terminal, find the `schemes` section and paste the content of `dracula-pro.json`.
3. Save the file before moving to the next section.

Example:

```json
"schemes": [
    {
        "name": "Dracula Pro",
        "background": "#22212C",
        "cursorColor": "#9580FF",
        "selectionBackground": "#454158",
        "black": "#22212C",
        "blue": "#9580FF",
        "brightBlack": "#504C67",
        "brightBlue": "#AA99FF",
        "brightCyan": "#99FFEE",
        "brightGreen": "#A2FF99",
        "brightPurple": "#FF99CC",
        "brightRed": "#FFAA99",
        "brightWhite": "#FFFFFF",
        "brightYellow": "#FFFF99",
        "cyan": "#80FFEA",
        "foreground": "#F8F8F2",
        "green": "#8AFF80",
        "purple": "#FF80BF",
        "red": "#FF9580",
        "white": "#F8F8F2",
        "yellow": "#FFFF80"
    }
]
```

#### Activating theme

1. After you define the color scheme, find the `profiles` section and add a `colorScheme` value to the default profile.
2. Save the file again and restart Windows Terminal if the theme does not update right away.

Example:

```json
"profiles": {
    "defaults": {
        "colorScheme" : "Dracula Pro"
    }
}
```
