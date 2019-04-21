# crontab 

 .---------------- minute (0 - 59)
 |  .------------- hour (0 - 23)
 |  |  .---------- day of month (1 - 31)
 |  |  |  .------- month (1 - 12) OR jan feb mar apr ...
 |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun mon tue wed thu fri sat
 |  |  |  |  |
 *  *  *  *  *  [USER] COMMAND > LOG
1-5 : les unites de temps de 1 a 5
1,5 : les unites de temps de 1 et 5
*/6 : toutes les 6 unites de temps

0 9 * * * /home/user/TEST.sh

> Mot cle        Equivalent

@yearly        0 0 1 1 *
@daily         0 0 * * *
@hourly        0 * * * *
@reboot        Executer au demarrage

> exemples :

30 */2 * * *               -> 30 minutes past the hour every 2 hours
15,45 23 * * *             -> 11:15PM and 11:45PM every day
0 1 ? * SUN                -> 1AM every Sunday
0 1 * * SUN                -> 1AM every Sunday (same as above)
0 0 1 jan/2 * 2011-2013    -> midnight on January 1, 2011 and the first of every odd month until the end of 2013
24 7 L * *                 -> 7:24 AM on the last day of every month
24 7 * * L5                -> 7:24 AM on the last friday of every month
24 7 * * Lwed-fri          -> 7:24 AM on the last wednesday, thursday, and friday of every month
