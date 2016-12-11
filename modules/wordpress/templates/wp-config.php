<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'blogi');

/** MySQL database username */
define('DB_USER', 'blogaaja');

/** MySQL database password */
define('DB_PASSWORD', '!(Bl0g1)');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '17JV<ByiQ@ 9))):>R;XI@@ /d@*_}g:wa4i|TNI`a7}hNK1ppO5bvV.Qd/w<0`a');
define('SECURE_AUTH_KEY',  '-ow,D#xkNLm+T%OSk?Q_Xe&s:/s~4{E1; 4[l6NUa`r@`}$HlDQnyTe>zNX9p}-B');
define('LOGGED_IN_KEY',    ',n~7IZ1^[s&eP>Oe3a!QY]@(,}60Ki)gRY}?sC?]4^,rk@:JHc{|Hm%_uG7w/$?P');
define('NONCE_KEY',        'ospgA!5><.1LTnW1>]LAWW=^[%1P`)BM~Q^P(qHoQ31aJEPjx0>l@JuyL|X<zaRG');
define('AUTH_SALT',        'tGUM;@+cNS+M]A%3I).Z%e<[1<h;z6op 3(({Tu_Kp5~7QAi*)0<X:Y>oSf!ny.S');
define('SECURE_AUTH_SALT', 'ThE_3;54fUu`%IWW/>M{05jmqM}+g+WGvi[/{|SV.`F>SU%*~e}MWJQyevI[*g5?');
define('LOGGED_IN_SALT',   '%0Qix+5+2zg^gqB)4AD0k2CReIPtEH&*3&6yLIci#lu_6x1kIS;)u}]D7l2 K:$B');
define('NONCE_SALT',       '[^(0s3^x:5j:jM0x93JT$;GeNdjln>1R3tw)=tF|WxCN==M_|Fcgy4P[pixPLPdc');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'blogi_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

