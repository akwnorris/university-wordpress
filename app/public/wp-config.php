<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '<(2--??I?J+|pYiOgzo,yeFEN(v)2PrTm5Y,n(q5e,[5CmA3O5)C[_.?7:=f?XZU' );
define( 'SECURE_AUTH_KEY',   'Z,RkpOID:P6(eG~!nMPes,Zru8CC;%CMj{O-*=l@tZ!?zt7jOCg5 $HyL<{ViL9M' );
define( 'LOGGED_IN_KEY',     'wZR2Ull1JC0sS]i1]yvD>Y.%H85bjPhqi2D>C*,0wSffq)m,X2J5?E/+i]vQ$=MK' );
define( 'NONCE_KEY',         '1:eb,},*&sKzYTW{a~l}:@8h+|9cg(pyhme[I2TsCRB9])p`%7-smNLd&AzT2 J~' );
define( 'AUTH_SALT',         'S! ^6.`6 Z~Y<;0w_eDyNPg7/9bz$v:Dg/L-pbdm U+tXxrAf!Wgs9=J+^EU<c!w' );
define( 'SECURE_AUTH_SALT',  'W`M3%q|CruMVj3VZp:- #K#;glM#ikCQX`5O[IG6]Q{v6E%ck#a ,rZXv}Wk!top' );
define( 'LOGGED_IN_SALT',    'KlS6.8t&}zowoHfaQEL.U3#zFiW2>dF00nn+4$;i/Hs`>!Y[%v}-l@[Zy7N} }W:' );
define( 'NONCE_SALT',        '!fZXA*E^0<X;Vi=35gbk>k<b^.Fn76QF(E gq(BZ{BE4#}kkmgUx(?:Vg1z_a_;o' );
define( 'WP_CACHE_KEY_SALT', '4>9bJMR~B2Y,40j<~e^/e7xj|RRKaV~X5zni8:6Un[LU_Ni7o~6l[ME7X4OwD/ $' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
