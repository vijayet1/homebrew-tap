class AzPimCli < Formula
  desc "A utility to list and activate Azure Entra ID Privileged Identity Management roles"
  homepage "https://github.com/vijayet1/az-pim-cli"
  version "1.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vijayet1/az-pim-cli/releases/download/v1.17.0/az-pim-cli-1.17.0-macos-arm64.tar.gz"
      sha256 "df5a60b357d59a2c77982dae1590009f812eaf2bc022e61217d32db7eca3eea1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/vijayet1/az-pim-cli/releases/download/v1.17.0/az-pim-cli-1.17.0-macos-x86_64.tar.gz"
      sha256 "3ca1ead8e1b30dba76160317a04251f831c47fca302fb003b9ab55f274106dea"
    end
  end

  def install
    bin.install "az-pim-cli"
  end

  test do
    system "#{bin}/az-pim-cli", "--help"
  end
end
