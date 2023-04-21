# Remaps and Sets

In Vim, remapping keys is a powerful way to customize your editing experience. I found this one very useful for my workflow


1. `vim.g.mapleader = " "`: This sets the mapleader to the space bar.

2. `vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)`: This maps the command Ex mode to <leader>pv in normal mode.

3. `vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")`: This maps the movement of the selected text downwards by one line, using the :m command, to the J key in visual mode.
4. `vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")`: This maps the movement of the selected text upwards by one line, using the :m command, to the K key in visual mode.

5. `vim.keymap.set("n", "J", "mzJz")`: This maps the join command, which combines the current line with the line below it, to the J` key in normal mode. It also places the cursor at the beginning of the joined line.

6. `vim.keymap.set("n", "<C-d>", "<C-d>zz"):` This maps the movement of the cursor down by half a page, using the <C-d> key, in normal mode. It also centers the cursor vertically on the screen.

7. `vim.keymap.set("n", "<C-u>", "<C-u>zz")`: This maps the movement of the cursor up by half a page, using the <C-u> key, in normal mode. It also centers the cursor vertically on the screen.

8. `vim.keymap.set("n", "n", "nzzzv")`: This maps the movement to the next occurrence of the search pattern, using the n key, in normal mode. It also centers the cursor vertically on the screen and selects the match.

9. `vim.keymap.set("n", "N", "Nzzzv")`: This maps the movement to the previous occurrence of the search pattern, using the N key, in normal mode. It also centers the cursor vertically on the screen and selects the match.

10. `vim.keymap.set("n", "<leader>vwm", function() require("vim-with-me").StartVimWithMe() end)`: This remaps <leader>vwm to a function that starts a collaborative editing session using Vim-With-Me plugin.

11. `vim.keymap.set("n", "<leader>svwm", function() require("vim-with-me").StopVimWithMe() end)`: This remaps <leader>svwm to a function that stops a collaborative editing session using Vim-With-Me plugin.

12. `vim.keymap.set("x", "<leader>p", [["_dP]])`: This remaps <leader>p to delete the currently selected text and then paste it at the cursor position.

13. `vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])`: This remaps <leader>y to copy the currently selected text to the system clipboard.

14. `vim.keymap.set("n", "<leader>Y", [["+Y]])`: This remaps <leader>Y to copy the current line to the system clipboard.

15. `vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])`: This remaps <leader>d to delete the currently selected text.

16. `vim.keymap.set("i", "<C-c>", "<Esc>")`: This remaps <C-c> in insert mode to escape the insert mode.

17. `vim.keymap.set("n", "Q", "<nop>")`: This remaps Q to do nothing in normal mode.

18. `vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")`: This remaps <C-f> to open a new tmux window with the tmux-sessionizer command.

19. `vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)`: This remaps <leader>f to format the current buffer using Vim's built-in LSP.

20. `vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")`: This remaps <C-k> to jump to the next item in the quickfix list and center the screen on the current line.

21. `vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")`: This remaps <C-j> to jump to the previous item in the quickfix list and center the screen on the current line.

22. `vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")`: This remaps <leader>k to jump to the next item in the location list and center the screen on the current line.

23. `vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")`: This remaps <leader>j to jump to the previous item in the location list and center the screen on the current line.

24. `vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])`: This remaps <leader>s to perform a case-insensitive search and replace of the current word under the cursor. The search term is entered automatically, and the cursor is moved back to the beginning of the word after the operation.

25. `vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })`: This remaps <leader>x to make the current file executable by running a shell command to change its permissions. The silent option suppresses the output of the command.

26. `vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")`: This remaps <leader>vpp to edit the packer.lua file used for plugin management. The file path is specified relative to the user's home directory.

27. `vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")`: This remaps <leader>mr to run the make_it_rain command using the CellularAutomaton plugin. The command presumably generates a cool visual effect.

28. `vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)`: This remaps <leader><leader> to execute the :so command, which sources the current file. This can be useful for quickly reloading configuration changes.

29. `vim.keymap.set("n","<leader>tt",":NvimTreeToggle<CR>")`: This remaps <leader>tt to toggle the nvim tree tab

#
## Sets


1. `vim.opt.nu = true and vim.opt.relativenumber = true`: These options enable line numbering and relative line numbering, respectively, so you can see the line numbers of the current and nearby lines.

2. `vim.opt.tabstop = 4`, `vim.opt.softtabstop = 4`, `vim.opt.shiftwidth = 4`, and `vim.opt.expandtab = true`: These options control how tabs and spaces are used for indentation. Tab stops are set to 4 spaces, pressing the tab key will insert 4 spaces instead of a tab character, and the indentation level is also set to 4 spaces.

3. `vim.opt.smartindent = true`: This option automatically indents new lines based on the context of the previous line, making it easier to write well-formatted code.

4. `vim.opt.wrap = false`: This option disables line wrapping, so long lines will extend past the edge of the screen instead of being wrapped to the next line.

5. `vim.opt.swapfile = false`, `vim.opt.backup = false`, `vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"`, and `vim.opt.undofile = true`: These options control how Vim handles file backups and undo history. In this case, swap files and backups are disabled, and the undo history is saved to a directory called "undodir" in the user's home directory.

6. `vim.opt.hlsearch = false` and `vim.opt.incsearch = true`: These options control the behavior of Vim's search feature. In this case, the highlight of search matches is disabled, and incremental search is enabled, which shows matches as you type.

7. `vim.opt.termguicolors = true`: This option enables truecolor support, allowing Vim to display more colors and shades than the traditional 256-color palette.

8. `vim.opt.scrolloff = 8` and `vim.opt.signcolumn = "yes"`: These options control how Vim displays scrollbars and sign columns. In this case, the scroll offset is set to 8 lines, so Vim will always keep at least 8 lines above and below the cursor in view. The sign column is also enabled to show information such as Git diff markers.

9. `vim.opt.isfname:append("@-@")`: This option appends the "@" character to the list of valid filename characters, so filenames containing "@" will be recognized by Vim.

10. `vim.opt.updatetime = 50`: This option controls how often Vim updates certain internal state variables, such as the cursor position and the current mode.

11. `vim.opt.colorcolumn = "80"`: This option enables a vertical line at column 80, which can be useful for keeping code within a certain width limit.