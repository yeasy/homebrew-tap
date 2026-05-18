cask "ask-desktop" do
  version "1.9.9"
  sha256 "b025e9fc3595b9f752e914d890bf1a35822d5777bca92d0dd243527def6070c7"

  url "https://github.com/yeasy/ask/releases/download/v#{version}/ask-desktop-macos-universal.zip"
  name "ASK Desktop"
  desc "Agent Skills Kit - The Package Manager for Agent Skills (Desktop App)"
  homepage "https://github.com/yeasy/ask"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ask-desktop.app"

  zap trash: [
    "~/.ask",
  ]
end
