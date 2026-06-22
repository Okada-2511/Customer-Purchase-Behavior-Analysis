
# Phân Tích Hành Vi Mua Sắm Của Khách Hàng
## Giới thiệu dự án

Trong môi trường kinh doanh cạnh tranh hiện nay, việc hiểu rõ hành vi mua sắm của khách hàng đóng vai trò quan trọng trong việc xây dựng chiến lược kinh doanh và tối ưu doanh thu.

Dự án này thực hiện phân tích dữ liệu mua sắm của khách hàng nhằm khám phá các xu hướng tiêu dùng, xác định các sản phẩm bán chạy, đánh giá hành vi mua hàng theo mùa và phân tích các nhóm khách hàng tiềm năng. Kết quả phân tích được trực quan hóa thông qua Power BI để hỗ trợ quá trình ra quyết định kinh doanh.

---

## Mục tiêu kinh doanh

* Xác định các sản phẩm bán chạy nhất.
* Phân tích hành vi mua hàng theo mùa.
* Đánh giá mức chi tiêu của từng nhóm khách hàng.
* Xác định khu vực có số lượng khách hàng lớn nhất.
* Tìm hiểu các yếu tố ảnh hưởng đến hành vi mua sắm.

---

## Các câu hỏi phân tích

1. Mùa nào có doanh số cao nhất?
2. Những sản phẩm nào được mua nhiều nhất?
3. Nhóm tuổi nào có mức chi tiêu lớn nhất?
4. Khu vực nào tập trung nhiều khách hàng nhất?
5. Tần suất mua hàng của khách hàng như thế nào?

---

## Bộ dữ liệu

**Tên bộ dữ liệu:** Customer Purchase & Product Interaction Dataset

**Nguồn dữ liệu:** https://www.kaggle.com/datasets/rahulkumar37841/customer-purchase-behaviour-dataset

Bộ dữ liệu gồm 2 bảng:

### Bảng Customer

Chứa thông tin khách hàng:

* Customer ID
* Age
* Gender
* Location
* Previous Purchases
* Subscription Status

### Bảng Item

Chứa thông tin giao dịch và sản phẩm:

* Item Purchased
* Category
* Purchase Amount
* Season
* Review Rating
* Shipping Type

---

## Tiền xử lý dữ liệu
Trong quá trình phân tích, dữ liệu được làm sạch và chuẩn hóa thông qua các bước:
* Kiểm tra và xử lý dữ liệu thiếu.
* Kiểm tra dữ liệu trùng lặp.
* Chuẩn hóa kiểu dữ liệu.
---

## Công cụ sử dụng

* Microsoft Excel
* SQL Server
* Power BI

---

## Cấu trúc dự án


Customer-Shopping-Behavior-Analysis/
│
├── data/
│   ├── customer.csv
│   └── item.csv
│
├── sql/
│   ├── .sql
│   └── .sql
│
├── dashboard/
│   ├── .pbix
│   └── .png
│
├── report/
│   └── Final_Report.pdf
│
└── README.md
```

---

## Kết quả nổi bật

* Mùa thu (Autumn) là mùa có doanh số cao nhất.
* Shirt và Shoes là hai sản phẩm được mua nhiều nhất.
* Clothing là danh mục sản phẩm phổ biến nhất.
* Phần lớn khách hàng đánh giá sản phẩm từ 3 sao trở lên.
* Nhóm khách hàng từ 45 tuổi trở lên là nhóm có số lượng giao dịch lớn nhất.

---

## Đề xuất

* Tăng tồn kho đối với các sản phẩm Shirt và Shoes.
* Ưu tiên nhập hàng cho danh mục Clothing trước mùa thu.
* Tập trung các chiến dịch marketing vào nhóm khách hàng từ 45 tuổi trở lên.
* Hạn chế đầu tư tồn kho cho các sản phẩm có doanh số thấp.

---

## Dashboard

Dashboard được xây dựng bằng Power BI nhằm cung cấp cái nhìn trực quan về:

* Tổng doanh thu mua hàng.
* Điểm đánh giá trung bình của khách hàng.
* Số lượng sản phẩm bán ra theo từng mặt hàng.
* Xu hướng mua sắm theo mùa.
* Phân bố khách hàng theo khu vực.
* Phân tích nhóm khách hàng theo độ tuổi.

---


---

## Tác giả

**Phan Hồng Phúc**

