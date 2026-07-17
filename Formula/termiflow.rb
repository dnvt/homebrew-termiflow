class Termiflow < Formula
  desc "Terminal-native Mermaid flowchart renderer — jq for diagrams"
  homepage "https://github.com/dnvt/termiflow"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dnvt/termiflow/releases/download/v#{version}/termiflow-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9daf3b68dd165397359ebc0acf22ac59a882ab35f0b340dcc8a863cd106973ae"
    end
    on_intel do
      url "https://github.com/dnvt/termiflow/releases/download/v#{version}/termiflow-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b7e34728f741c55d5f48171804de435389a34394aa5cca5aced348d50f47806b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dnvt/termiflow/releases/download/v#{version}/termiflow-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "659f9a37ebc146138c80909bda62eb888d0434bb9a9f12895c1000df7485f2e4"
    end
    on_intel do
      url "https://github.com/dnvt/termiflow/releases/download/v#{version}/termiflow-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09b89f97ed5d9c4d9165d2c26f155014ae7e74ab6061acf5a4edbeb87d7483a4"
    end
  end

  def install
    bin.install "termiflow"
    bin.install "tw"
  end

  test do
    assert_match "termiflow", shell_output("#{bin}/tw --version")
  end
end
