class Disscli < Formula
  include Language::Python::Virtualenv

  desc "A Discord CLI tool for sending messages via webhooks"
  homepage "https://github.com/Trevogre/discordcli"
  url "https://github.com/Trevogre/discordcli/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "1efb65f43a6d072cc379c425761b8c8500469ef7c9cf707214b45b05933a3c38"
  license "MIT"

  depends_on "python@3.13"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "1efb65f43a6d072cc379c425761b8c8500469ef7c9cf707214b45b05933a3c38"
  end

  def install
    virtualenv_install_with_resources using: "python@3.13"
  end

  test do
    system bin/"diss", "--help"
  end
end 