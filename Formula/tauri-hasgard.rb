class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 2 applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.5.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.5.0/tauri-hasgard-0.5.0-aarch64-apple-darwin.tar.gz"
  sha256 "7463cabad491cfc658b2829c0ab6540da2a1fb804159fc3a8720871362003bf1"

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
