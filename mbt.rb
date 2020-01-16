require 'formula'

class Mbt < Formula
  homepage 'https://github.com/SAP/cloud-mta-build-tool'
  version '1.0.7'

  if OS.mac?
    url 'https://github.com/SAP/cloud-mta-build-tool/releases/download/v1.0.7/cloud-mta-build-tool_1.0.7_Darwin_amd64.tar.gz'
    sha256 'aa2d51a0180c6ef00fe72aec644775d1b65cae9c73f74355b86c1f05f36b11d3'
  elsif OS.linux?
    url 'https://github.com/SAP/cloud-mta-build-tool/releases/download/v1.0.7/cloud-mta-build-tool_1.0.7_Linux_amd64.tar.gz'
    sha256 '6feb60a67973134afeb3b320e9c06d925ea076972def0a8aa6d201f4e7d24847'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'mbt'
    doc.install 'LICENSE'
    doc.install 'README.md'
  end

  test do
    system "#{bin}/mbt"
  end
end