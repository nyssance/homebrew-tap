class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 2 applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.4.1"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.4.1/tauri-hasgard-0.4.1-aarch64-apple-darwin.tar.gz"
  sha256 "737de16b5f471208cde8886a15fced26a5d36b6634e06497f0e83946d5b2ff66"

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
