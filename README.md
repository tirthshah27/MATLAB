# 📷 MATLAB Barcode Scanner using Webcam & PLC Communication

This project implements a **real-time barcode scanner** using a **webcam in MATLAB** and sends the scanned barcode data to a **PLC (Programmable Logic Controller)** via serial communication.

---

## 📌 Features
✅ **Scans barcodes** using a **webcam**  
✅ Processes images in **real-time**  
✅ **Detects** barcode regions using image processing  
✅ Sends **decoded barcode data** to a **PLC** via serial communication  
✅ **Error handling** for webcam and serial connection issues  

---

## 🛠️ Requirements

### **1. Software**
- **MATLAB R2014a or later**
- **MATLAB Image Processing Toolbox** *(Recommended for better accuracy)*
- **MATLAB Support Package for USB Webcams** *(Must be installed!)*

### **2. Hardware**
- **USB Webcam**
- **PLC (Programmable Logic Controller)** with **serial communication support**
- **USB-to-Serial Adapter** (if required)

---

## 📦 Installation

### **Step 1: Install Webcam Support Package**
Before running the script, you need to install the **MATLAB Support Package for USB Webcams**.

#### **🔹 To Install the Webcam Support Package:**
1. Open MATLAB.
2. Go to **Home > Add-Ons > Get Add-Ons**.
3. Search for `"MATLAB Support Package for USB Webcams"`, then **Install** it.
4. Restart MATLAB.

### **Step 2: Connect Hardware**
- Connect a **webcam** to your computer.
- Connect the **PLC** using a **serial port (e.g., COM3)**.

### **Step 3: Clone the Repository**
To download and use this project, run the following command in your terminal:
```bash
git clone https://github.com/yourusername/MATLAB-Barcode-Scanner.git
cd MATLAB-Barcode-Scanner
