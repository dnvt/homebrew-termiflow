class Termiflow < Formula
  desc "Terminal-native Mermaid flowchart renderer."
  homepage "https://termiflow.dnvt.me"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.8/termiflow-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "72547555bed9dc2737f8d82e33fd9e784b5c70b46f89ecca7320024dedce9387"
    end
    on_intel do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.8/termiflow-v0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "d612dbe2096ce5f4935e0cf15807b9460f3fc88f53fb55c8310684784d97f748"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.8/termiflow-v0.2.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2536d30cbee75ff1e8cf215a43b98d5ad99bed9483378b3834eacb9c5a175045"
    end
    on_intel do
      url "https://github.com/dnvt/termiflow/releases/download/v0.2.8/termiflow-v0.2.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed333188fd47ebf66a4817ffbcaacc9fc85e49291f98669eb2b6f542f93e1fc9"
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
