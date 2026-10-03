cask "simbridge" do
  version "1.0.0"
  sha256 "fef4291eb951b2a5214308a33d94d5beb1c088883f648d027c1628dc22147937"

  url "https://github.com/andreas-maser/SimBridge/releases/download/v#{version}/SimBridge.zip"
  name "SimBridge"
  desc "Mount iOS Simulator app files as locations in the macOS Finder"
  homepage "https://github.com/andreas-maser/SimBridge"

  depends_on macos: :sonoma

  # Das Archiv packt die App in einen Ordner "SimBridge/",
  # darin liegen SimBridge.app und LICENSE.txt.
  app "SimBridge/SimBridge.app"

  zap trash: [
    "~/Library/Group Containers/group.de.andreasmaser.SimBridge",
  ]
end
