cask "wheelwizard" do
  version "2.4.10"
  sha256 arm:   "REPLACE_ME_ARM64",
         intel: "REPLACE_ME_INTEL"

  on_arm do
    url "https://github.com/TeamWheelWizard/WheelWizard/releases/download/v#{version}/WheelWizard-macOSarm64.zip"
  end
  on_intel do
    url "https://github.com/TeamWheelWizard/WheelWizard/releases/download/v#{version}/WheelWizard-macOSintel.zip"
  end

  name "Wheel Wizard"
  desc "Mario Kart Mod Manager & Retro Rewind Auto Updater"
  homepage "https://github.com/TeamWheelWizard/WheelWizard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "WheelWizard.app"

  zap trash: [
    "~/Library/Application Support/WheelWizard",
    "~/Library/Preferences/ga.gabema.WheelWizard.plist",
    "~/Library/Saved Application State/ga.gabema.WheelWizard.savedState",
  ]
end
