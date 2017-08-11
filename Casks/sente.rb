cask 'sente' do
  if MacOS.version <= :snow_leopard
    version '6.6.5.11312'
    sha256 '0a848a2eada32651707e2deec991f06cc068a4c78b23447d38453853d434c2c8'
  elsif MacOS.version <= :yosemite
    version '6.7.8.11870'
    sha256 'f75bb32db9f0dbfa3d5dbf7639371b5892f6071e740de38e768a203899bb4b5b'
  else
    version '6.7.11.11931'
    sha256 '578b05e715203694f53006b54bd9dd72386d7a4670629dea5cc59ab44f8a0a24'
  end

  url "https://www.thirdstreetsoftware.com/downloads/Sente-#{version}.zip"
  appcast 'https://www.thirdstreetsoftware.com/rss/Sente65.xml',
          checkpoint: '449878fb52ee12b982f8e8c44728183a794bf396274fd36b89194e5f89c3b35f'
  name 'Sente'
  homepage 'https://www.thirdstreetsoftware.com/'

  app "Sente #{version.major}.app"
end
