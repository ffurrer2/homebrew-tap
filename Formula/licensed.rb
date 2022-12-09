class Licensed < Formula
  desc "A Ruby gem to cache and verify the licenses of dependencies"
  homepage "https://github.com/github/licensed"
  version "3.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/#{version}/licensed-#{version}-darwin-x64.tar.gz"
      sha256 "fdf16ff6280351daa66896c6b7f477e8a057694be788c84e8b7dede02e57de0d"

      def install
        bin.install "licensed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/#{version}/licensed-#{version}-linux-x64.tar.gz"
      sha256 "3a0bd5b8345a435397b38008d92bbb8b4ab1a673afec68a9f81399c9542ac7a8"

      def install
        bin.install "licensed"
      end
    end
  end

  test do
    system "#{bin}/licensed version"
  end
end
