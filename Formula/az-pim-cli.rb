class AzPimCli < Formula
  desc "A utility to list and activate Azure Entra ID Privileged Identity Management roles"
  homepage "https://github.com/vijayet1/az-pim-cli"
  version "1.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vijayet1/az-pim-cli/releases/download/v1.16.0/az-pim-cli-1.16.0-macos-arm64.tar.gz"
      sha256 "cee01697bd3291e4af92d62612f5dbdb8606b99b5a5267353abc6f16b5db3e31"
    end
    if Hardware::CPU.intel?
      url "https://github.com/vijayet1/az-pim-cli/releases/download/v1.16.0/az-pim-cli-1.16.0-macos-x86_64.tar.gz"
      sha256 "fe24b5a96a88818273e03cde1e2e312c5f0a3cd4a0f7df4346d3c6ef8384f2b1"
    end
  end

  def install
    bin.install "az-pim-cli"
  end

  test do
    system "#{bin}/az-pim-cli", "--help"
  end
end
