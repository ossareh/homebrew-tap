cask "mux" do
  version "0.23.1"

  on_arm do
    sha256 "f1735301d93285fddcfeab81955f603e504b42a286f34467a258e26f5bab276c"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "1fb9edb4e23c000665b89b343d41fbc39d8dc888ea17fd5d48d469120eb98790"
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
