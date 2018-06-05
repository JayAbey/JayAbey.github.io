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
define('DB_NAME', 'musicmovesme_db');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         '~XCzO?P3aY;g^JT?s%d6,E%H*jK}~->uaFiyE@dBxf)D.cOaw#3@7_t[G,4_QGHH');
define('SECURE_AUTH_KEY',  'D/rO)1R{~m8+,e:S*&A,t)*K%aric^+mDIPmtx)qV$oYPD~B`LJjm2FK<V-p?@^9');
define('LOGGED_IN_KEY',    '/L**DqTIAdvrTf(cynv>eq12I}Bjp8+#E5Cx.Cj`y.Sx!h3X7mT(j%~8(>qdiOL|');
define('NONCE_KEY',        'bYV5=!zN`C2w.s,yZeYS#I?L>uk[s1kM!:c7dm}6<zU@^>Af&T1~?7LH*FsWO()X');
define('AUTH_SALT',        'a,fwB@wp&[T`I4`iQ-C*gMET#{ :PEOd7L-?D>&jg5|FB A!xoMyB9iGx$qV<B5k');
define('SECURE_AUTH_SALT', ' J&YhklJ$<Vd3No&(xB&Hh^UBqHOkRQgV9d|0TM;B|U;o$/D},`/]? Q]Z$B4bR`');
define('LOGGED_IN_SALT',   ']ir!Gt!-UesVy<C^nQ$MjI9Cev)&iJ5X`?<1ix= ihy7Np.kp]pE^.8794BW,^YC');
define('NONCE_SALT',       'hmp]FYzVg&iamP84%Go>E&p6%2=i6u}5;$0d4}Xa/ Tv?MG>Sqf*3_Ea&*D2b4<}');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
