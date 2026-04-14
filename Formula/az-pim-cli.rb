class AzPimCli < Formula
  desc "A utility to list and activate Azure Entra ID Privileged Identity Management roles"
  homepage "https://github.com/vijayet1/az-pim-cli"
  version "0.0.0+upstream.18a1dbf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vijayet1/az-pim-cli/releases/download/autoupdate-18a1dbf/az-pim-cli-0.0.0+upstream.18a1dbf-darwin-arm64.tar.gz"
      sha256 "39a88f267c6ce9ef951e5c35244179ab2ea11be1283dc2673c1dfbc58ff5052a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/vijayet1/az-pim-cli/releases/download/autoupdate-18a1dbf/az-pim-cli-0.0.0+upstream.18a1dbf-darwin-amd64.tar.gz"
      sha256 "68eeaf7964428243f6a569fad22a598f8a140119459d2d17757e0b60eacd5864"
    end
  end

  def install
    bin.install "az-pim-cli"
  end

  test do
    system "#{bin}/az-pim-cli", "--help"
  end
end
