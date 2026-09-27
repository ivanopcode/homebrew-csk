class Cocoaskills < Formula
  include Language::Python::Virtualenv

  desc "Local skill manager for AI agent skills"
  homepage "https://github.com/ivanopcode/cocoaskills"
  url "https://github.com/ivanopcode/cocoaskills/releases/download/v0.18.0/cocoaskills-0.18.0.tar.gz"
  sha256 "649aa2c5e966c1be0d5dff0b7802b06b0277d371ef3d9a21512503eb5b5ebfcd"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csk --version")
  end
end
