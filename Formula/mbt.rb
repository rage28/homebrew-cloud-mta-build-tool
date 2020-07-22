class Mbt < Formula
  desc "Multi-Target Application (MTA) build tool for Cloud Applications"
  homepage "https://github.com/SAP/cloud-mta-build-tool"
  version '1.0.15'

  if OS.mac?
    url "https://github.com/SAP/cloud-mta-build-tool/releases/download/v#{version}/cloud-mta-build-tool_#{version}_Darwin_amd64.tar.gz"
    sha256 'c802b006546e9821d092493b5e0e7040469d852e41da9096d4afea9baddeba22'
  elsif OS.linux?
    url "https://github.com/SAP/cloud-mta-build-tool/releases/download/v#{version}/cloud-mta-build-tool_#{version}_Linux_amd64.tar.gz"
    sha256 'b852d8884bd21b1b505b95b6d28ecbd3668e136d07f852a7efd76c9ab371756f'
  end

  def install
    bin.install "mbt"
    doc.install "LICENSE"
    doc.install "README.md"
  end

  test do
    system "#{bin}/mbt --help"
  end
end
