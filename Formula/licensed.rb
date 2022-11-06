class Licensed < Formula
  desc "A Ruby gem to cache and verify the licenses of dependencies"
  homepage "https://github.com/github/licensed"
  version "3.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.8.0/licensed-3.8.0-darwin-x64.tar.gz"
      sha256 "cddd6e277abab7dabfd56b93999b45fc70e4c7b06bd32619a506569552297f02"

      def install
        bin.install "licensed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.8.0/licensed-3.8.0-linux-x64.tar.gz"
      sha256 "9bb80cd587a2d2bf0c69c919e11f8261c74be5e9887e90b2fd561469940e1460"

      def install
        bin.install "licensed"
      end
    end
  end

  test do
    system "#{bin}/licensed version"
  end
end
