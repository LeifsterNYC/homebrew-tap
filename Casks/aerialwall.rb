cask "aerialwall" do
  version :latest
  sha256 :no_check

  url "https://github.com/LeifsterNYC/AerialWall/releases/latest/download/AerialWall.zip"
  name "AerialWall"
  desc "Apple's aerial screen savers as live desktop wallpapers"
  homepage "https://github.com/LeifsterNYC/AerialWall"

  depends_on macos: ">= :sonoma"

  app "AerialWall.app"

  zap trash: [
    "~/Library/Caches/com.leifrogers.AerialWall",
    "~/Library/Preferences/com.leifrogers.AerialWall.plist",
  ]
end
