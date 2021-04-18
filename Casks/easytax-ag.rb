cask "easytax-ag" do
  version "2020,1.3"
  sha256 "2cfad8e54d009ad4f5eff85b8d63b18b1ff78271a0ff7ee74c466544d32eb59e"

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
