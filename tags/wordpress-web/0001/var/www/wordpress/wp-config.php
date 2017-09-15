<?php
define('DB_NAME', 'wp');
define('DB_USER', 'wp');
define('DB_PASSWORD', '24qTDLAH]hv2dM');
define('DB_HOST', 'localhost');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

define('AUTH_KEY',         '&x|6!Gm}Gswz3ud/m[]a&w)3hyvGvC23bb@vO-VH*[vcj~?.O5epRfhReRELo20|');
define('SECURE_AUTH_KEY',  ' !hwQ-79(*m0A@8X,+D*xlB }<E7b;b*!Yg|fl_;I6kdGB<k aX4)x|&r?a:y~^3');
define('LOGGED_IN_KEY',    'NJ5|)J`</er_H:?Fo&{/`kB*&f<hOa`Z/~z@JBeFO~oyO/lh.dyo6e+aDg!7^*|B');
define('NONCE_KEY',        'E3J/*~D>uKhVkIO|J&$gZgJArpQt/!SrQ)Po,K_J>-)7P:bXFrR-^(Bn)Ov+N8M.');
define('AUTH_SALT',        'U/a !=^>.d?~f@HUQu9u|IW[}}+rf3Ex(a $6aYe 4:rV<^w QDmMQ>fZvtVtN(q');
define('SECURE_AUTH_SALT', 'C=vP:SbI,:VLM:qfOza2 >X6?7C[psn^7#bBQE.4f~{A536HE)YW-|K:ZWF3[fNp');
define('LOGGED_IN_SALT',   '2EF#`<QT4oQHE?P~28G}-BU$PtMKK!)<W AIWk`u:wt#|++/)s0yi3Zdw|;|,(&n');
define('NONCE_SALT',       'Gyw*3h2+P9s)zObr C])!%GQaTx?*Ifjgr%rpO=[CO^BRkR*PmM-ihI~aM-KCO</');

$table_prefix  = 'wp_';
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
