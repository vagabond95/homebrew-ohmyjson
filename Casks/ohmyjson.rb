cask "ohmyjson" do
  version "0.3.1"
  sha256 "4eb8dd820709fc4890997ac41b45110ac9999b83e910f62ee732a4dd29e71a99"

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
