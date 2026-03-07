cask "mux" do
  version "0.20.1"

  on_arm do
    sha256 "32e59c0c7272ab6f8e05a716940d0a6ff75ffa193b6ac8f4bcb7c22df7e91fd6"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "0d96075d79a9fe2616812e81a62e3cab6ad9c41bf1435440cdbf9cf02508dbc2"
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
