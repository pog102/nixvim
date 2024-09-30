{ pkgs, ... }:
{
  extraConfigLua = ''
            -- import basic default placeholder callbacks
        local skeld = require("skel-nvim.defaults")

     local function time(config)
      return os.date('%d/%m/%y')
    end
        require("skel-nvim").setup{
          -- dir containing skeleton files (default)
          templates_dir = vim.fn.expand('$HOME/nvim/templates'),

          -- enable/disable plugin, this supercedes disable_for_empty_file (default)
          skel_enabled = true,

          -- enable/disable processing for bufread + empty file case (default)
          apply_skel_for_empty_file = true,

          -- file pattern -> template mappings (default)
          mappings = {
            ['main.cpp'] = "main.cpp.skel",
            ['*.cpp'] = "cpp.skel",
            ['*.h'] = "h.skel",
            ['*.t.cpp'] = "utest.cpp.skel",
            ['main.c'] = "main.c.skel",
            ['*.c'] = "c.skel",
            ["*.go"] = "go.skel",
            ['*.py'] = "py.skel",
            ['*.lua'] = "lua.skel",
            ['*.sh'] = "sh.skel"
          },

          -- substitutions in templates (default)
          -- can be a string or a callback function
          -- these are the set of default placeholders provided by the plugin
          substitutions = {
            ['FILENAME']             = skeld.get_filename,
            ['NAME']                 = skeld.get_author,
            ['DATE']                 = time,
            ['CPP_HDR_GUARD']        = skeld.get_cppheaderguard,
            ['CPP_TEST_HDR_GUARD']   = skeld.get_testheaderguard,
            ['CPP_HDR_INCLUDE']      = skeld.get_headerinclude,
            ['CLASS_NAME']           = skeld.get_classname2,
            ['NAMESPACE_OPEN']       = skeld.get_namespaceopen,
            ['NAMESPACE_CLOSE']      = skeld.get_namespaceclose,
            ['EMAIL']                = "ernestasdamanskis@gmail.com",
          },
          -- Misc global config available to substitution callback functions
          author = "Ernestas Damanskis",
          namespace =  {"MyOrg", "MyApp"},
          -- Supports user variables too
          my_user_variable = "my_user_value",

          -- per project overrides (default = {})
        }
  '';
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "skel-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "motosir";
        repo = "skel-nvim";
        rev = "master";
        hash = "sha256-faiiZgQsQ9/70unqmmB0Sj0KDP1eH0I9CGcNUKl/wsA=";
      };
    })
  ];
}
