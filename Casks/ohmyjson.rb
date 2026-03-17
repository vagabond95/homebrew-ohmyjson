cask "ohmyjson" do
  version "0.4.2"
  sha256 "e68c3f7a0d1f6a416436da4c03646bbb4a7523b08f9ccdb020821a9f680f235f"

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
