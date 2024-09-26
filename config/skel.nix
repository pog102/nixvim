{ pkgs, ... }:
let
  skelc = pkgs.writeText "skel.c"
    ''
      /**
      * File: idk.c
      * Auther: Ernestas Damanskis
      * Description: None
      * Date:
      * Contact: ernestasdamanskis@gmail.com
      */
      #include <stdio.h>
      int main(int argc, char *argv[])
      {
          printf("Hello, World\n");
          return 0;
      }
    '';
  skelnix = pkgs.writeText "skel.nix"
    ''
      { config, pkgs, ... }:
      {

      }
    '';
in
{
  autoCmd = [
    {
      event = [ "bufnewfile" ];
      pattern = [ "*.c" ];
      command = "0r ${skelc}";
    }
    {
      event = [ "bufnewfile" ];
      pattern = [ "*.nix" ];
      command = "0r ${skelnix}";
    }
  ];

}
