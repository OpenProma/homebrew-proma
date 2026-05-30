cask "proma" do
  arch arm: "-arm64", intel: ""

  version "0.10.10"
  sha256 arm:   "f8d013aa8eae1bce665c7dab7e57828461c83a4ac6ef183a79843a200219e50b",
         intel: "bab6248af7fa8f827fe0d7b0eea025498256ecbf047950d2e36c3a0c59965140"

  url "https://github.com/ErlichLiu/Proma/releases/download/v#{version}/Proma-#{version}#{arch}.dmg",
      verified: "github.com/ErlichLiu/Proma/"
  name "Proma"
  desc "AI coding assistant desktop app"
  homepage "https://github.com/ErlichLiu/Proma"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Proma.app"

  zap trash: [
    "~/Library/Application Support/Proma",
    "~/Library/Caches/Proma",
    "~/Library/Logs/Proma",
    "~/Library/Preferences/com.proma*.plist",
    "~/Library/Saved Application State/com.proma*.savedState",
  ]
end
