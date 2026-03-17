cask "ohmyjson" do
  version "0.4.3"
  sha256 "b8de433def4e40e39f5799cbdeab9fc21e6776b034f68fb39a8a8968b96ce6fd"

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
