class Impresiv < Formula
  desc "Run Impresiv workflow commands on your computer"
  homepage "https://www.impresivai.com"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/dewnan98/homebrew-impresiv/releases/download/v0.1.2/impresiv-darwin-arm64.tar.gz"
      sha256 "1f5a7f550c8bc0d361a77540a44e769087c1fc05b234ccf4027af9127083be42"
    end
    on_intel do
      url "https://github.com/dewnan98/homebrew-impresiv/releases/download/v0.1.2/impresiv-darwin-x64.tar.gz"
      sha256 "f3b8a1c6ba33357b91a1a12cc07ec2bd84c9c6415fa2cba7f177da76b8039d4a"
    end
  end

  def install
    bin.install "impresiv"
  end

  test do
    assert_match "Impresiv CLI", shell_output("#{bin}/impresiv help")
  end
end
