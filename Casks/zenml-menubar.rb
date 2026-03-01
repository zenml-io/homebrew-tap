cask "zenml-menubar" do
  version "0.2.0"
  sha256 "1b90afde5f76c6b07b8a2b218dd3183e4f735db5460763cee8607ac6b228cb20"

  url "https://github.com/zenml-io/menubar-zenml/releases/download/v#{version}/ZenMLMenuBar-v#{version}.zip"
  name "ZenML Menu Bar"
  desc "macOS menu bar app for monitoring ZenML pipeline runs"
  homepage "https://github.com/zenml-io/menubar-zenml"

  depends_on macos: ">= :sonoma"

  app "ZenML Menu Bar.app"

  caveats <<~EOS
    This release may require right-click → Open on first launch
    until full notarization is in place.
  EOS

  zap trash: [
    "~/Library/Preferences/io.zenml.menubar.plist",
  ]
end
