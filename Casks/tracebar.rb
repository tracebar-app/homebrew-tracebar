cask "tracebar" do
  version "1.2.0"
  sha256 "29d762786dff92c6720568e11ecf3cb65887deddf42ccf2c993980d8522d33d5"

  url "https://github.com/evilscheme/tracebar/releases/download/#{version}/TraceBar-#{version}.dmg"
  name "TraceBar"
  desc "Continuous graphical traceroute monitoring in your menubar"
  homepage "https://github.com/evilscheme/tracebar"

  depends_on macos: ">= :sonoma"

  app "TraceBar.app"

  zap trash: [
    "~/Library/Preferences/org.evilscheme.TraceBar.plist",
  ]
end
