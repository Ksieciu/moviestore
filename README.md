Movie Store is a project of e-commerce site selling movies.
Site was written using PHP with laravel framework and MySQL database. Ready database file used in project: movie_store.sql

Required:
- PHP 7.4
- Laravel 7.x (you can install using command "composer global require laravel/installer")

You can run project by navigating terminal to main folder(movieshop) and running command(before that u need to run mysql server):
php artisan serve

Then open 127.0.0.1:8000 browser page.


So far site consists of:
- Main page listing all movies available in store with options of sorting and showing results based on chosen category. Every showed movie has a button for adding movie to cart
- Page showing all informations about chosen movie(you can also add to cart).
- Cart page with option of removing items from cart(updating quantity number is not ready yet).


To be done:
- Account management
- Search functionality
- Checkout process
- Interactive coming soon movies slider on the top of main page


Author: Sebastian Winiarski

