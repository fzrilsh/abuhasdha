#!/bin/bash
if [ ! -f index.php ]; then
    echo "Error: Jalankan script ini di dalam folder root WordPress!"
    exit 1
fi

echo "Mengunduh WordPress core terbaru..."
curl -L https://wordpress.org/latest.tar.gz | tar xz --strip-components=1 wordpress/wp-admin wordpress/wp-includes
echo "Core berhasil di-download!"

if [ ! -f wp-config.php ]; then
    cp wp-config-sample.php wp-config.php
    echo "wp-config.php telah dibuat dari sample."
    echo "Silakan edit wp-config.php → isi DB_NAME, DB_USER, DB_PASSWORD, dan salts di https://api.wordpress.org/secret-key/1.1/salt/"
fi

echo "Setup selesai! Tinggal import database atau buka browser untuk install."