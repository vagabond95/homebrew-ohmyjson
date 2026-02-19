cask "ohmyjson" do
  version "0.3.0"
  sha256 "69316bf972c54253304b5385cb7a8f9c674c77cf4470684117e7e64181eb9ac1"

  url "https://github.com/vagabond95/OhMyJson/releases/download/v#{version}/OhMyJson_v#{version}.dmg"
  name "OhMyJson"
  desc "macOS menu bar utility for instant JSON viewing and formatting"
  homepage "https://github.com/vagabond95/OhMyJson"

  depends_on macos: ">= :sonoma"

  app "OhMyJson.app"

  zap trash: [
    "~/Library/Preferences/vagabond95.OhMyJson.plist",
  ]
end
