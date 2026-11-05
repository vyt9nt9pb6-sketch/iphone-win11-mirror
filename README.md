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

## 限制

- Netflix / Apple TV+ 等 DRM 內容不會鏡像（開源接收端限制）
- 偶爾第一次連上畫面凍結：斷開再連一次即可
- 需與 iPhone 同一區域網路（或 USB 網路共享）

## 其他 GitHub 方案（未採用）

| 專案 | 說明 |
|------|------|
| Chr0mX/UxPlay | Windows GUI 更完整，下載量較少 |
| gbulog/pcairplay | 包一層 PowerShell / 安裝器在 uxplay-windows 外 |
| FDH2/UxPlay | 上游引擎（Linux/macOS/Windows 自行編譯） |

## 授權

本倉庫腳本與說明：MIT。安裝包來自上游 uxplay-windows / UxPlay，遵循 **GPL-3.0**。
