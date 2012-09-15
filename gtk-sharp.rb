require 'formula'

class GtkSharp < Formula
  homepage 'http://www.mono-project.com/GtkSharp'
  url 'http://download.mono-project.com/sources/gtk-sharp212/gtk-sharp-2.12.11.tar.bz2'
  version '2.12.11'
  sha1 '1ef391896e57f2445b7a1ca1b640d74d533e2158'

  depends_on 'pango'
  depends_on 'atk'
  depends_on 'gtk+'

  def install
    args = ["--prefix=#{prefix}",
            "--disable-debug", 
            "--disable-dependency-tracking"]

    system "./configure", *args
    system "make"
    system "make install"
  end

  def patches
    DATA
  end
end

__END__
diff --git a/glib/glue/thread.c b/glib/glue/thread.c
index 4fcf8c6..3655cfc 100644
--- a/glib/glue/thread.c
+++ b/glib/glue/thread.c
@@ -20,7 +20,7 @@
  */
 
 
-#include <glib/gthread.h>
+#include <glib.h>
 
 gboolean glibsharp_g_thread_supported (void);
 
