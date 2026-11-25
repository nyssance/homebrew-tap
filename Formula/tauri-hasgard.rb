class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 3 Wry applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.8.4"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.8.4/tauri-hasgard-0.8.4-aarch64-apple-darwin.tar.gz"
  sha256 "7ca05295e9d5855951e2c8b26839eeffa0933b5600002c62236355f01d5f7033"

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
