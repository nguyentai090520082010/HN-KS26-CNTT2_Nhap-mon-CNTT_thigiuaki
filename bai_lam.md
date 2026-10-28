# BÀI LÀM – HACKATHON 01

- **Mã đề:** 21
- **Họ tên:** Nguyễn Đức Tài
- **Lớp:** CNTT 2
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -force
mv mau_goi_qua.txt docs/
mv logo_qua_luu_niem.png media/
rm temp_293.tmp
cd logs
ls
cd..


```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
Directory:
    C:\Users\Administrator\OneDrive\starter-kit\qua-luu-niem-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
dar--l        10/28/2026   1:34 PM                backup
dar--l        10/28/2026   1:36 PM                data
dar--l        10/28/2026   1:38 PM                docs
dar--l        10/28/2026   1:36 PM                logs
dar--l        10/28/2026   1:38 PM                media
-a---l        10/27/2026   1:32 AM             74 .env
-a---l        10/27/2026   1:32 AM           2224 bai_lam.md


    Directory:
    C:\Users\Administrator\OneDrive\starter-kit\qua-luu-niem-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l        10/27/2026   1:32 AM           6103 don_qua_thang_12.xlsx


    Directory:
    C:\Users\Administrator\OneDrive\starter-kit\qua-luu-niem-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l        10/27/2026   1:32 AM             53 mau_goi_qua.txt


    Directory:
    C:\Users\Administrator\OneDrive\starter-kit\qua-luu-niem-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l        10/27/2026   1:32 AM           1040 gift.log


    Directory:
    C:\Users\Administrator\OneDrive\starter-kit\qua-luu-niem-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l        10/27/2026   1:32 AM           6478 logo_qua_luu_niem.png



```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
get-content logs/gift.log | select-string "ERROR" > logs/daily_report
get-content logs/daily_report

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-12-28 07:38:36 [ERROR] Khong tim thay trang /qua-tet (404)
2026-12-28 07:44:36 [ERROR] Het thoi gian cho (timeout)

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\auto_report.ps1


```

### Kết quả hiển thị

```text
=== BAO CAO LOI ===

2026-12-28 07:38:36 [ERROR] Khong tim thay trang /qua-tet (404)
2026-12-28 07:44:36 [ERROR] Het thoi gian cho (timeout)
2026-12-28 07:56:36 [ERROR] Khong tim thay trang /qua-tet (404)
2026-12-28 08:05:36 [ERROR] Thanh toan bi tu choi
2026-12-28 08:08:36 [ERROR] Thanh toan bi tu choi
2026-12-28 08:17:36 [ERROR] Khong tim thay trang /qua-tet (404)
2026-12-28 08:23:36 [ERROR] Het thoi gian cho (timeout)

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
 (Get-Content logs/gift.log | Select-String "ERROR").Count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
7

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
"=== TONG HOP LOG ===" > logs/tong_hop.txt
Get-Content logs/gift.log | Select-String "WARNING" >> logs/tong_hop.txt
(Get-Content logs/gift.log | Select-String "ERROR").Count >> logs/tong_hop.txt
Get-Content logs/tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===

2026-12-28 07:32:36 [WARNING] Anh mau qua dung luong lon
2026-12-28 08:02:36 [WARNING] Anh mau qua dung luong lon
2026-12-28 08:20:36 [WARNING] Don giao gap trong ngay


7

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_qua_thang_12.xlsx`, không cần ghi vào đây.
