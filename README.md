# vim-toggle-boolean
Quickly toggle the boolean value under the cursor for VIM

快速切换光标下的布尔值

## Install
事实上这是我配置文件里的小函数，核心逻辑不到10行，现在我把它制作成插件，兄弟们可以随便搞。


In fact, this is very simple and flexible toy, always placed in my vimrc.
Now, I picked it to a plugin package, you can use any plugin manager to install it.

For *[vim-plug](https://github.com/junegunn/vim-plug)*:
```vim
Plug 'maomh/vim-toggle-boolean'
```

## Usage
默认按键是 `<leader>gb` ，可以用下面的方式自定义

The default keymapping is `<leader>gb` you can remap it as follow.

```vim
let g:toggle_boolean_no_mapping=1
nmap <nowait><silent> <leader>B <Plug>ToggleBoolean
```

## Configuration
就像上面的例子，`g:toggle_boolean_no_mapping` 是控制是否采用默认映射的

As you see above, the `g:toggle_boolean_no_mapping` is enable default keymapping or not, default is `0`.

And then, the toggle datas is store in `g:toggle_boolean_dict`.

Default is :

```vim
let g:toggle_boolean_dict = { 
            \ "true": "false", "false": "true",
            \ "True": "False", "False": "True",
            \ "TRUE": "FALSE", "FALSE": "TRUE",
            \ "yes": "no", "no": "yes",
            \ "Yes": "No", "No": "Yes",
            \ "YES": "NO", "NO": "YES",
            \ "on": "off", "off": "on",
            \ "On": "Off", "Off": "On",
            \ "ON": "OFF", "OFF": "ON",
            \ "1": "0", "0": "1",
            \ }
```
By the way, I always extended the default data, not only boolean, like `else/elseif` `var/def` `set/setlocal` `echo/print` and so on.

Even I used to treat it as a little snip, help me auto convert abbr into long words, like `addr/(my address)` `email/(my email)` ....


## End


