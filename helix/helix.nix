{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    settings = {
      theme = "gruvbox_dark_soft";
      editor = {
        mouse = true;
        line-number = "relative";
        cursorline = true;
        true-color = true;
        color-modes = true;
        popup-border = "all";
      };
      editor.statusline = {
        mode.normal = "NORMAL";
        mode.insert = "INSERT";
        mode.select = "SELECT";
      };
      editor.cursor-shape = {
        normal = "block";
        insert = "bar";
        select = "underline";
      };
    };
    languages = {
      language = [
        {
          name = "c";
          auto-format = true;
          formatter = {
            command = "clang-format";
            args = [ "--style=file" ];
          };
          language-servers = [ "clangd" ];
        }
      ];
      language-server = {
        clangd = {
          command = "${pkgs.clang-tools}/bin/clangd";
        };
      };
    };
  };
}
