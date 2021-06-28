return function(config)
  config.filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx',
    'html',
    'sh'
  }
  config.init_options = {
    linters = {
      eslint = {
        command = './node_modules/.bin/eslint',
        rootPatterns = {
          '.git',
          '.eslintrc.json',
          '.eslintrc',
          '.eslinrc.js',
          'package.json'
        },
        debounce = 100,
        args = {'--stdin', '--stdin-filename', '%filepath', '--format', 'json'},
        sourceName = 'eslint',
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '${message} [${ruleId}]',
          security = 'severity'
        },
        securities = {['1'] = 'warning', ['2'] = 'error'}
      },
      shellcheck = {
        command = 'shellcheck', -- brew install shellcheck
        debounce = 100,
        args = {'--format=gcc', '-'},
        offsetLine = 0,
        offsetColumn = 0,
        sourceName = 'shellcheck',
        formatLines = 1,
        formatPattern = {
          '^[^:]+:(\\d+):(\\d+):\\s+([^:]+):\\s+(.*)$',
          {line = 1, column = 2, message = 4, security = 3}
        },
        securities = {error = 'error', warning = 'warning', note = 'info'}
      }
    },
    formatters = {
      prettier = {
        command = './node_modules/.bin/prettier',
        args = {'--stdin-filepath', '%filepath'},
        rootPatterns = {
          '.git',
          '.eslintrc.json',
          '.eslintrc',
          '.eslinrc.js',
          'package.json'
        }
      }
    },
    filetypes = {
      sh = 'shellcheck',
      javascript = 'eslint',
      javascriptreact = 'eslint',
      ['javascript.jsx'] = 'eslint',
      typescript = 'eslint',
      ['typescript.tsx'] = 'eslint',
      typescriptreact = 'eslint'
    },
    formatFiletypes = {
      javascript = 'prettier',
      javascriptreact = 'prettier',
      ['javascript.jsx'] = 'prettier',
      typescript = 'prettier',
      ['typescript.jsx'] = 'prettier',
      typescriptreact = 'prettier',
      html = 'prettier',
      css = 'prettier'
    }
  }
end
