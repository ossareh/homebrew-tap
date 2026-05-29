cask "mux" do
  version "0.26.0"

  on_arm do
    sha256 "04f604db375e29c035b39edba54c4b5a97708932a03011a02f0f45cae7135bd8"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "7fa3d016d5ea347c5019b1a3a05dc51aefaa3dfb0a6beca093d40386e5520f8f"
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
