cask "mux" do
  version "0.23.2"

  on_arm do
    sha256 "4b5950cb5267ed83fdc68a95a4f6ce9e49dc8d34994b747043cff53470bdbc10"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "fb0cbc8b1d827525efbb414b5f95dadec54b48066012befa10d7cded63ce8083"
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
