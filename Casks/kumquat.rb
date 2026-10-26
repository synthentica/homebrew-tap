cask "kumquat" do
  version "0.1.1"
  sha256 "7328d171f819b88a0121a1f27d0aa95dd4a8cb48f222fb58e9050976272c5cda"

  url "https://github.com/synthentica/kumquat/releases/download/v#{version}/Kumquat.zip"
  name "Kumquat"
  desc "Drag-and-drop file converter with a modifier-key radial menu"
  homepage "https://github.com/synthentica/kumquat"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Kumquat.app"

  uninstall quit: "com.synthentica.kumquat"

  zap trash: [
    "~/Library/Caches/com.synthentica.kumquat",
    "~/Library/HTTPStorages/com.synthentica.kumquat",
    "~/Library/Preferences/com.synthentica.kumquat.plist",
    "~/Library/Saved Application State/com.synthentica.kumquat.savedState",
    "~/Library/WebKit/com.synthentica.kumquat",
  ]
end
