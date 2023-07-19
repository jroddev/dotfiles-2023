return {
  'numToStr/Comment.nvim',
  config = function()
    -- visual block -> <Shift /> to comment/uncomment
    -- normal mode -> <Shift //> comment/uncomment current line
    require('Comment').setup({
        toggler = {
            line = '??'
       },
        opleader = {
           line = '?'
        }
    })
  end,
  lazy = false
}
