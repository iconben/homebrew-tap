cask "z-image-studio" do
  version "0.2.0"
  sha256 "e8d9eb5e6119b67ab274e54589c527394c6a5b6d9ecf0be6fcfccb1cf9d5f3ad"

  url "https://github.com/iconben/z-image-studio/releases/download/v#{version}/Z-Image-Studio-macOS-arm64-#{version}.dmg"
  name "Z-Image Studio"
  desc "Local AI image generation toolkit (CLI + Web UI)"
  homepage "https://github.com/iconben/z-image-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Z-Image Studio.app"

  zap trash: [
    "~/Library/Application Support/com.z-image-studio.app",
    "~/Library/Preferences/com.z-image-studio.app.plist",
    "~/Library/Saved Application State/com.z-image-studio.app.savedState",
  ]
end
