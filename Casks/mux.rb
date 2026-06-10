cask "mux" do
  version "0.27.0"

  on_arm do
    sha256 "5eb70ef59f8e59cf4bdf6d8ff9b1b00aa32d3949ca2ddce21e157306bc764e47"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "2b167f2231c26f8498770cfa6cf22b49ebd82bf4833a8ecba77f09d1cc59fe13"
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
