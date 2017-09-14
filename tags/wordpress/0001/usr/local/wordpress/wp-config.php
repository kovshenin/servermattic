<?php
define('DB_NAME', 'database_name_here');
define('DB_USER', 'username_here');
define('DB_PASSWORD', 'password_here');
define('DB_HOST', 'localhost');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

define('AUTH_KEY',         'h?.RT{Mm+aFo6VKF jOgXaM> -Ah!q-;>.uTeCl_.Oz| H,}r4b~8)JJM&BOl**+');
define('SECURE_AUTH_KEY',  '`^b/7h2ViZja+>5o(~-m.<U@DFAd+|h:BX]a-4|;dr!u3wx^P4w++>w[i1wJL#D9');
define('LOGGED_IN_KEY',    'O3(|*wU86^|d08dk*D.Qt2Tk>(?iK`y-bA!wND:xD#0F|w3P~OJ+;fzCrCaD+m(l');
define('NONCE_KEY',        '*^wx|uoebfBbJF/o]#<8;FC#rtWBsYY4Z<%m#CB?n/jAd[/(Z=YktsYi>,@Bm2B7');
define('AUTH_SALT',        '+7_q|O]|7(Fd2Xlg8<=<B,9lA2iMm`JW+rw#,vqc5hcL|T=&l3!=WsIiVe52a9jS');
define('SECURE_AUTH_SALT', 'g=7*-SclTq^eLqPnk.GW$Hl@6B7kxg+:AowXM@y rMg)~XSpk1,unM+Qtar^3K#/');
define('LOGGED_IN_SALT',   'G}<hsh7tG|$oni.zHKSlhC<c3Eo@7f,wv;AP+%JEMK@CoMx8u&.Kal/)+J;-wvz[');
define('NONCE_SALT',       '-3~*[x/kp)]k!vEx3]oQT({:q+Q8kehua;-|n8U(1Mbu;pUE+NpGV>DES+T^$Lx`');

$table_prefix  = 'wp_';
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
