cask "tracebar" do
  version "1.2.5"
  sha256 "20d6bdfb524c303101775e979e37dcf5ab8b6d0ff1ebb57c8e841b2be374a391"

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
