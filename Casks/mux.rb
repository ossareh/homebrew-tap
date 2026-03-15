cask "mux" do
  version "0.21.0"

  on_arm do
    sha256 "f3565e0cc3d21b15ed937810067bc53e1a42e89c505f1235a36165b32bc956de"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "1ea60c68aa610c874921e981921d82f2fe28560090df7e630dcd07844485402f"
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
