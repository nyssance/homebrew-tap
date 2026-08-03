class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 2 applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.1.2"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.1.2/tauri-hasgard-0.1.2-aarch64-apple-darwin.tar.gz"
    sha256 "dafded49c2e3b0e102cd81e5856b0dee4f8f27814966b3028db3e0d32a7ade6c"
  end

  on_intel do
    url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.1.2/tauri-hasgard-0.1.2-x86_64-apple-darwin.tar.gz"
    sha256 "fd6bc21edcfc075aa06d7aa752130f8c7081de3c3cea9c4e2b8695ff14cf699e"
  end

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
