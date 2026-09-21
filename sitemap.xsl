<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9"
>
  <xsl:output method="html" encoding="UTF-8" indent="yes" />

  <xsl:template match="/">
    <html lang="tr">
      <head>
        <!-- Google tag (gtag.js) -->
        <script async="async" src="https://www.googletagmanager.com/gtag/js?id=G-W2VBWNL723"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
          gtag('config', 'G-W2VBWNL723');
        </script>

        <link rel="icon" href="icon.ico" />
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Site Haritası - KarBon Fansub</title>

        <!-- Ana CSS ve İkon Kütüphaneleri -->
        <link rel="stylesheet" href="style.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.css" />

        <script>
          if (localStorage.getItem("theme") === "dark") {
            document.documentElement.classList.add("dark");
          }
        </script>

        <style>
          @font-face {
            font-family: "ComicCustom";
            src: url("fonts/ComicSansMS.ttf") format("truetype");
          }

          /* Sitemap'e özel hafif dokunuşlar (iskelet stilini bozmadan) */
          .sitemap-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 10px;
          }

          .url-list {
            display: flex;
            flex-direction: column;
            gap: 12px;
            margin-top: 20px;
          }

          .url-card {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 14px 18px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(128, 128, 128, 0.2);
            border-radius: 10px;
            color: inherit;
            text-decoration: none;
            transition: all 0.2s ease;
            word-break: break-all;
          }

          .url-card:hover {
            transform: translateX(6px);
            border-color: #3b82f6;
            background: rgba(59, 130, 246, 0.08);
          }

          .url-link {
            font-size: 15px;
            display: flex;
            align-items: center;
            gap: 8px;
          }

          .url-link i {
            color: #3b82f6;
          }

          .page-count {
            opacity: 0.8;
            font-size: 15px;
            margin-top: 8px;
          }
        </style>
      </head>

      <body>
        <!-- LOGO -->
        <a href="index.html" class="logo">
          <img src="Logomuz.png" alt="KarBon Fansub Logo" />
        </a>

        <!-- ÜST MENÜ -->
        <div class="top-menu">
          <a href="index.html" class="btn">Ana Sayfa</a>
          <a href="projeler.html" class="btn">Projeler</a>

          <a href="https://www.youtube.com/@KarBonFansub" target="_blank" class="social yt" aria-label="YouTube">
            <i class="bi bi-youtube"></i>
          </a>

          <a href="https://discord.gg/CXngCNXkBD" target="_blank" class="social dc" aria-label="Discord">
            <i class="bi bi-discord"></i>
          </a>

          <a href="ekibimiz.html" class="btn">Ekibimiz</a>
          <a href="bagis.html" class="btn">Bağış</a>

          <label class="theme-switch">
            <input type="checkbox" onchange="toggleTheme()" id="themeToggle" />
            <span class="slider">
              <span class="icon sun">☀️</span>
              <span class="icon moon">🌙</span>
            </span>
          </label>
        </div>

        <div class="line"></div>

        <!-- İÇERİK -->
        <div class="content">
          <div class="page-title">
            <h1>Site Haritası</h1>
            <p class="page-count">
              Şu anda indekslenmiş <strong><xsl:value-of select="count(s:urlset/s:url)"/></strong> sayfamız var.
            </p>
          </div>

          <div class="sitemap-container">
            <div class="url-list">
              <xsl:for-each select="s:urlset/s:url">
                <a class="url-card">
                  <xsl:attribute name="href">
                    <xsl:value-of select="s:loc" />
                  </xsl:attribute>
                  
                  <span class="url-link">
                    <i class="bi bi-box-arrow-up-right"></i>
                    <xsl:value-of select="s:loc" />
                  </span>
                </a>
              </xsl:for-each>
            </div>
          </div>
        </div>

        <div class="line"></div>

        <!-- FOOTER BİLGİ VE BANT -->
        <div class="footer-links">
          <a href="Gizlilik-Politikasi.html" target="_blank">Gizlilik Politikası</a>
          <span>|</span>
          <a href="hakkimizda.html" target="_blank">Hakkımızda</a>
        </div>

        <div style="text-align: center">𝓚𝓪𝓻𝓑𝓸𝓷 𝓕𝓪𝓷𝓼𝓾𝓫</div>

        <div style="text-align: center">
          Çevir, Düzelt, <span style="color: red">Yayınla</span>
        </div>

        <br />

        <div style="text-align: center">
          Bizimle iletişime geçin / Contact us: <br />
          <a href="mailto:samakarbon@gmail.com" style="color: #0066cc; text-decoration: none">samakarbon@gmail.com</a>
        </div>

        <div class="line"></div>

        <!-- ALT MENÜ -->
        <div class="bottom-menu">
          <a href="index.html" class="btn">Ana Sayfa</a>
          <a href="projeler.html" class="btn">Projeler</a>

          <a href="https://www.youtube.com/@KarBonFansub" target="_blank" class="social yt" aria-label="YouTube">
            <i class="bi bi-youtube"></i>
          </a>

          <a href="https://discord.gg/CXngCNXkBD" target="_blank" class="social dc" aria-label="Discord">
            <i class="bi bi-discord"></i>
          </a>

          <a href="ekibimiz.html" class="btn">Ekibimiz</a>
          <a href="bagis.html" class="btn">Bağış</a>
        </div>

        <script src="/theme.js"></script>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>