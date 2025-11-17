<?php

// BEGIN iThemes Security - Do not modify or remove this line
// iThemes Security Config Details: 2
define( 'DISALLOW_FILE_EDIT', true ); // Disable File Editor - Security > Settings > WordPress Tweaks > File Editor
// END iThemes Security - Do not modify or remove this line

define( 'ITSEC_ENCRYPTION_KEY', 'NkteWW5DLjNAODt2fU9zTDdTQDJde0pDZyYgRFtRQE91bSg8I1hwbndWbWtaNn4qP0xGUEdMZlAhOzErOSZCRw==' );

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'hourigtq_abuhasdha' );

/** Database username */
define( 'DB_USER', 'hourigtq_abuhasdha' );

/** Database password */
define( 'DB_PASSWORD', '45!SnDO3p!' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         '415n6kqraxrxtgdkf7dwc4dhyjwcwg3qzvc7g8kqvpqfuide6wfzivk9hbwqmfe8' );
define( 'SECURE_AUTH_KEY',  'cydjowrf5tyjcjmvdcnbm3alldz8nuxlovrqcihlbch4vx2w38wqavk1f6bno5lu' );
define( 'LOGGED_IN_KEY',    'rut3d7atvltdh6trrtnqfasogyvbzs9csid9tgqq9quufxiime02hkaolo2tlqmt' );
define( 'NONCE_KEY',        'jc93mchlb8qzp02pgbb33wal8t9hmca45nqcbwi1hqi9ddu0daaklfqhfrnxw7t9' );
define( 'AUTH_SALT',        '6gjhamcvdbjtackifysttcfoylpovb166jzswfnec7vgft10t0czb2r0gv1sb6br' );
define( 'SECURE_AUTH_SALT', '788tq4fvoblwpjexkrrddclqjgzpk2xudcaj0idxjaqfzaroyhfp4kdwwme1ulxg' );
define( 'LOGGED_IN_SALT',   '44xlkcnagjxopxlmwpl0kppiz2iw9xs3r2fhs3vosy16frxj44bsexr8gmvm976m' );
define( 'NONCE_SALT',       'oygjwfkoapvclt0t9aftez6dowbsmbbdd9ra56zfmndaplhukcpyboqdegr0o8wg' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'abuhasdha_';

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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
