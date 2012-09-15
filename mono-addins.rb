require 'formula'

class MonoAddins < Formula
  homepage 'http://monoaddins.codeplex.com/'
  url 'http://download.mono-project.com/sources/mono-addins/mono-addins-0.6.2.tar.bz2'
  version '0.6.2'
  sha1 'fc42ee390433505523bbae061446e975f18d64bd'

  depends_on 'gtk-sharp'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
