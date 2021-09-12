{ config, lib, pkgs, ... }:

{
  colors = {
    light = {
      bg = "#fafafa";
      bg-alt = "#f0f0f0";
      base0 = "#f0f0f0";
      base1 = "#e7e7e7";
      base2 = "#dfdfdf";
      base3 = "#c6c7c7";
      base4 = "#9ca0a4";
      base5 = "#383a42";
      base6 = "#202328";
      base7 = "#1c1f24";
      base8 = "#1b2229";
      fg = "#383a42";
      fg-alt = "#c6c7c7";
      grey = "#383a42";
      red = "#e45649";
      orange = "#8a3b3c";
      green = "#556b2f";
      teal = "#4db5bd";
      yellow = "#986801";
      yellow-alt = "#fafadd";
      blue = "#014980";
      dark-blue = "#030f64";
      magenta = "#a626a4";
      violet = "#b751b6";
      cyan = "#0184bc";
      dark-cyan = "#005478";
    };
    dark = {
      bg = "#000000";
      bg-alt = "#000000";
      base0 = "#1B2229";
      base1 = "#1c1f24";
      base2 = "#202328";
      base3 = "#23272e";
      base4 = "#3f444a";
      base5 = "#5B6268";
      base6 = "#73797e";
      base7 = "#9ca0a4";
      base8 = "#DFDFDF";
      fg = "#bbc2cf";
      fg-alt = "#5B6268";
      grey = "#5B6268";
      red = "#ff6c6b";
      orange = "#b4916d";
      green = "#98be65";
      teal = "#4db5bd";
      yellow = "#ECBE7B";
      blue = "#0170bf";
      dark-blue = "#003c64";
      magenta = "#c678dd";
      violet = "#a9a1e1";
      cyan = "#46D9FF";
      dark-cyan = "#5699AF";
    };
  };
}
