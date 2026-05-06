cask "mux" do
  version "0.24.0"

  on_arm do
    sha256 "430464ff58be26276ec28192c3428e0845fe566d11ae773c8f05af7390927def"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "1e8882d51cce9a57b86868930124ab260e8e2e0b7e03e80c60b59ac51fa83cca"
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
