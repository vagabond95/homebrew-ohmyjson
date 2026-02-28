cask "ohmyjson" do
  version "0.4.0"
  sha256 "2cedb0997685da24c6d01c96802c341b63c440781cc113150b16ae2a5390da56"

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
