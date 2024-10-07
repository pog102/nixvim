{

  extraConfigLua = ''
     M = {}

     options = {}

    M.fetch_options = function()
      -- Fetch JSON response from the API
       result = vim.fn.system("curl -s https://nixos-search-frontend.netlify.app/options")

      -- Decode the JSON response
       ok, data = pcall(vim.fn.json_decode, result)
      if not ok then
        vim.notify("Failed to decode NixOS options", vim.log.levels.ERROR)
        return
      end

      -- Extract the options names
      for _, option in ipairs(data.options) do
        table.insert(options, option.name)
      end
    end

    -- Setup nvim-cmp source
    M.setup_cmp = function()
       cmp = require('cmp')

      cmp.setup({
        sources = {
          {
            name = 'nixos_options',
            keyword_length = 3,
            complete = function(_, params, callback)
              callback({
                items = vim.tbl_map(function(option)
                  return {
                    label = option,
                    insertText = option .. ' = ',
                    kind = cmp.lsp.CompletionItemKind.Field,
                  }
                end, options),
              })
            end,
          }
        }
      })
    end
    M.setup_snippets = function()
       ls = require('luasnip')
       s = ls.snippet
       t = ls.text_node

      for _, option in ipairs(options) do
        ls.add_snippets("nix", {
          s(option, t(option .. " = ")),
        })
      end
    end
    -- Load options and setup the plugin
    M.setup = function()
      M.fetch_options()
      M.setup_cmp()
      M.setup_snippets()
    end
    return M
  '';
}
