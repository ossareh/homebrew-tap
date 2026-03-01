cask "mux" do
  version "0.19.0"

  on_arm do
    sha256 "6c2a5ce0d3825aaed190309a2e0e3c1cdc3dc100343b712561950f53430bbf33"
    url "https://github.com/coder/mux/releases/download/v#{version}/mux-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "db103f9981c80d27a2c5e4bf5170f261d091511bff8c78475d4d5ae54e2196a7"
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
