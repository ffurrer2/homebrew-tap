class Licensed < Formula
  desc "A Ruby gem to cache and verify the licenses of dependencies"
  homepage "https://github.com/github/licensed"
  version "3.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.2/licensed-3.7.2-darwin-x64.tar.gz"
      sha256 "9299c0de28806c309fee00c20899aa4b09767b2e6d628bdfb3aa01f4101bd409"

      def install
        bin.install "licensed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.2/licensed-3.7.2-linux-x64.tar.gz"
      sha256 "ffe7e00af37fa5b759bf79391f0e4ee0b4c062e97d54706f0d4657dd2a429faf"

      def install
        bin.install "licensed"
      end
    end
  end

  test do
    system "#{bin}/licensed version"
  end
end
