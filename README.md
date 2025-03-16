# ⏳ Counter with Reset – FPGA Verilog Project

## 📌 Project Overview

The **Counter with Reset** is a simple **FPGA-based** digital counter implemented using **Verilog** on a **Nexys A7 FPGA**. This project allows a user to **increment a counter by pressing a button**, display the count on a **7-segment display**, and **reset the counter when needed**.

This project covers **hardware debouncing**, **button-triggered counting**, and **seven-segment display control**.

---

## 🚀 Features

- 🔼 **Increment Counter** – Each button press increases the count by `1`.
- 🔄 **Reset Counter** – A dedicated reset button resets the count to `0`.
- 🖥️ **Seven-Segment Display Output** – The current count is displayed in real-time.
- 🔧 **Button Debouncing** – Ensures reliable button inputs, avoiding unintended multiple increments.

---

## 🛠️ Tech Stack

| Component            | Technology Used |
|----------------------|----------------|
| **Programming Language** | Verilog |
| **FPGA Board**       | Nexys A7 |
| **Clock Speed**      | 100 MHz |
| **Constraints File** | `.xdc` for pin mapping |
| **Development Tool** | Xilinx Vivado |

---

## 📂 Installation & Setup

### 1️⃣ **Clone the Repository**
```sh
git clone https://github.com/YOUR_GITHUB_USERNAME/FPGA-Counter.git
cd FPGA-Counter
```

### 2️⃣ Navigate to the Project Directory

```sh
cd FPGA-Counter
```

### 3️⃣ Open in Vivado

1. Open **Vivado** and create a new project.
2. Add the Verilog source files:
   - `button_counter.v`
   - `debouncer.v`
   - `counter.v`
   - `seven_seg_decoder.v`
3. Add the **Nexys A7 constraints file** (`.xdc`) for proper pin mapping.

### 4️⃣ Run Synthesis, Implementation, and Bitstream Generation

1. **Synthesize the design** – Run Synthesis.
2. **Implement the design** – Run Implementation.
3. **Generate the Bitstream** – Generate Bitstream.
4. **Program the FPGA** using Vivado Hardware Manager.

---

## 📜 Usage

### 1️⃣ Start the Counter
- **Press BTNC** – Increments the counter by 1.
- **Press BTNL** – Resets the counter to 0.
- **Seven-Segment Display** – Shows the current count (0-9).


