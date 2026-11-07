### [Emacs](https://www.gnu.org/software/emacs)

#### Installation

1. Add the Emacs theme variant file to `~/.emacs.d/themes`.

> If the `~/.emacs.d/themes` folder does not exist, create it first.

#### Activating theme

1. Load your chosen variant by adding the following to your `init.el`:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'variant t)
```

2. Replace `variant` with the exact theme file name, then restart Emacs.
