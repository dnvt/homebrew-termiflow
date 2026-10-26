class Termiflow < Formula
  desc "Terminal-native Mermaid flowchart renderer"
  homepage "https://termiflow.dnvt.me"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.9/termiflow-v0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "9d33332a5e3585d6d3d8d39119eda0c858a8d5326ca7c1d8428af5c2db14b038"
    end
    on_intel do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.9/termiflow-v0.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "7c1209941e8349b2afa519be30a490870a59b6cba6983f482155471903303e26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.9/termiflow-v0.2.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f304e0a0a0fdb4b3f0e73379ebfcbcbd6fd68a814e741cff442bb31ea9c0cfa"
    end
    on_intel do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.9/termiflow-v0.2.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd8d6a62da1b656591788d2834cf94dbcd8272dda22e6dc5e76bec301a33ef33"
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
