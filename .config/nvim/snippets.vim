
ab _log console.log()<Left>

ab _func const FUNCTION = (ARG) => {<CR>
\    <CR>
\}<Up>

ab _try try {<CR>
\    <CR>
\} catch (error) {<CR>
\    console.error(error)<CR>
\}<Up><Up><Up>

ab _for for (let index = 0; index < array.length; index++) {<CR>
\    const element = array[index]<CR>
\    <CR>
\}<Up><Up>

ab _test it('should xxx ', () => {<CR>
\    expect(FUNCTION(ARG)).toBe(RESULT)<CR>
\})<Up><Up>

ab _com 
\/*
\<CR> *
\<CR>*/<Up>

"<!DOCTYPE html>
"<html lang="en">
"
"    <head>
"        <meta charset="UTF-8">
"        <meta name="viewport" content="width=device-width, initial-scale=1.0">
"        <title>Document</title>
"        <link rel="stylesheet" href="./index.css" />
"        <script src="./index.js" type="module"></script>
"    </head>
"
"    <body>
"        <div class="container is-fluid">
"            <!-- XXX -->
"        </div>
"    </body>
"
"</html>

ab _lorem Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer diam augue, egestas quis, aliquam ut, venenatis ut, quam. Quisque ut augue. Integer non neque a lectus venenatis fermentum. Morbi quis eros nec elit molestie vehicula. Integer nunc lacus, sodales posuere, rutrum quis, blandit at, mi. Vivamus imperdiet wisi vel mauris. Morbi mattis ante non metus. Sed turpis dui, fermentum ut, aliquam eget, vulputate ullamcorper, pede. Nam non dolor. Etiam lobortis, urna id bibendum convallis, ligula augue auctor eros, a dictum sapien mi a tellus. Proin vel justo. Nunc malesuada turpis a sapien.
