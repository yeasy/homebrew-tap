cask "ask-desktop" do
  version "1.3.0"
  sha256 :no_check

  url "https://github.com/yeasy/ask/releases/download/v#{version}/ask-desktop-darwin-amd64.zip"
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
