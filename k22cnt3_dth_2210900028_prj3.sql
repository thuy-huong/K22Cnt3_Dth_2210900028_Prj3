Create database k22cnt3_DamThuyHuong_2210900028_project3
use k22cnt3_DamThuyHuong_2210900028_project3

-- Bảng danh mục
CREATE TABLE dthDanhMuc (
    maDM INT AUTO_INCREMENT PRIMARY KEY,
    tenDM VARCHAR(200) CHARACTER SET utf8mb4 NOT NULL,
    mota TEXT,
    trangThai BIT NOT NULL
);

-- Bảng nhà cung cấp
CREATE TABLE dthNhaCungCap (
    maNCC INT AUTO_INCREMENT PRIMARY KEY,
    tenNCC VARCHAR(200) CHARACTER SET utf8mb4 NOT NULL,
    sdt VARCHAR(12) NOT NULL,
    diaChi VARCHAR(200) CHARACTER SET utf8mb4 NOT NULL,
    moTa TEXT,
    trangThai BIT NOT NULL
);

-- Bảng thực phẩm
CREATE TABLE dthThucPham (
    maTP VARCHAR(12) PRIMARY KEY,
    tenTP VARCHAR(200) CHARACTER SET utf8mb4 NOT NULL,
    maDM INT NOT NULL,
    maNCC INT NOT NULL,
    donGiaNhap DECIMAL(10, 2) NOT NULL,
    donGiaBan DECIMAL(10, 2) NOT NULL,
    soLuong INT NOT NULL,
    donViTinh VARCHAR(50),
    hinhAnh VARCHAR(200),
    moTa TEXT,
    isDelete BIT,
    FOREIGN KEY (maDM) REFERENCES dthDanhMuc(maDM),
    FOREIGN KEY (maNCC) REFERENCES dthNhaCungCap(maNCC)
);

-- Bảng khách hàng
CREATE TABLE dthKhachHang (
    maKh INT AUTO_INCREMENT PRIMARY KEY,
    tenKh VARCHAR(200) CHARACTER SET utf8mb4 NOT NULL,
    diaChi VARCHAR(200),
    sdt VARCHAR(12) NOT NULL,
    matKhau VARCHAR(20) NOT NULL,
    trangThai BIT,
    hinhAnh VARCHAR(200)
);

-- Bảng hóa đơn bán
CREATE TABLE dthHoaDonBan (
    soHDB INT AUTO_INCREMENT PRIMARY KEY,
    maKh INT NOT NULL,
    ngayBan DATETIME NOT NULL,
    diaChiNhanHang VARCHAR(200) CHARACTER SET utf8mb4 NOT NULL,
    ghiChu TEXT,
    phuongThucThanhToan VARCHAR(100),
    trangThai BIT,
    FOREIGN KEY (maKh) REFERENCES dthKhachHang(maKh)
);

-- Bảng chi tiết hóa đơn bán
CREATE TABLE dthChiTietHoaDonBan (
    maCTHDB INT AUTO_INCREMENT PRIMARY KEY,
    soHDB INT NOT NULL,
    maTP VARCHAR(12) NOT NULL,
    soLuongBan INT NOT NULL,
    giaKhuyenMai DECIMAL(10, 2),
    FOREIGN KEY (soHDB) REFERENCES dthHoaDonBan(soHDB),
    FOREIGN KEY (maTP) REFERENCES dthThucPham(maTP)
);
select * from dthDanhMuc
-- Thêm dữ liệu vào bảng danh mục
INSERT INTO dthDanhMuc (tenDM, mota, trangThai) VALUES
('Thực phẩm tươi sống', 'Các loại thực phẩm tươi sống', 1),
('Thực phẩm chế biến sẵn', 'Thực phẩm đã được chế biến', 1);

-- Thêm dữ liệu vào bảng nhà cung cấp
INSERT INTO dthNhaCungCap (tenNCC, sdt, diaChi, moTa, trangThai) VALUES
('Công ty A', '0123456789', 'Địa chỉ A', 'Nhà cung cấp thực phẩm A', 1),
('Công ty B', '0987654321', 'Địa chỉ B', 'Nhà cung cấp thực phẩm B', 1);

-- Thêm dữ liệu vào bảng thực phẩm
INSERT INTO dthThucPham (maTP, tenTP, maDM, maNCC, donGiaNhap, donGiaBan, soLuong, donViTinh, hinhAnh, moTa, isDelete) VALUES
('TP001', 'Cá hồi', 1, 1, 200000, 250000, 100, 'kg', 'ca_houi.jpg', 'Cá hồi tươi ngon', 0),
('TP002', 'Gà tươi', 1, 2, 150000, 200000, 150, 'kg', 'ga_tươi.jpg', 'Gà tươi sạch', 0);

-- Thêm dữ liệu vào bảng khách hàng
INSERT INTO dthKhachHang (tenKh, diaChi, sdt, matKhau, trangThai, hinhAnh) VALUES
('Nguyễn Văn A', 'Địa chỉ A1', '0912345678', 'matkhau123', 1, 'khachhang_a.jpg'),
('Trần Thị B', 'Địa chỉ B1', '0923456789', 'matkhau456', 1, 'khachhang_b.jpg');

-- Thêm dữ liệu vào bảng hóa đơn bán
INSERT INTO dthHoaDonBan (maKh, ngayBan, diaChiNhanHang, ghiChu, phuongThucThanhToan, trangThai) VALUES
(1, '2025-03-01 10:00:00', 'Địa chỉ giao hàng A', 'Ghi chú A', 'Tiền mặt', 1),
(2, '2025-03-02 11:00:00', 'Địa chỉ giao hàng B', 'Ghi chú B', 'Chuyển khoản', 1);

-- Thêm dữ liệu vào bảng chi tiết hóa đơn bán
INSERT INTO dthChiTietHoaDonBan (soHDB, maTP, soLuongBan, giaKhuyenMai) VALUES
(1, 'TP001', 2, NULL),  -- 2kg cá hồi
(1, 'TP002', 1, 180000), -- 1kg gà tươi với giá khuyến mãi
(2, 'TP001', 1, NULL);   -- 1kg cá hồi

