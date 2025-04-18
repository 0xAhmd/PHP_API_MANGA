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
GET /get_manga.php
```

### Get Manga by ID
```
GET /get_manga_by_id.php?id={manga_id}
```

## 💡 Database Setup

The project uses a MySQL database. The connection settings can be configured in `db.php`:

```php
<?php
$host = "your_database_host";
$username = "your_username";
$password = "your_password";
$database = "your_database_name";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
```

## 🛠️ Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/manga-api.git
   ```

2. Configure the database connection in `db.php`

3. Set up your MySQL database with the required tables

4. Deploy the PHP files to your web server

## 🛠️ Requirements

- PHP 7.0 or higher
- MySQL 5.6 or higher
- Web server (Apache, Nginx, etc.)

## 🚀 Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## 📄 License

This project is open-source and feel free to contribute
