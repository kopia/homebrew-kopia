# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.11.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.11.2/kopia-0.11.2-macOS-x64.tar.gz"
    sha256 "284c30a16e0df1488a15cc3d578c2220c07f3c0c2dcdb51f2657a6abdf481695"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.11.2/kopia-0.11.2-macOS-arm64.tar.gz"
    sha256 "cf03be0caf2a3153bbbd7b0e5f7a43e77deab84d03f21655fa58b3b2e8fff61e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.11.2/kopia-0.11.2-linux-x64.tar.gz"
    sha256 "be5b700454974abfcede25413fdab2312b23da87bafe5035986dca7e52daa928"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.11.2/kopia-0.11.2-linux-arm.tar.gz"
    sha256 "a2754bb81c4def356cfe08678a4575b0449821763e453e87c2d0413ea1c34119"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.11.2/kopia-0.11.2-linux-arm64.tar.gz"
    sha256 "503194f1360dfd810874d3d231fe9a55dd291ff266b9cd308713d4285d03c7f0"
  end

  def install
    bin.install "kopia"
  end
end
