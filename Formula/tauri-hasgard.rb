class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 3 Wry applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.8.2"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.8.2/tauri-hasgard-0.8.2-aarch64-apple-darwin.tar.gz"
  sha256 "7c5e582d9d6e9a1c132b7f587953ab44ac8e50ad080dd25c696375d1c61133b4"

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
