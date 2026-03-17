cask "tracebar" do
  version "1.2.3"
  sha256 "9988203ee9b76139334ef0840a8fe46905ae0dba108cc2006c0adcfa5d2930dc"

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
