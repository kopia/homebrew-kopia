class Kopia < Formula
  desc "Fast and secure Open Source backup"
  homepage "https://kopia.io"
  url "https://github.com/kopia/kopia/releases/download/v0.3.0-pre4/kopia-0.3.0-pre4-macOS-x64.tar.gz"
  version "v0.3.0-pre4"
  sha256 "003b6cd86e49bc405ff9e873f150b240fe90995b047a7ac923b9a179a20605e0"

  def install
    bin.install "kopia"
  end
end
