class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 3 Wry applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.8.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.8.0/tauri-hasgard-0.8.0-aarch64-apple-darwin.tar.gz"
  sha256 "551eeedae50e94356b027bcdd5ba67fde3e2a76f8422bfbbe2c602a07b9ac3bf"

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
