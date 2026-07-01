cask "wheelwizard" do
  version "2.4.10"
  sha256 arm:   "PLACEHOLDER_SHA256_ARM64",
         intel: "PLACEHOLDER_SHA256_INTEL"

  url "https://github.com/TeamWheelWizard/WheelWizard/releases/download/v#{version}/WheelWizard-macOS#{arch == :arm64 ? "arm64" : "intel"}.zip"
  name "Wheel Wizard"
  desc "Mario Kart Mod Manager & Retro Rewind Auto Updater"
  homepage "https://github.com/TeamWheelWizard/WheelWizard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "WheelWizard.app"

  zap trash: [
    "~/Library/Application Support/WheelWizard",
    "~/Library/Preferences/ga.gabema.WheelWizard.plist",
    "~/Library/Saved Application State/ga.gabema.WheelWizard.savedState",
  ]
end
