# iphone-win11-mirror

免費把 iPhone 投屏到 Windows 11（不用愛思助手、不用付費軟體）。

本倉庫同時提供兩套工具的 Windows 安裝資產與說明：

| 工具 | 用途 | 本倉庫 Release |
|------|------|----------------|
| **uxplay-windows** | AirPlay 螢幕鏡像（輕量） | [v2.0.0.1736](https://github.com/vyt9nt9pb6-sketch/iphone-win11-mirror/releases/tag/v2.0.0.1736) |
| **iPhoneMirror** | 鏡像 + 可選 BLE／輔助觸控反控 | [v1.8.5-pre4](https://github.com/vyt9nt9pb6-sketch/iphone-win11-mirror/releases/tag/v1.8.5-pre4-iphonemirror) |

兩者可並存，不必互相卸載。

---

## 首選方案：uxplay-windows

[leapbtw/uxplay-windows](https://github.com/leapbtw/uxplay-windows) **2.0.0.1736**

- 開源、免費
- Qt6 圖形介面 + 系統匣
- **不必再裝 Apple Bonjour Print Services**（內建 mDNS）
- 同 Wi‑Fi：iPhone「控制中心 → 螢幕鏡像」選電腦即可

### 安裝（Windows）

1. 到本倉庫 [Releases](https://github.com/vyt9nt9pb6-sketch/iphone-win11-mirror/releases) 下載 `uxplaywindows-installer.msi`
2. 雙擊安裝（若 Defender SmartScreen 提示，選「仍要執行」——未簽名開源安裝包常見）
3. 允許防火牆
4. 從開始功能表／系統匣啟動 uxplay-windows
5. iPhone 與電腦同一網路 → 控制中心 → 螢幕鏡像

也可直接跑 `scripts/install-uxplay-windows.ps1`。

---

## iPhoneMirror（鏡像 + BLE 輔助觸控反控）

上游：[RayrenSX/iPhoneMirror](https://github.com/RayrenSX/iPhoneMirror)（開源、免費；Windows x64）

相對 uxplay-windows：同樣可做 **AirPlay／USB** 畫面鏡像，並額外支援透過 **BLE 週邊 + iPhone「輔助觸控（AssistiveTouch）」** 在電腦上反向操作 iPhone。

### 安裝包（本倉庫轉發）

- Release：[iPhoneMirror v1.8.5-pre4](https://github.com/vyt9nt9pb6-sketch/iphone-win11-mirror/releases/tag/v1.8.5-pre4-iphonemirror)
- 資產：`iPhoneMirror-Setup-v1.8.5-pre4-x64.exe`（官方 Windows x64 安裝程式）
- SHA-256：`83ba6c4ec172f6347fd9b1fbef4771b01e46d7e4de9cb5f0de8080e4dc14ca01`
- 上游原始發布：https://github.com/RayrenSX/iPhoneMirror/releases/tag/v1.8.5-pre4

> 預覽版尚未 Authenticode 簽名；Windows SmartScreen／「未知發行者」屬預期。可先對下載檔「屬性 → 解除封鎖」，或安裝時選「更多資訊 → 仍要執行」。

### 本機安裝路徑（World PC 參考）

- 安裝目錄：`C:\Program Files\iPhoneMirror`（管理員／Inno 預設；若選目前使用者安裝則可能在 `%LOCALAPPDATA%\Programs\iPhoneMirror`）
- 主程式：`C:\Program Files\iPhoneMirror\iPhoneMirror.exe`
- 啟動：開始功能表搜尋「iPhoneMirror」，或直接執行上述 exe
- 可與 `C:\Program Files\uxplay-windows` 並存

### 使用摘要

1. 安裝並啟動 iPhoneMirror
2. **畫面**：同 Wi‑Fi AirPlay 螢幕鏡像，或 USB 連線
3. **BLE 反控／輔助觸控**（可選）：
   - 電腦藍牙需支援 **BLE Peripheral（週邊）** 模式
   - iPhone：`設定 → 輔助使用 → 觸控 → 輔助觸控` 開啟
   - 依 App 內指引配對／連接 HID 滑鼠／鍵盤
   - **限制**：僅單指指標級操作，無法注入多指手勢；依賴系統藍牙能力，非純軟體完整觸控模擬
4. 驅動／USB：可用內建 `iPhoneMirror.Driver.exe` 管理 Apple USB／過濾驅動（見上游說明）

### iPhoneMirror 限制

- DRM 內容（Netflix、Apple TV+ 等）通常不會鏡像
- 預覽版／私有協議：未來 iOS 更新可能需再適配
- 官方目前僅 Windows x64（無 ARM64）
- BLE 反控需要實際可用的 BLE 週邊能力 + AssistiveTouch

---

## 共通限制（鏡像）

- Netflix / Apple TV+ 等 DRM 內容不會鏡像（開源接收端限制）
- 偶爾第一次連上畫面凍結：斷開再連一次即可
- 需與 iPhone 同一區域網路（或 USB／網路共享）

## 其他 GitHub 方案（未採用）

| 專案 | 說明 |
|------|------|
| Chr0mX/UxPlay | Windows GUI 更完整，下載量較少 |
| gbulog/pcairplay | 包一層 PowerShell／安裝器在 uxplay-windows 外 |
| FDH2/UxPlay | 上游引擎（Linux/macOS/Windows 自行編譯） |

## 授權

本倉庫腳本與說明：MIT。安裝包來自上游 uxplay-windows／UxPlay（**GPL-3.0**）與 iPhoneMirror（見上游授權，主要為 **GPL-3.0**）。
