# 📚 Manga API

A simple PHP-based API for managing and fetching manga data from a MySQL database.

## 🚀 Features

- Fetch all manga entries
- Get manga by specific ID
- Simple and lightweight
- MySQL database backend

## 🐋 API Endpoints

### Get All Manga
```
GET http://localhost/manga_api/get_manga_by_id.php?id=2
```

### Get Manga by ID
```
GET http://localhost/manga_api/get_manga_by_id.php?id={id}
```

## 💡 Database Setup

The project uses a MySQL database. The connection settings can be configured in `db.php`:

```php
<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "manga_db";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
```

## 🛠️ Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/0xAhmd/PHP_API_MANGA
   ```

2. Configure the database connection in `db.php`

3. Deploy the PHP files to your web server

## 🛠️ Requirements

- PHP 7.0 or higher
- MySQL 5.6 or higher
- Web server (Apache, Nginx, etc.)

