cask "easytax-ag" do
  version "2023,1.2"
  sha256 "198d83d4c27be38c9ddc480c2d8eb516655c3cde45217d3381e2ee36c01e8ea9"

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
