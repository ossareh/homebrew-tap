cask "mux" do
  version "0.26.1"

  on_arm do
    sha256 "be4b816e4ac3b3f52371164abf1bf5a06d50ff662024b8a773f581c9a6a4181b"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "e0b4905707df75f9878ee827d0abe051391da9b7350354f82c1b185237b6ca85"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-x64.dmg"
  end

  name "Coder Mux"
  desc "Coder multiplexer"
  homepage "https://github.com/coder/mux"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mux.app"
end
