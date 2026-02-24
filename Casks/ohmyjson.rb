cask "ohmyjson" do
  version "0.3.5"
  sha256 "930400f12fae77fa3f6fc65330aa76eb9695d64fb7662976e24cf0b5063f8d6d"

  url "https://github.com/vagabond95/OhMyJson/releases/download/v#{version}/OhMyJson_v#{version}.dmg"
  name "OhMyJson"
  desc "macOS menu bar utility for instant JSON viewing and formatting"
  homepage "https://github.com/vagabond95/OhMyJson"

  depends_on macos: ">= :sonoma"

  app "OhMyJson.app"

  postflight do
    system "open", "#{appdir}/OhMyJson.app"
  end

  zap trash: [
    "~/Library/Preferences/vagabond95.OhMyJson.plist",
  ]
end
