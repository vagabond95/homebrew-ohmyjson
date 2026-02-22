cask "ohmyjson" do
  version "0.3.2"
  sha256 "3af33f09ce70df2b55519830926d6dbafedb35d1a8269d266ef10ada3e0f6edf"

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
