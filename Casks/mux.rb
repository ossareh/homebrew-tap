cask "mux" do
  version "0.20.0"

  on_arm do
    sha256 "a0a786074fb6f4854dbd4e47e5cf2317c141ad55dd2562ba7e3280915e3f1485"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "fc0b51774c496dcfdd3e4c1a3c74bf4aab8fd4f77bc8eaefbb752fdcd1c7a78a"
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
