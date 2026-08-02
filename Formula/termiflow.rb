class Termiflow < Formula
  desc "Terminal-native Mermaid flowchart renderer — jq for diagrams"
  homepage "https://github.com/dnvt/termiflow"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dnvt/termiflow/releases/download/v#{version}/termiflow-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d282fb2ea5a7dda3b8e78cdfa1ab9404e9f06900daf1ce496780c0650a47061c"
    end
    on_intel do
      url "https://github.com/dnvt/termiflow/releases/download/v#{version}/termiflow-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2e9986552574fece759940e88370abfa4f41389a8503bc2f091610ebd9c5b0e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dnvt/termiflow/releases/download/v#{version}/termiflow-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3bf164e200264efb9641f821819f73f448af809b38c6c228bb137c060844c6a"
    end
    on_intel do
      url "https://github.com/dnvt/termiflow/releases/download/v#{version}/termiflow-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef3d431dd8a81cf804fbf5ec0a44609bdabf19507214dc5344a719f2bb2e98f8"
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
