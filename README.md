# iphone-win11-mirror

免費把 iPhone 投屏到 Windows 11（不用愛思助手、不用付費軟體）。

## 首選方案

[leapbtw/uxplay-windows](https://github.com/leapbtw/uxplay-windows) **2.0.0.1736**

- 開源、免費
- Qt6 圖形介面 + 系統匣
- **不必再裝 Apple Bonjour Print Services**（內建 mDNS）
- 同 Wi‑Fi：iPhone「控制中心 → 螢幕鏡像」選電腦即可

## 安裝（Windows）

1. 到本倉庫 [Releases](https://github.com/vyt9nt9pb6-sketch/iphone-win11-mirror/releases) 下載 `uxplaywindows-installer.msi`
2. 雙擊安裝（若 Defender SmartScreen 提示，選「仍要執行」——未簽名開源安裝包常見）
3. 允許防火牆
4. 從開始功能表／系統匣啟動 uxplay-windows
5. iPhone 與電腦同一網路 → 控制中心 → 螢幕鏡像

也可直接跑 `scripts/install-uxplay-windows.ps1`。

## iPhoneMirror（鏡像 + BLE 輔助觸控反控）

上游：[RayrenSX/iPhoneMirror](https://github.com/RayrenSX/iPhoneMirror)（開源、免費）

相對 uxplay-windows：同樣可做 AirPlay／USB 畫面鏡像，並額外支援透過 **BLE 週邊 + iPhone「輔助觸控（AssistiveTouch）」** 在電腦上反向操作 iPhone。

### 安裝包

本倉庫 Release：[iPhoneMirror v1.8.3](https://github.com/vyt9nt9pb6-sketch/iphone-win11-mirror/releases/tag/v1.8.3-iphonemirror)  
資產：`iPhoneMirror-Setup-v1.8.3-x64.exe`（官方 Windows x64 安裝程式）

上游原始發布：https://github.com/RayrenSX/iPhoneMirror/releases/tag/v1.8.3

### World 本機安裝路徑（已裝）

- 安裝目錄：`C:\Program Files\iPhoneMirror`（Inno Setup 預設；以實際為準）
- 主程式：`C:\Program Files\iPhoneMirror\iPhoneMirror.exe`（以實際為準）
- 啟動：開始功能表搜尋「iPhoneMirror」，或執行上述 exe

可與 uxplay-windows 並存；不必卸載 uxplay。

### 使用摘要

1. 安裝並啟動 iPhoneMirror
2. **畫面**：同 Wi‑Fi AirPlay 螢幕鏡像，或 USB 連線
3. **反控**：電腦端需可用的 BLE；iPhone 開啟「設定 → 輔助使用 → 觸控 → 輔助觸控」；依 App 指引配對／連接
4. 本任務不要求完成 iPhone 配對；僅確認程式可啟動即可

## 限制

- Netflix / Apple TV+ 等 DRM 內容不會鏡像（開源接收端限制）
- 偶爾第一次連上畫面凍結：斷開再連一次即可
- 需與 iPhone 同一區域網路（或 USB 網路共享）
- BLE 反控依賴 AssistiveTouch 與藍牙週邊能力，非純軟體模擬完整觸控

## 其他 GitHub 方案（未採用）

| 專案 | 說明 |
|------|------|
| Chr0mX/UxPlay | Windows GUI 更完整，下載量較少 |
| gbulog/pcairplay | 包一層 PowerShell / 安裝器在 uxplay-windows 外 |
| FDH2/UxPlay | 上游引擎（Linux/macOS/Windows 自行編譯） |

## 授權

本倉庫腳本與說明：MIT。安裝包來自上游 uxplay-windows / UxPlay（**GPL-3.0**）與 iPhoneMirror（見上游授權）。
