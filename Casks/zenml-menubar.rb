cask "zenml-menubar" do
  version "0.1.0"
  sha256 :no_check # TODO: replace with actual sha256 once first release is published

  url "https://github.com/zenml-io/menubar-zenml/releases/download/v#{version}/ZenMLMenuBar-v#{version}.zip"
  name "ZenML Menu Bar"
  desc "macOS menu bar app for monitoring ZenML pipeline runs"
  homepage "https://github.com/zenml-io/menubar-zenml"

  depends_on macos: ">= :sonoma"

  app "ZenML Menu Bar.app"

  zap trash: [
    "~/Library/Preferences/io.zenml.ZenMLMenuBar.plist",
  ]
end
