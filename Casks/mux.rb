cask "mux" do
  version "0.25.0"

  on_arm do
    sha256 "3809d9e8e4ff886f55e5767f5774362d2f03924ea73c8b34b4f3ebe53673b6ba"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "74250f4a7c95cf13310cbb1a6b4fb50904792cd3cb784357095f27d2c86a74f9"
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
