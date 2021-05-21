return function(config)
  config.init_options = {documentFormatting = true, codeAction = false}
  config.filetypes = {'lua'}
  config.settings = {
    rootMarkers = {'.git/'},
    languages = {
      lua = {
        {
          formatCommand = 'lua-format --indent-width=2' ..
            ' --double-quote-to-single-quote --chop-down-table' ..
            ' --chop-down-parameter --continuation-indent-width=2 -i',
          formatStdin = true
        }
      }
    }
  }
  return config
end
