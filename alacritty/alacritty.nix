{ pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    theme = "gruvbox_material_medium_dark";
    settings = {
      window = {
        startup_mode = "Maximized";
        padding.x = 5;
        padding.y = 5;
        dynamic_padding = true;
      };
      font = {
        normal.family = "Maple Mono NF";
        bold.family = "Maple Mono NF";
        italic.family = "Maple Mono NF";
        bold_italic.family = "Maple Mono NF";
        size = 13;
      };
      cursor.style = {
        shape = "Block";
        blinking = "On";
      };
    };
  };
}
