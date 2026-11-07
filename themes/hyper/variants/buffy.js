const background = "#2A212C";
const foreground = "#F8F8F2";
const selection = "#544158";
const comment = "#9f70a9";
const cyan = "#80FFEA";
const green = "#8AFF80";
const orange = "#FFCA80";
const pink = "#FF80BF";
const purple = "#9580FF";
const red = "#FF9580";
const yellow = "#FFFF80";
const lightRed = "#FFAA99";
const lightGreen = "#A2FF99";
const lightYellow = "#FFFF99";
const lightPurple = "#AA99FF";
const lightPink = "#FF99CC";
const lightCyan = "#99FFEE";

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
