require('litee.lib').setup({
    -- this is where you configure details about your panel, such as
    -- whether it toggles on the left, right, top, or bottom.
    -- leaving this blank will use the defaults.
    -- reminder: gh.nvim uses litee.lib to implement core portions of its UI.
})
require('litee.gh').setup({
    -- this is where you configure details about gh.nvim directly relating
    -- to GitHub integration.
})
