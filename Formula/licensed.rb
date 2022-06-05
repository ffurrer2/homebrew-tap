class Licensed < Formula
  desc "A Ruby gem to cache and verify the licenses of dependencies"
  homepage "https://github.com/github/licensed"
  version "3.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.1/licensed-3.7.1-darwin-x64.tar.gz"
      sha256 "1dc1ec04641634a1f5c166885c7f99d4457e3eb5edb64c9abd802115cfd43ae3"

      def install
        bin.install "licensed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.1/licensed-3.7.1-linux-x64.tar.gz"
      sha256 "c604b5a57d0989ea30de72842ce906d4c66dec7c6fa20bca6b48665ad2917228"

      def install
        bin.install "licensed"
      end
    end
  end

  test do
    system "#{bin}/licensed version"
  end
end
