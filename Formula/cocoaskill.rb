class Cocoaskill < Formula
  include Language::Python::Virtualenv

  desc "Local skill manager for AI agent skills"
  homepage "https://github.com/ivanopcode/cocoaskills"
  url "https://github.com/ivanopcode/cocoaskills/releases/download/v0.1.1/cocoaskill-0.1.1.tar.gz"
  sha256 "ccf1b1c145a0e972b283892f9e930eb489f4f862b9f2b74b9085f77567a2945e"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csk --version")
  end
end
