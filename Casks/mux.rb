cask "mux" do
  version "0.23.0"

  on_arm do
    sha256 "2ee91c968970c75b1c0c5404c1d84b362dad251c2661bf1f701290d190e142d2"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "3f66ea8898f10935aea642ebd5fb3097a99f6ea13193ab6c844d64b2750bd2b0"
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
