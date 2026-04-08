cask "tracebar" do
  version "1.2.4"
  sha256 "4c5a6f0286cac310263e5ec741dee909b4037dfbb25602c50082aa53eea51425"

  url "https://github.com/tracebar-app/tracebar/releases/download/#{version}/TraceBar-#{version}.dmg"
  name "TraceBar"
  desc "Continuous graphical traceroute monitoring in your menubar"
  homepage "https://tracebar.app/"

  depends_on macos: ">= :sonoma"

  app "TraceBar.app"

  zap trash: [
    "~/Library/Preferences/org.evilscheme.TraceBar.plist",
  ]
end
