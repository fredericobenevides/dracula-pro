### [Alacritty](https://github.com/alacritty/alacritty)

#### Installation

To activate the theme in **Alacritty**, you need to modify its configuration file. Alacritty does not create this configuration file for you, but it looks for one in the following locations:

**Linux**:

- `$XDG_CONFIG_HOME/alacritty/alacritty.toml`
- `$XDG_CONFIG_HOME/alacritty.toml`

**macOS**:

- `$HOME/.config/alacritty/alacritty.toml`
- `$HOME/.alacritty.toml`

**Windows**:

- `%APPDATA%\alacritty\alacritty.toml`

**Linux** & **macOS**

1. `mkdir -p ~/.config/alacritty/themes`.
2. Copy the theme files into the newly created `themes` folder.
3. Import the desired theme configuration in the beginning of your `alacritty.toml` before `[env]`.

```toml
import = [
  "~/.config/alacritty/themes/dracula-pro.toml"
]
```

**In Context Example**

```toml
live_config_reload = true
working_directory = "None"
colors.draw_bold_text_with_bright_colors = true

import = [
    "~/.config/alacritty/themes/dracula-pro.toml"
]

[env]
TERM = "alacritty"
```

**Windows**

1. Create directory `themes` in `%APPDATA%\alacritty`.

`mkdir %APPDATA%\alacritty\themes`

or

`New-Item -ItemType Directory -Path "$env:AppData\alacritty\themes"`

2. Copy the theme files into the newly created `themes` folder.
3. Import the desired theme configuration in the beginning of your `alacritty.toml` before `[env]`.

```toml
import = [
  "C:\\Users\\admin\\AppData\\Roaming\\alacritty\\themes\\dracula-pro.toml"
]
```

**In Context Example**

```toml
live_config_reload = true
working_directory = "C:\\Users\\admin"
colors.draw_bold_text_with_bright_colors = true

import = [
    "C:\\Users\\admin\\AppData\\Roaming\\alacritty\\themes\\dracula-pro.toml"
]

[env]
TERM = "alacritty"
```

4. Please note you must use an absolute path (change the user name to yours) with double back slashes in Windows for this to work correctly.

> Applying the theme will take effect immediately. If not, restart Alacritty.
> Use `live_config_reload = true` in your `alacritty.toml` for immediate results.
