class Zouxian < Formula
  desc "Permanent Apple Intelligence + Xcode Predictive Code Completion for Chinese-market Mac computers"
  homepage "https://github.com/CatMe0w/zouxian"
  url "https://github.com/CatMe0w/zouxian/releases/download/v0.2.0/zouxian.sh"
  sha256 "e04c163f000b8acd623daa9ab728e1a73507709d99e1089263dfbe62150e0a8e"
  license "MIT"
  head "https://github.com/CatMe0w/zouxian.git", branch: "master"

  def install
    bin.install "zouxian.sh" => "zouxian"
  end

  def caveats
    <<~EOS
      To ensure zouxian works correctly, please follow these steps:
        - Disable SIP debugging restrictions by running the `csrutil enable --without debug` command in Recovery mode.
        - For Apple Intelligence: A non-China Apple ID signed in.
        - For Xcode Predictive Code Completion: Make sure Xcode is installed and has been run at least once.
    EOS
  end

  service do
    run bin/"zouxian"
    require_root true
  end
end
