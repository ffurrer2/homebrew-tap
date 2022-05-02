class Licensed < Formula
  desc "A Ruby gem to cache and verify the licenses of dependencies"
  homepage "https://github.com/github/licensed"
  version "3.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.0/licensed-3.7.0-darwin-x64.tar.gz"
      sha256 "2a7452dc11ec19e38c5f012d99d9a08a94ca4ffa12ef6d1a44324f390db7cbab"

      def install
        bin.install "licensed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.0/licensed-3.7.0-linux-x64.tar.gz"
      sha256 "ad13bd7428a03355ab568108e33df8cc54ff24eb4bf2b70e3cf4196781e4bcbe"

      def install
        bin.install "licensed"
      end
    end
  end

  test do
    system "#{bin}/licensed version"
  end
end
