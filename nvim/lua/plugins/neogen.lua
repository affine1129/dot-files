vim.opt.runtimepath:append("~/.cache/dein/repos/github.com/danymat/neogen")
require('neogen').setup {
    enabled = true,
    languages = {
        python = {
            template = {
                annotation_convention = "google_docstrings"
            }
        }
    }
}
