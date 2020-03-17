cask 'easytax-ag' do
  version '2019,1.2'
  sha256 'bd9d8f56bcaf7c0ac94a20dfb8914100e3365dba8d2e87e51c7463a9981ca1be'

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
