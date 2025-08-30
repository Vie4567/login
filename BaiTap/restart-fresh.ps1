# Script PowerShell để khởi động lại Docker containers với dữ liệu mới

Write-Host "Dừng và xóa tất cả containers và volumes..." -ForegroundColor Yellow
docker-compose down -v

Write-Host "Build ứng dụng..." -ForegroundColor Yellow
mvn clean package -DskipTests

Write-Host "Khởi động containers..." -ForegroundColor Yellow
docker-compose up -d

Write-Host "Đợi MySQL khởi tạo..." -ForegroundColor Yellow
Start-Sleep -Seconds 10

Write-Host "Khởi động lại Tomcat để đảm bảo kết nối tới MySQL đã khởi tạo..." -ForegroundColor Yellow
docker restart my-tomcat

Write-Host "Hoàn tất! Ứng dụng của bạn đang chạy tại http://localhost:8080/baitap2/" -ForegroundColor Green
