cask "tracebar" do
  version "1.2.2"
  sha256 "cdde348d4f795176a9605f2d6453507cd1e1a9d51d3fcca9695a78d4ca35670f"

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
