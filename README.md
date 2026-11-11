# iphone-win11-mirror

免費把 iPhone 投屏到 Windows 11（不用愛思助手、不用付費軟體）。

本倉庫同時提供兩套工具的 Windows 安裝資產與說明：

| 工具 | 用途 | 本倉庫 Release |
|------|------|----------------|
| **uxplay-windows** | AirPlay 螢幕鏡像（輕量） | [v2.0.0.1736](https://github.com/vyt9nt9pb6-sketch/iphone-win11-mirror/releases/tag/v2.0.0.1736) |
| **iPhoneMirror** | 鏡像 + BLE／輔助觸控反控 | [v1.8.3](https://github.com/vyt9nt9pb6-sketch/iphone-win11-mirror/releases/tag/v1.8.3-iphonemirror) |

兩者可並存。

---

## uxplay-windows

[leapbtw/uxplay-windows](https://github.com/leapbtw/uxplay-windows)

- 開源、免費
- Qt6 圖形介面 + 系統匣
- 不必再裝 Apple Bonjour Print Services
- 同 Wi‑Fi：iPhone「控制中心 → 螢幕鏡像」選電腦即可

### 安裝

1. 到本倉庫 [Releases](https://github.com/vyt9nt9pb6-sketch/iphone-win11-mirror/releases) 下載 `uxplaywindows-installer.msi`
2. 雙擊安裝
3. 允許防火牆
4. 從開始功能表啟動
5. iPhone 與電腦同一網路 → 控制中心 → 螢幕鏡像

---

## iPhoneMirror

上游：[RayrenSX/iPhoneMirror](https://github.com/RayrenSX/iPhoneMirror)

支援 AirPlay／USB 畫面鏡像，並額外支援透過 BLE 週邊 + iPhone「輔助觸控」在電腦上反向操作 iPhone。

### 安裝

從 Releases 下載安裝程式安裝即可。

---

## 共通限制

- Netflix / Apple TV+ 等 DRM 內容不會鏡像
- 需與 iPhone 同一區域網路（或 USB）

## 授權

本倉庫腳本與說明：MIT。安裝包來自上游專案。
