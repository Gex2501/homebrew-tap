class Ramfs < Formula
  desc "A memory-backed filesystem mounter for Mac OS X"
  homepage "https://github.com/Gex2501/ramfs"
  url "https://github.com/Gex2501/ramfs/raw/master/ramfs-1.0.tar.gz"
  sha256 "ce3028a7851307a8088871d0d2f3b7de61464873bd3ec565b30bbc078a47723e"

  def install
    # install ramfs script, create symlink to script in /usr/local/bin
    bin.install "ramfs"
  end

end
