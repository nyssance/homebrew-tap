class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 3 Wry applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.7.3"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.7.3/tauri-hasgard-0.7.3-aarch64-apple-darwin.tar.gz"
  sha256 "58234f552d0f4f4e1eee4c90e6f9245327c80b7238e6499428ef98267605f9d4"

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
