# Web Application with Java Servlets

## Cấu trúc dự án
- `src/main/java`: Mã nguồn Java
  - `controller`: Các servlet xử lý request
  - `dao`: Interface định nghĩa thao tác với DB
  - `daoImpl`: Triển khai cụ thể của DAO
  - `model`: Các đối tượng dữ liệu
  - `service`: Lớp dịch vụ
  - `utils`: Tiện ích
  - `connection`: Kết nối cơ sở dữ liệu
- `src/main/webapp`: Giao diện người dùng
  - `views`: JSP files
    - `admin`: Giao diện quản trị
  - `WEB-INF`: Cấu hình web

## Cấu hình Docker
Dự án này sử dụng Docker để triển khai:
- MySQL 8.0: Cơ sở dữ liệu
- Tomcat 10.1: Máy chủ ứng dụng

## Khởi chạy ứng dụng

- **Truy cập vào MySQL container:**
  ```powershell
  docker exec -it my-mysql mysql -uuser -ppass123 mydb
  ```
- **Kiểm tra các bảng trong database:**
  ```sql
  SHOW TABLES;
  ```
- **Xem dữ liệu mẫu trong bảng category:**
  ```sql
  SELECT * FROM category;
  ```
### Sử dụng script tự động (khuyến nghị)
Để khởi động lại ứng dụng với dữ liệu sạch:

```powershell
# Trên Windows PowerShell
.\restart-fresh.ps1
```

Hoặc:

```bash
# Trên Linux/Mac
./restart-fresh.sh
```
## Thao tác với database MySQL trong Docker


### Khởi động thủ công

1. Dừng và xóa tất cả containers và volumes:
   ```
   docker-compose down -v
   ```

2. Build ứng dụng:
   ```
   mvn clean package -DskipTests
   ```

3. Khởi động containers:
   ```
   docker-compose up -d
   ```

## Truy cập ứng dụng

- Trang chủ: http://localhost:8080/baitap2/
- Đăng nhập: http://localhost:8080/baitap2/login
- Đăng ký: http://localhost:8080/baitap2/register
- Quản lý danh mục: http://localhost:8080/baitap2/admin/category/list
