class Mbt < Formula
  desc "Multi-Target Application (MTA) build tool for Cloud Applications"
  homepage "https://github.com/SAP/cloud-mta-build-tool"
  version '1.0.15'

  if OS.mac?
    url "https://github.com/SAP/cloud-mta-build-tool/releases/download/v#{version}/cloud-mta-build-tool_#{version}_Darwin_amd64.tar.gz"
    sha256 'd13256fa09a4e12b4d17ead49a79883d96a8542825e9268adf7b587bd2889ae9'
  elsif OS.linux?
    url "https://github.com/SAP/cloud-mta-build-tool/releases/download/v#{version}/cloud-mta-build-tool_#{version}_Linux_amd64.tar.gz"
    sha256 'c316f50c7d6e70f6ec59cfa6aa0363caa1220fc7d4c92a34187047e93c444791'
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
