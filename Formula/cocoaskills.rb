class Cocoaskills < Formula
  include Language::Python::Virtualenv

  desc "Local skill manager for AI agent skills"
  homepage "https://github.com/ivanopcode/cocoaskills"
  url "https://github.com/ivanopcode/cocoaskills/releases/download/v0.21.1/cocoaskills-0.21.1.tar.gz"
  sha256 "2808e6128bddbddda5e5f59c21c67a8f85a4fdbee5766a6eabf9200fd6992e4b"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csk --version")
  end
end
