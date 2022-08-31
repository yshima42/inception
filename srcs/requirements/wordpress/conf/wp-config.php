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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'yshimazu' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'WP_ALLOW_REPAIR', true );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Pm~;O#B|Fc_l]2mws}x7@oy4T/(-s Fx-~SgU{n/{R`VglwVf`IEus@oQL2}6|T>');
define('SECURE_AUTH_KEY',  'B+(>P}#K61?{6urG.gl;RLJdFZ^9-QyNnQ>.~)E_I*~8ASBU+z!(woS(;g5Z);bZ');
define('LOGGED_IN_KEY',    '&C$-G5;/a~>&tfwp4m%Kr_].=!H5puS*+[ky1VIAr2,lm`1-*y+Ynz-xz06.k7#T');
define('NONCE_KEY',        'd5{%Ihb{D{MQ~[|5-]<{Ce2{85DE|Z*lk~MUEd[YH%~x,]I5;V77?O5?aM@k$nFP');
define('AUTH_SALT',        'g,gaO|h*V-?1.^-!qXY)wZe+xMeED9p-(_N5}098^+c1MK!ElEx&wiVK+_kfJ9*6');
define('SECURE_AUTH_SALT', '+W]c|& w]R)$8sZst)`1;0_SODd+UPIP20+sMyYx!@UHpl]6@|k27n/NEtw/}~<E');
define('LOGGED_IN_SALT',   'eQwF&3Q{+)8Fj$%-;%1Mza)B4!|GLQ+e}D|IPSFnE$?/n<@w_: || i:n_@29-/~');
define('NONCE_SALT',       'z+3U9=zgMQ6gA.kU->J?9BmPt}yXjO&JJq*!$[I){tH*.I%r+3ZYz)zO^)YIWX&a');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>

