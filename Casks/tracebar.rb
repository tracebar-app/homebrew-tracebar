cask "tracebar" do
  version "1.2.4"
  sha256 "66ad5ad7408062b93d219e049864dcb462e68a635ce2e1c99d45fbe1ba252a98"

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
