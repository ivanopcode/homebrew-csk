class Cocoaskill < Formula
  include Language::Python::Virtualenv

  desc "Local skill manager for AI agent skills"
  homepage "https://github.com/ivanopcode/cocoaskills"
  url "https://github.com/ivanopcode/cocoaskills/releases/download/v0.1.0/cocoaskill-0.1.0.tar.gz"
  sha256 "77a2edb75dadb4a6e57a9082965a5b20232e50eb39e6209a10a62e1a2e9fdb7b"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csk --version")
  end
end
