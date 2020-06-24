Movie Store is a project of e-commerce site selling movies.
Site was written using PHP with laravel framework and MySQL database. Ready database file used in project: movie_store.sql.
For frontend raw HTML and CSS was used with some "blade" functionalities.

Required:
- PHP 7.4
- Laravel 7.x (you can install using command "composer global require laravel/installer")
- Laravel UI (composer require laravel/ui)

You can run project by navigating terminal to main folder(movieshop) and running command(before that u need to run mysql server):
php artisan serve

Then open 127.0.0.1:8000 browser page.


So far site consists of:
- Main page listing all movies available in store with options of sorting and showing results based on chosen category. Every showed movie has a button for adding movie to cart. You can access page with all information about chosen movie by clicking on it.
- Page showing all informations about chosen movie(you can also add to cart there).
- Cart page with option of removing items from cart(updating quantity number is not ready yet).
- Checkout Process

Partially done:
- Admin Panel(CRUD movies)
- Account Management

To be done:
- Search functionality
- Checkout process
- Interactive coming soon movies slider on the top of main page


Author: Sebastian Winiarski

