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
        <meta charset="UTF-8" />
        <meta
          name="viewport"
          content="width=device-width, initial-scale=1.0"
        />

        <title>KarBon Fansub - Sitemap</title>

        <style>
          :root {
            --bg: #e3e5e8;
            --text: #000;
            --card: rgba(255, 255, 255, 0.18);
            --primary: #3b82f6;
            --secondary: #284063;
            --border: rgba(46, 107, 79, 0.2);
          }

          .logo {
            position: absolute;
            top: 2px;
            left: 5px;
            width: fit-content;
            display: inline-block;
            height: fit-content;
          }

          .logo img {
            width: 120px;
            height: auto;
            display: block;
          }

          @media (prefers-color-scheme: dark) {
            :root {
              --bg: #121212;
              --text: #f1f1f1;
              --card: rgba(255, 255, 255, 0.08);
              --primary: #4699ef;
              --secondary: #81a9e3;
              --border: rgba(255, 255, 255, 0.08);
            }
          }

          * {
            box-sizing: border-box;
          }

          body {
            margin: 0;
            min-height: 100vh;
            background: var(--bg);
            color: var(--text);
            font-family: "Comic Sans MS", sans-serif;
            padding: 40px 20px;
          }

          .container {
            width: 100%;
            max-width: 900px;
            margin: 0 auto;
          }

          .header {
            text-align: center;
            margin-bottom: 35px;
          }

          .header h1 {
            margin: 0 0 10px;
            color: var(--secondary);
            font-size: 38px;
          }

          .header p {
            margin: 0;
            opacity: 0.7;
            font-size: 16px;
          }

          .sitemap-card {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: 18px;
            padding: 25px;
            margin-bottom: 30px;
            box-shadow: 0 8px 18px rgba(0, 0, 0, 0.08);
            backdrop-filter: blur(6px);
          }

          .sitemap-card h2 {
            margin: 0 0 20px;
            color: var(--secondary);
            font-size: 24px;
          }

          .url-list {
            display: flex;
            flex-direction: column;
            gap: 10px;
          }

          .url {
            display: block;
            padding: 13px 16px;
            background: rgba(255, 255, 255, 0.12);
            border-radius: 12px;
            color: var(--text);
            text-decoration: none;
            word-break: break-word;
            transition:
              transform 0.2s ease,
              background 0.2s ease;
          }

          .url:hover {
            transform: translateX(5px);
            background: rgba(59, 130, 246, 0.12);
          }

          .url::before {
            content: "↗ ";
            color: var(--primary);
            font-weight: bold;
          }

          .footer {
            text-align: center;
            font-size: 14px;
          }

          @media (max-width: 600px) {
            body {
              padding: 25px 12px;
            }

            .header h1 {
              font-size: 30px;
            }

            .sitemap-card {
              padding: 18px;
            }

            .sitemap-card h2 {
              font-size: 21px;
            }

            .url {
              font-size: 14px;
              padding: 12px;
            }
          }
        </style>
      </head>

      <body>
        <div class="container">

          <a href="/" class="logo">
            <img src="Logomuz.png" />
          </a>

          <div class="header">
            <h1>KarBon Fansub</h1>
            <p>Site Haritası</p>

            <br />

            <p>Şu anda mevcut: 15 Sayfamız var</p>
          </div>

          <div class="sitemap-card">
            <h2>Site Sayfaları</h2>

            <div class="url-list">
              <xsl:for-each select="s:urlset/s:url">
                <a class="url">
                  <xsl:attribute name="href">
                    <xsl:value-of select="s:loc" />
                  </xsl:attribute>

                  <xsl:value-of select="s:loc" />
                </a>
              </xsl:for-each>
            </div>
          </div>

          <div class="footer">
            <br />

            𝓚𝓪𝓻𝓑𝓸𝓷 𝓕𝓪𝓷𝓼𝓾𝓫 © 2025-2026

            <br />

            Çevir, Düzelt,
            <span style="color: red">Yayınla</span>
          </div>

        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>