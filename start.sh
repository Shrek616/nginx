#!/bin/ash
rm -rf /home/container/tmp/*

echo "⟳ Запуск PHP-FPM..."
/usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "⟳ Запуск Nginx..."
echo "✓ Веб-сервер успешно готов к работе!"
echo "! Размещать файлы сервера нужно в папку webroot."
echo "! В папке nginx находятся настройки веб-сервера."
echo "✓ Желаю удачи вашему сайту на ShrekHost!"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/
