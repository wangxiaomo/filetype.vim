filetype.vim
============

filetype.vim is a tiny vim scripts for detecting filetype.
vim 在开启`filetype on`的时候，无法检测某些文件类型，从而无法开启合适的语法高亮。
理论上会有相当多的类似插件，不过我没找到啊！！！

vim-scripts 上的[filetype.vim](https://github.com/vim-scripts/filetype.vim)并不是
我想要的实现，其他的也没有符合的了。所以，爆裂吧，现实。造轮子！！！

Usage
============

我的应用环境是 .emacs 没有检测为 lisp。所以我在`plugin/filetype.vim`中的`FILETYPE_SUPPORTED`
中只写了3p和lisp。因此这里可以根据适当的情况来添加或删除。

```viml
let s:FILETYPE_SUPPORTED = ["perl", "python", "php", "lisp"]
```

Principle
============

因为有些文件类型是用`file`可以检测出而vim检测不出的，所以这里的插件并不是为了检测某些
`file`检测不出的类型。

Others
============

不想重复造轮子。如果有好的vim插件的话，请推荐。
