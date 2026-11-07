const background = "#17191B";
const foreground = "#D2D0CB";
const selection = "#2E3236";
const comment = "#9EA4AC";
const cyan = "#8FA9B4";
const green = "#D0DBC4";
const orange = "#C9A273";
const pink = "#EE9440";
const purple = "#B3A6BC";
const red = "#FF7D6C";
const yellow = "#F2C861";
const lightRed = "#FF9582";
const lightGreen = "#B3C49C";
const lightYellow = "#F7D98A";
const lightPurple = "#A6BACB";
const lightPink = "#D4A6B6";
const lightCyan = "#BFD0D4";

exports.decorateConfig = (config) => {
  config = config || {};

  const colors = [
    foreground,
    red,
    green,
    yellow,
    purple,
    pink,
    cyan,
    orange,
    comment,
    lightRed,
    lightGreen,
    lightYellow,
    lightPurple,
    lightPink,
    lightCyan,
    selection,
  ];

  const customCSS = `
    .hyper_main {
        border: none !important;
    }
    .tabs_nav {
        background-color: ${background} !important;
    }
    .tabs_title {
        color: ${foreground} !important;
    }
    .tab_tab {
      color: ${comment} !important;
    }
    .tab_active {
        color: ${purple} !important;
    }
  `;

  return Object.assign({}, config, {
    backgroundColor: background,
    borderColor: selection,
    colors,
    css: `${config.css || ""} ${customCSS}`,
    cursorColor: comment,
    foregroundColor: foreground,
    minimal: false,
    selectionColor: selection,
    termCSS: `${config.termCSS || ""}`,
    vibrancy: "dark",
  });
};
