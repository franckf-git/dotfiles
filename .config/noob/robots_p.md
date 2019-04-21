# bloquer l indexation web

<?php header("Location: https://URLREDIRECT"); exit; ?> #redirection php

nano /var/local/www/robots.txt
User-agent: *
Disallow: /
