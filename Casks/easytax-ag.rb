cask 'easytax-ag' do
  version '2019,1.3'
  sha256 '29b435d67dc04140cd427ae10f33a3267d6f71bda23f0c4b16730dbc9875af26'

  url "https://msg-easytax.ch/ag/#{version.before_comma}/EasyTax#{version.before_comma}AG_macos_#{version.after_comma.dots_to_underscores}_mitJRE.dmg"
  name 'EasyTax AG'
  homepage 'https://msg-easytax.ch/'

  installer script: {
                      executable: "EasyTax #{version.before_comma} AG Installationsprogramm.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }

  uninstall script: {
                      executable: "/Applications/EasyTax/AG#{version.before_comma}/EasyTax #{version.before_comma} AG Deinstallationsprogramm.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    },
            rmdir:  '/Applications/EasyTax'
end
