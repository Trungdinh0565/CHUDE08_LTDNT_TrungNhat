# CHỦ ĐỀ 08 — ANIMATION VÀ CỬ CHỈ NÂNG CAO

## 1. Giới thiệu

Dự án được thực hiện trong khuôn khổ học phần **Lập trình đa nền tảng**, nhằm tìm hiểu và vận dụng các kỹ thuật Animation (hoạt ảnh) và Gesture (cử chỉ) trong Flutter để xây dựng giao diện có tính tương tác và mang lại trải nghiệm tốt hơn cho người dùng.

Nội dung lý thuyết tập trung vào các loại Animation trong Flutter, bao gồm Implicit Animation, Explicit Animation, AnimationController và các hiệu ứng chuyển tiếp cơ bản. Bên cạnh đó, dự án minh họa việc kết hợp Animation với thao tác người dùng thông qua ứng dụng quản lý công việc Todo mini.

### Nội dung chính

- Tìm hiểu cơ chế hoạt động của Animation trong Flutter.
- Sử dụng AnimatedContainer và AnimatedCrossFade để triển khai Implicit Animation.
- Sử dụng AnimationController, Tween và ScaleTransition để triển khai Explicit Animation.
- Xử lý tương tác người dùng thông qua Gesture và các thao tác chạm.
- Hỗ trợ chế độ giảm chuyển động (Reduce Motion) nhằm cải thiện trải nghiệm người dùng.

## 2. Công nghệ sử dụng

- **Flutter:** Framework phát triển ứng dụng đa nền tảng.
- **Dart:** Ngôn ngữ lập trình sử dụng trong Flutter.
- **Material Design:** Hệ thống thiết kế giao diện ứng dụng.
- **Visual Studio Code:** Môi trường phát triển.
- **Git và GitHub:** Quản lý mã nguồn và phối hợp làm việc nhóm.

## 3. Cây thư mục

```text
CHUDE08_LTDNT_TrungNhat/
├── lib/
│   ├── main.dart
│   └── task_card.dart
│
├── android/
├── ios/
├── linux/
├── macos/
├── web/
├── windows/
├── test/
│
├── analysis_options.yaml
├── pubspec.yaml
├── pubspec.lock
├── .gitignore
└── README.md
```

### Chức năng các thành phần chính

| Tệp / thư mục | Chức năng |
|---|---|
| `main.dart` | Khởi tạo ứng dụng, quản lý danh sách công việc và xử lý thao tác xóa công việc. |
| `task_card.dart` | Xây dựng giao diện từng công việc, xử lý trạng thái hoàn thành, mở rộng và các hiệu ứng Animation. |
| `pubspec.yaml` | Khai báo thông tin dự án, phiên bản SDK và các dependencies. |
| `pubspec.lock` | Lưu phiên bản cụ thể của các thư viện được sử dụng. |
| `test/` | Chứa các bài kiểm thử của dự án. |
| `analysis_options.yaml` | Cấu hình các quy tắc phân tích và kiểm tra mã nguồn Dart. |

## 4. Hướng dẫn cài đặt và chạy

### 4.1. Yêu cầu môi trường

Cần chuẩn bị:

- Flutter SDK (phiên bản tương thích với Dart SDK từ 3.13.0).
- Dart SDK đi kèm Flutter.
- Visual Studio Code hoặc Android Studio.
- Android Emulator hoặc thiết bị Android đã bật USB Debugging.

Kiểm tra môi trường bằng lệnh:

```bash
flutter doctor
```

### 4.2. Tải mã nguồn

Mở Terminal và chạy lệnh:

```bash
git clone https://github.com/Trungdinh0565/CHUDE08_LTDNT_TrungNhat.git
```

Di chuyển vào thư mục dự án:

```bash
cd CHUDE08_LTDNT_TrungNhat
```

### 4.3. Cài đặt dependencies

Chạy lệnh:

```bash
flutter pub get
```

Lệnh này tải và cài đặt các thư viện được khai báo trong `pubspec.yaml`.

### 4.4. Kiểm tra thiết bị

Liệt kê các thiết bị có thể chạy ứng dụng:

```bash
flutter devices
```

Nếu sử dụng Android Emulator, hãy khởi động máy ảo trước khi chạy ứng dụng.

### 4.5. Khởi chạy ứng dụng

Chạy lệnh:

```bash
flutter run
```
Sau khi biên dịch thành công, ứng dụng sẽ được khởi chạy trên thiết bị đã chọn.

## 5. Sinh viên thực hiện

- Đinh Tiến Trung
- Lê Văn Nhật
