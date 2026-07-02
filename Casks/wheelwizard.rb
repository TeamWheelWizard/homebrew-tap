cask "wheelwizard" do
  version "4"
  sha256 arm:   "35a7cd16e7906f4b9760b851875591a691dc431f370f4ada76100754a528fe17",
         intel: "b7ccea562cd094a794a0966a54b5fe8eb4884605a9f1e4761ea08a0fa23ee3e7"

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
