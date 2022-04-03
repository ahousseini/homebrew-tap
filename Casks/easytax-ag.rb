cask "easytax-ag" do
  version "2021,1.2"
  sha256 "86bdf36f9e3b69669e25273b921b770f324f1ac11454b08671233b9cd08e3dc6"

  url "https://msg-easytax.ch/ag/#{version.before_comma}/EasyTax#{version.before_comma}AG_macos_#{version.after_comma.dots_to_underscores}_mitJRE.dmg"
  name "EasyTax AG"
  homepage "https://msg-easytax.ch/"

  installer script: {
    executable: "EasyTax #{version.before_comma} AG Installationsprogramm.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall script: {
    executable: "/Applications/EasyTax/AG#{version.before_comma}/EasyTax #{version.before_comma} AG Deinstallationsprogramm.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  },
            rmdir:  "/Applications/EasyTax"
end
