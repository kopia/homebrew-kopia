# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.11.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.11.3/kopia-0.11.3-macOS-x64.tar.gz"
    sha256 "8f8ea26a814f4f38f6c3e5198f149e4dba0470bd974f725e2a251fb7e5793ebf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.11.3/kopia-0.11.3-macOS-arm64.tar.gz"
    sha256 "796133ddd74f4efe2b26f0a6e39e13b253a55f27213084eaeef7379d9a2acd55"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.11.3/kopia-0.11.3-linux-x64.tar.gz"
    sha256 "ecba59378edb049f22ee53634e70344985d7b46f9951c96b217e140a385e52a8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.11.3/kopia-0.11.3-linux-arm.tar.gz"
    sha256 "7e2438dc40550a34fb20c113d92ac75750b8e89faf007ed854317f3b7a23ec8a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.11.3/kopia-0.11.3-linux-arm64.tar.gz"
    sha256 "309a10b410db355947a54de6d9bc33951bf01ec987839d0d25f975e6e370a92b"
  end

  def install
    bin.install "kopia"
  end
end
