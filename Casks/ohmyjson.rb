cask "ohmyjson" do
  version "0.4.1"
  sha256 "917f3aa78717612b828d2af470b86a1d7be56196fe37255913dc80e25c5c16cd"

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
