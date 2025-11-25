# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.22.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.22.1/kopia-0.22.1-macOS-x64.tar.gz"
    sha256 "52a5db8414f37dc73d51b4cbd1da14caf1570c7cf44b8f074ecbceaf9ae1dd91"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.22.1/kopia-0.22.1-macOS-arm64.tar.gz"
    sha256 "a99376b95f2f54c6541e03bf868cbfb578c4e8f97b60a0f690f9f1ce8e4bade5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.22.1/kopia-0.22.1-linux-x64.tar.gz"
    sha256 "7e70908d6577063426a46b060493c20c72abd8a144555b5b32796efd1c6134bb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.22.1/kopia-0.22.1-linux-arm.tar.gz"
    sha256 "fd4edc4457e13070fdb207945d7b51344d98a0603dca0b09d646cf9bad96f553"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.22.1/kopia-0.22.1-linux-arm64.tar.gz"
    sha256 "425055a3078d90ff252c065932bdba8e52df15236423b5109254b0ceca00e7ee"
  end

  def install
    bin.install "kopia"
  end
end
