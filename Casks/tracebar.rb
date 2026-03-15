cask "tracebar" do
  version "1.2.1"
  sha256 "3ab1870bd83d689ab18a70debeb124b839db5199261e9673e0004bc98d49852a"

  url "https://github.com/tracebar-app/tracebar/releases/download/#{version}/TraceBar-#{version}.dmg"
  name "TraceBar"
  desc "Continuous graphical traceroute monitoring in your menubar"
  homepage "https://github.com/tracebar-app/tracebar"

  depends_on macos: ">= :sonoma"

  app "TraceBar.app"

  zap trash: [
    "~/Library/Preferences/org.evilscheme.TraceBar.plist",
  ]
end
