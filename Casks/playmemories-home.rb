cask 'playmemories-home' do
  version '3.4.00'
  sha256 'fca410865b2aed641bfbe2bb498d8225d7b651820767ce187e0fe446ca249de7'

  # pmb.update.sony.net/PMH was verified as official when first introduced to the cask
  url "http://pmb.update.sony.net/PMH/74jlw3pwMn/PMHOME_#{version.no_dots}DL.dmg"
  name 'PlayMemories Home'
  homepage 'https://support.d-imaging.sony.co.jp/www/disoft/int/download/playmemories-home/mac/en/'

  pkg 'PMH_INST.pkg'

  uninstall pkgutil:   'com.sony.pkg.PMHInstaller',
            launchctl: [
                         'com.sony.SonyAutoLauncher.agent',
                         'com.sony.WirelessAutoImportLauncher.agent',
                       ]

  zap delete: [
                '/Applications/PMHMac.app',
                '/Applications/Wireless Auto Import.app',
              ]
end
