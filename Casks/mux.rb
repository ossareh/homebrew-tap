cask "mux" do
  version "0.22.0"

  on_arm do
    sha256 "b722033408acbbe88ab2458975c35269fccea13b6bccdaee5c5f75ee24e2c178"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "eaf679f8c47edde0f43b2d4641b444f16b443f038ece6b05291e94af91b945dd"
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
