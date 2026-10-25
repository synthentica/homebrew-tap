cask "kumquat" do
  version "0.1.0"
  sha256 "6757d58afc7b13b5a5c94951f4225d196f5302684e5127b666d01640f92ec092"

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
