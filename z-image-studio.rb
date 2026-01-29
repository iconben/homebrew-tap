cask "z-image-studio" do
  version "0.0.0-dev-b23ce89"
  sha256 "5a0e6d0ec093005e54c977b084c80d3e50a1b450b71c747ee5aaa83edf5d2daf"

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
