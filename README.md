# Laravel Backend for LIS 162 Project

#### Installation

1. Clone this repository anywhere in your local machine.
2. Go inside the repository.
3. Install composer dependencies through `composer install`
4. Install npm dependencies using`yarn install`
5. Copy the `.env` file using `cp .env.example .env`
6. Generate an app encryption key using `php artisan key:generate`
7. Create an empty database, and enter its credentials in the `.env ` file
8. Insert `SANCTUM_STATEFUL_DOMAINS=localhost:8080` anywhere in the `.env` file
9. Add `SESSION_DOMAIN=.localhost` in the `.env` file, then change `SESSION_DRIVER` to `cookie`

#### Usage

Just run `php artisan serve --host localhost` inside the repo, then `yarn serve` on the frontend. 