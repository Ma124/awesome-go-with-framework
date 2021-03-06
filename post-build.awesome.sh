#!/bin/bash

mkdir public
cp -r tmpl/** public

cat <<-EOF > public/index.html
<!DOCTYPE html>
<html class="sorted-by-5-asc">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta name="viewport" content="width=device-width">
<title>Awesome Go</title>
<meta name="description" content="A curated list of awesome Go frameworks, libraries and software">
<meta name="keywords" content="golang, go, awesome, awesome-go, go framework, golang framework">
<meta name="twitter:card" value="summary">
<meta property="og:title" content="Awesome Go" />
<meta property="og:type" content="article" />
<meta property="og:url" content="https://awesome-go.com/" />
<meta property="og:image" content="https://awesome-go.com/assets/logo.png" />
<meta property="og:description" content="A curated list of awesome #Golang frameworks, libraries and software" /> 

<link rel="stylesheet" type="text/css" href="assets/fonts/firasans.css">
<link rel="stylesheet" type="text/css" href="assets/normalize.css">
<link rel="stylesheet" type="text/css" href="assets/awesome-go.css">
</head>
<body>
<img src="assets/logo.png" alt="Awesome Go" class="awesome-logo" />
<div id="content">
$(cat public/index.html)
</div>
<script src="assets/jquery-custom.min.js"></script>
<script src="assets/marked.js"></script>
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-85465107-1', 'auto');
ga('send', 'pageview');
</script>
<script src="assets/sort.js"></script>
</body>
</html>
EOF

