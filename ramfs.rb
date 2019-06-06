class Ramfs < Formula
  desc "A memory-backed filesystem mounter for Mac OS X"
  homepage "https://github.com/Gex2501/ramfs"
  url "https://github.com/Gex2501/ramfs/raw/master/ramfs-1.0.tar.gz"
  sha256 "a20c92b5842d8ddbf55a419f903aac0d7a6013fb11fee2dffb250068e017d935"

  depends_on "coreutils"

  def install
    # install ramfs script, create symlink to script in /usr/local/bin
    bin.install "ramfs"
  end

  test do
    # test script output
    assert_equal %x('#{bin}/ramfs'), "ramfs  --unmount <path>
ramfs  --size <size> [--name <label>] [--filesystem <format>] [--mount <path>]
      [--allow-suid] [--enable-owners]
        'size' may be expressed in IEC units, e.g. 512M, 2G, etc.
        'path' will be created if it does not exist, but should be empty
      To view the available filesystem formats, use 'format' \"help\""
  end

end
