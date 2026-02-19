cask "ohmyjson" do
  version "0.2.1"
  sha256 "0099f33f5b06ac20a7706ee0668abb1c7075f6321696c6340f947234d37d464c"

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
