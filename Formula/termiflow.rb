class Termiflow < Formula
  desc "Terminal-native Mermaid flowchart renderer."
  homepage "https://termiflow.dnvt.me"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.1/termiflow-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "a8ca76b66da00cc1f41cbbf29ee6b94110ec3fcb50dd80ff47c232f6c3aab3b1"
    end
    on_intel do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.1/termiflow-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "90c8a82b656d047918926bbced7a2ef4b83d815199219582277f4a40318539f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.1/termiflow-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5c14aaf65f5dd8ed6459617b63a30fba01e4be8acc513e2fac76c8220bd6399"
    end
    on_intel do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.1/termiflow-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30e9495c7cf7658badc4311f82ff2bfcf229359c1e0dca51e4a96412fe3bcaf6"
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
