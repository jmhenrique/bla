<html lang="pt-BR">
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Plano Municipal de Cultura</title>
  <script src="/_sdk/element_sdk.js"></script>
  <style>
    body {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Arial, sans-serif;
      background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%);
      min-height: 100%;
      width: 100%;
    }

    * {
      box-sizing: border-box;
    }

    .app-wrapper {
      width: 100%;
      min-height: 100%;
    }

    .header {
      background: rgba(255, 255, 255, 0.95);
      padding: 32px 24px;
      text-align: center;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    }

    .header h1 {
      font-size: 48px;
      font-weight: 800;
      margin: 0 0 12px 0;
      color: #1e3a8a;
    }

    .header p {
      font-size: 18px;
      color: #475569;
      margin: 0;
    }

    .main-content {
      max-width: 1400px;
      margin: 0 auto;
      padding: 48px 24px;
    }

    .search-section {
      margin-bottom: 32px;
    }

    .search-box {
      position: relative;
      max-width: 600px;
      margin: 0 auto;
    }

    .search-input {
      width: 100%;
      padding: 16px 48px 16px 20px;
      font-size: 16px;
      border: none;
      border-radius: 12px;
      background: rgba(255, 255, 255, 0.95);
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
      outline: none;
      transition: all 0.3s ease;
    }

    .search-input:focus {
      box-shadow: 0 6px 24px rgba(0, 0, 0, 0.2);
      background: #ffffff;
    }

    .search-icon {
      position: absolute;
      right: 16px;
      top: 50%;
      transform: translateY(-50%);
      font-size: 20px;
      color: #3b82f6;
    }

    .breadcrumb {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-bottom: 24px;
      flex-wrap: wrap;
    }

    .breadcrumb-item {
      color: rgba(255, 255, 255, 0.9);
      font-size: 14px;
      cursor: pointer;
      transition: all 0.2s ease;
      padding: 4px 8px;
      border-radius: 4px;
    }

    .breadcrumb-item:hover {
      background: rgba(255, 255, 255, 0.1);
      color: #ffffff;
    }

    .breadcrumb-item.active {
      color: #ffffff;
      font-weight: 600;
    }

    .breadcrumb-separator {
      color: rgba(255, 255, 255, 0.6);
    }

    .stats-bar {
      display: flex;
      gap: 16px;
      margin-bottom: 32px;
      flex-wrap: wrap;
      justify-content: center;
    }

    .stat-item {
      background: rgba(255, 255, 255, 0.95);
      padding: 16px 24px;
      border-radius: 12px;
      text-align: center;
      min-width: 140px;
      box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
    }

    .stat-number {
      font-size: 32px;
      font-weight: 800;
      color: #1e3a8a;
      margin: 0 0 4px 0;
    }

    .stat-label {
      font-size: 13px;
      color: #64748b;
      margin: 0;
      font-weight: 600;
    }


    /* Botões de Princípios / Objetivos / Diretrizes */
    .plano-info-buttons {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
      justify-content: center;
      margin-bottom: 16px;
    }

    .plano-info-button {
      padding: 8px 16px;
      font-size: 14px;
      font-weight: 600;
      border-radius: 999px;
      border: 2px solid rgba(255, 255, 255, 0.6);
      background: rgba(255, 255, 255, 0.12);
      color: #ffffff;
      cursor: pointer;
      backdrop-filter: blur(10px);
      transition: all 0.2s ease;
    }

    .plano-info-button:hover {
      background: #ffffff;
      color: #1e3a8a;
      border-color: #ffffff;
      transform: translateY(-1px);
    }

    .view-selector {
      display: flex;
      gap: 12px;
      margin-bottom: 32px;
      justify-content: center;
      flex-wrap: wrap;
    }

    .view-button {
      padding: 12px 24px;
      font-size: 15px;
      font-weight: 600;
      border: 2px solid rgba(255, 255, 255, 0.3);
      background: rgba(255, 255, 255, 0.1);
      color: #ffffff;
      border-radius: 8px;
      cursor: pointer;
      transition: all 0.3s ease;
      backdrop-filter: blur(10px);
    }

    .view-button:hover {
      background: rgba(255, 255, 255, 0.2);
      border-color: rgba(255, 255, 255, 0.5);
      transform: translateY(-2px);
    }

    .view-button.active {
      background: #ffffff;
      color: #1e3a8a;
      border-color: #ffffff;
    }

    .eixos-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 24px;
      margin-bottom: 32px;
    }

    .eixo-card {
      background: #ffffff;
      border-radius: 16px;
      padding: 32px;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
      cursor: pointer;
      transition: all 0.3s ease;
      position: relative;
      overflow: hidden;
    }

    .eixo-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 12px 32px rgba(0, 0, 0, 0.2);
    }

    .eixo-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      height: 6px;
      background: linear-gradient(90deg, #1e3a8a 0%, #3b82f6 100%);
    }

    .eixo-number {
      display: inline-block;
      background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%);
      color: #ffffff;
      font-size: 14px;
      font-weight: 700;
      padding: 6px 12px;
      border-radius: 6px;
      margin-bottom: 16px;
    }

    .eixo-title {
      font-size: 22px;
      font-weight: 700;
      color: #1e40af;
      margin: 0 0 12px 0;
      line-height: 1.3;
    }

    .eixo-description {
      font-size: 15px;
      color: #475569;
      line-height: 1.6;
      margin: 0 0 16px 0;
    }

    .eixo-stats {
      display: flex;
      gap: 16px;
      margin-top: 16px;
      padding-top: 16px;
      border-top: 1px solid #e2e8f0;
    }

    .eixo-stat {
      font-size: 13px;
      color: #64748b;
    }

    .eixo-stat strong {
      color: #1e40af;
      font-weight: 700;
    }

    .metas-list {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      gap: 20px;
    }

    .meta-card {
      background: #ffffff;
      border-radius: 12px;
      padding: 24px;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
      cursor: pointer;
      transition: all 0.3s ease;
      border-left: 4px solid #3b82f6;
    }

    .meta-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
    }

    .meta-number {
      display: inline-block;
      background: #eff6ff;
      color: #1e40af;
      font-size: 13px;
      font-weight: 700;
      padding: 4px 10px;
      border-radius: 6px;
      margin-bottom: 12px;
    }

    .meta-title {
      font-size: 18px;
      font-weight: 700;
      color: #1e293b;
      margin: 0 0 8px 0;
    }

    .meta-acoes-count {
      font-size: 13px;
      color: #64748b;
      margin-top: 12px;
    }

    .acoes-list {
      display: flex;
      flex-direction: column;
      gap: 16px;
    }

    .acao-card {
      background: #ffffff;
      border-radius: 12px;
      padding: 24px;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
      cursor: pointer;
      transition: all 0.3s ease;
      border-left: 4px solid #10b981;
    }

    .acao-card:hover {
      transform: translateX(4px);
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
    }

    .acao-header {
      display: flex;
      align-items: flex-start;
      gap: 12px;
      margin-bottom: 12px;
    }

    .acao-number {
      display: inline-block;
      background: #d1fae5;
      color: #065f46;
      font-size: 13px;
      font-weight: 700;
      padding: 4px 10px;
      border-radius: 6px;
      flex-shrink: 0;
    }

    .acao-title {
      font-size: 16px;
      font-weight: 600;
      color: #1e293b;
      margin: 0;
      flex: 1;
    }

    .acao-prazo-tags {
      display: flex;
      gap: 8px;
      flex-wrap: wrap;
      margin-top: 12px;
    }

    .prazo-tag {
      font-size: 12px;
      padding: 4px 10px;
      border-radius: 6px;
      font-weight: 600;
    }

    .prazo-tag.curto {
      background: #fef3c7;
      color: #92400e;
    }

    .prazo-tag.medio {
      background: #ddd6fe;
      color: #5b21b6;
    }

    .prazo-tag.longo {
      background: #e0e7ff;
      color: #3730a3;
    }

    .modal-overlay {
      display: none;
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: rgba(0, 0, 0, 0.75);
      z-index: 1000;
      padding: 24px;
      overflow-y: auto;
    }

    .modal-overlay.active {
      display: flex;
      align-items: flex-start;
      justify-content: center;
      padding-top: 48px;
    }

    .modal-content {
      background: #ffffff;
      border-radius: 16px;
      padding: 40px;
      max-width: 800px;
      width: 100%;
      position: relative;
      box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
      animation: slideUp 0.3s ease;
      margin-bottom: 48px;
    }

    @keyframes slideUp {
      from {
        opacity: 0;
        transform: translateY(30px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .close-button {
      position: absolute;
      top: 16px;
      right: 16px;
      background: none;
      border: none;
      font-size: 28px;
      color: #94a3b8;
      cursor: pointer;
      width: 40px;
      height: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 8px;
      transition: all 0.2s ease;
    }

    .close-button:hover {
      background: #f1f5f9;
      color: #1e293b;
    }

    .modal-header {
      margin-bottom: 24px;
      padding-bottom: 24px;
      border-bottom: 2px solid #e2e8f0;
    }

    .modal-badge {
      display: inline-block;
      background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%);
      color: #ffffff;
      font-size: 13px;
      font-weight: 700;
      padding: 6px 12px;
      border-radius: 6px;
      margin-bottom: 12px;
    }

    .modal-title {
      font-size: 32px;
      font-weight: 800;
      color: #1e293b;
      margin: 0 0 8px 0;
      line-height: 1.2;
    }

    .modal-subtitle {
      font-size: 16px;
      color: #64748b;
      margin: 0;
    }

    .modal-body {
      color: #475569;
      line-height: 1.8;
      font-size: 16px;
    }

    .modal-section {
      margin-bottom: 28px;
    }

    .modal-section h3 {
      font-size: 20px;
      font-weight: 700;
      color: #1e293b;
      margin: 0 0 16px 0;
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .modal-section-icon {
      font-size: 24px;
    }

    .prazo-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 16px;
      margin-top: 16px;
    }

    .prazo-item {
      background: #f8fafc;
      padding: 16px;
      border-radius: 10px;
      border-left: 4px solid #3b82f6;
    }

    .prazo-item h4 {
      font-size: 14px;
      font-weight: 700;
      color: #1e40af;
      margin: 0 0 8px 0;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    .prazo-item p {
      font-size: 15px;
      color: #475569;
      margin: 0;
      line-height: 1.5;
    }

    .indicadores-list {
      list-style: none;
      padding: 0;
      margin: 0;
    }

    .indicadores-list li {
      padding: 12px 16px;
      background: #f8fafc;
      border-radius: 8px;
      margin-bottom: 8px;
      border-left: 3px solid #10b981;
      font-size: 15px;
      color: #475569;
    }

    .indicadores-list li::before {
      content: '📊';
      margin-right: 10px;
    }

    .back-button {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 10px 20px;
      background: rgba(255, 255, 255, 0.15);
      color: #ffffff;
      border: 2px solid rgba(255, 255, 255, 0.3);
      border-radius: 8px;
      font-size: 15px;
      font-weight: 600;
      cursor: pointer;
      transition: all 0.3s ease;
      margin-bottom: 24px;
    }

    .back-button:hover {
      background: rgba(255, 255, 255, 0.25);
      border-color: rgba(255, 255, 255, 0.5);
      transform: translateX(-4px);
    }

    .footer {
      text-align: center;
      padding: 32px 24px;
      color: rgba(255, 255, 255, 0.9);
      font-size: 14px;
      background: rgba(0, 0, 0, 0.1);
    }

    .empty-state {
      text-align: center;
      padding: 64px 24px;
      color: rgba(255, 255, 255, 0.9);
    }

    .empty-state-icon {
      font-size: 64px;
      margin-bottom: 16px;
    }

    .empty-state-title {
      font-size: 24px;
      font-weight: 700;
      margin: 0 0 8px 0;
    }

    .empty-state-text {
      font-size: 16px;
      opacity: 0.8;
      margin: 0;
    }

    @media (max-width: 768px) {
      .header h1 {
        font-size: 32px;
      }

      .header p {
        font-size: 15px;
      }

      .main-content {
        padding: 32px 16px;
      }

      .modal-content {
        padding: 24px;
      }

      .modal-title {
        font-size: 24px;
      }

      .eixos-grid {
        grid-template-columns: 1fr;
      }

      .stats-bar {
        gap: 12px;
      }

      .stat-item {
        min-width: 120px;
        padding: 12px 16px;
      }

      .stat-number {
        font-size: 24px;
      }
    }
  
    .search-results-header {
      margin-bottom: 16px;
    }

    .search-results-count {
      color: #f9fafb;
      text-align: center;
    }

    .search-results-count span {
      background: rgba(15, 23, 42, 0.9);
      padding: 2px 8px;
      border-radius: 999px;
    }

  
    .search-results {
      display: flex;
      flex-direction: column;
      gap: 32px;
    }

    .search-block-title {
      color: #f9fafb;
      margin: 0 0 12px 0;
    }

    .search-block.search-eixos .eixo-card,
    .search-block.search-metas .meta-card,
    .search-block.search-acoes .acao-card {
      margin-bottom: 0;
    }


    .intro-extra {
      max-width: 900px;
      margin: 16px auto 0 auto;
      text-align: center;
      font-size: 15px;
      color: #475569;
      line-height: 1.6;
    }

    .header-brand {
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 4px;
      margin-bottom: 16px;
    }

    .header-brand-logo {
      height: 80px;
      margin-bottom: 4px;
    }

    .header-institution {
      display: flex;
      flex-direction: column;
      gap: 2px;
      font-size: 14px;
      color: #1e3a8a;
      font-weight: 600;
    }


    /* ===== Glossário ===== */
    .header {
      position: relative;
    }

    .header-top-right {
      position: absolute;
      top: 24px;
      right: 32px;
      display: flex;
      align-items: center;
      gap: 8px;
      z-index: 5;
    }

    .glossary-button {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 6px 12px;
      border-radius: 999px;
      border: none;
      background: #1e3a8a;
      color: #eff6ff;
      font-size: 13px;
      font-weight: 500;
      cursor: pointer;
      box-shadow: 0 4px 12px rgba(15, 23, 42, 0.3);
      transition: transform 0.15s ease, box-shadow 0.15s ease, background 0.15s ease;
    }

    .download-plan-button {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 6px 12px;
      border-radius: 999px;
      border: none;
      background: #059669;
      color: #ecfdf5;
      font-size: 13px;
      font-weight: 500;
      cursor: pointer;
      box-shadow: 0 4px 12px rgba(15, 23, 42, 0.25);
      text-decoration: none;
      transition: transform 0.15s ease, box-shadow 0.15s ease, background 0.15s ease;
    }

    .download-plan-button:hover {
      background: #047857;
      transform: translateY(-1px);
      box-shadow: 0 6px 16px rgba(15, 23, 42, 0.35);
    }

    .download-plan-button:active {
      transform: translateY(0);
      box-shadow: 0 3px 8px rgba(15, 23, 42, 0.2);
    }

    .glossary-button:hover {
      transform: translateY(-1px);
      box-shadow: 0 6px 16px rgba(15, 23, 42, 0.35);
      background: #1d4ed8;
    }

    .glossary-button span {
      font-size: 16px;
    }

    
    .glossary-inline {
      border-bottom: 1px dashed #2563eb;
      cursor: help;
      padding: 0 1px;
      transition: background 0.15s ease;
    }

    .glossary-inline:hover {
      background: rgba(37, 99, 235, 0.15);
    }
.glossary-panel-backdrop {
      position: fixed;
      inset: 0;
      background: rgba(15, 23, 42, 0.35);
      backdrop-filter: blur(4px);
      opacity: 0;
      visibility: hidden;
      transition: opacity 0.25s ease, visibility 0.25s ease;
      z-index: 40;
    }

    .glossary-panel-backdrop.open {
      opacity: 1;
      visibility: visible;
    }

    .glossary-panel {
      position: fixed;
      top: 0;
      right: 0;
      width: min(420px, 100%);
      height: 100%;
      background: #f9fafb;
      box-shadow: -8px 0 30px rgba(15, 23, 42, 0.25);
      transform: translateX(100%);
      transition: transform 0.25s ease;
      z-index: 50;
      display: flex;
      flex-direction: column;
    }

    .glossary-panel.open {
      transform: translateX(0);
    }

    .glossary-panel-header {
      padding: 18px 20px;
      border-bottom: 1px solid #e5e7eb;
      display: flex;
      justify-content: space-between;
      align-items: center;
      background: #111827;
      color: #e5e7eb;
    }

    .glossary-panel-title {
      margin: 0;
      font-size: 18px;
      font-weight: 600;
    }

    .glossary-panel-subtitle {
      margin: 4px 0 0 0;
      font-size: 12px;
      color: #9ca3af;
    }

    .glossary-close-btn {
      border: none;
      background: transparent;
      color: #e5e7eb;
      font-size: 20px;
      cursor: pointer;
    }

    .glossary-panel-body {
      padding: 16px 20px 20px;
      overflow-y: auto;
      flex: 1;
    }

    .glossary-search {
      margin-bottom: 12px;
    }

    .glossary-search input {
      width: 100%;
      padding: 8px 10px;
      border-radius: 999px;
      border: 1px solid #d1d5db;
      font-size: 13px;
      outline: none;
    }

    .glossary-search input:focus {
      border-color: #1d4ed8;
      box-shadow: 0 0 0 1px rgba(37, 99, 235, 0.25);
    }

    .glossary-downloads {
      margin-bottom: 12px;
      font-size: 13px;
      color: #4b5563;
    }

    .glossary-downloads a {
      color: #1d4ed8;
      text-decoration: none;
      font-weight: 500;
    }

    .glossary-downloads a:hover {
      text-decoration: underline;
    }

    .glossary-list {
      list-style: none;
      margin: 0;
      padding: 0;
    }

    .glossary-item {
      padding: 10px 0;
      border-bottom: 1px solid #e5e7eb;
    }

    .glossary-term-name {
      font-weight: 600;
      font-size: 14px;
      color: #111827;
      margin-bottom: 2px;
    }

    .glossary-term-desc {
      font-size: 13px;
      color: #4b5563;
      line-height: 1.5;
    }

    .glossary-term-links {
      margin-top: 4px;
      font-size: 12px;
    }

    .glossary-term-links a {
      color: #1d4ed8;
      text-decoration: none;
    }

    .glossary-term-links a:hover {
      text-decoration: underline;
    }

    .glossary-term {
      border-bottom: 1px dotted rgba(37, 99, 235, 0.7);
      cursor: help;
      padding-bottom: 1px;
    }

</style>
  <style>@view-transition { navigation: auto; }
    .search-results-header {
      margin-bottom: 16px;
    }

    .search-results-count {
      color: #f9fafb;
      text-align: center;
    }

    .search-results-count span {
      background: rgba(15, 23, 42, 0.9);
      padding: 2px 8px;
      border-radius: 999px;
    }

  </style>
  <script src="/_sdk/data_sdk.js" type="text/javascript"></script>
  <script src="https://cdn.tailwindcss.com" type="text/javascript"></script>
 </head>
 <body>
  <div class="app-wrapper">
      <header class="header">
    <div class="header-top-right">
      <a href="https://bibliotecajuridica.campinas.sp.gov.br/images/full/bbd747e80ea2cd2be51c736311b28d76.pdf" class="download-plan-button" target="_blank" rel="noopener noreferrer">
        <span>⬇️</span><span>Baixar Plano (Lei nº 15.997/2020)</span>
      </a>
      <button id="glossary-toggle" class="glossary-button" type="button">
        <span>📖</span><span>Glossário</span>
      </button>
    </div>

    <div class="header-brand">
      <img src="https://campinas.sp.gov.br/assets/images/brasao.png" alt="Brasão de Campinas" class="header-brand-logo">
      <div class="header-institution">
        <div>Secretaria Municipal de Cultura e Turismo</div>
        <div>Prefeitura Municipal de Campinas</div>
      </div>
    </div>
    <h1 id="main-title">Plano Municipal de Cultura</h1>
    <p id="subtitle">Navegue pela estrutura completa do plano: Eixos, Metas, Ações e Indicadores</p>
    <div class="intro-extra">
Este painel foi criado para facilitar o acesso ao Plano Municipal de Cultura de Campinas. Aqui, você encontra um jeito simples e direto de conhecer as metas, ações e diretrizes que orientam o desenvolvimento cultural da cidade pelos próximos anos.<br><br>
<strong>IMPORTANTE:</strong> O conteúdo deste painel não substitui o texto oficial publicado em Diário Oficial.<br><br>
Para acessar a íntegra da lei que institui o Plano Municipal de Cultura — <strong>Lei nº 15.997/2020</strong> — clique no link abaixo:<br>
👉 <a href="https://bibliotecajuridica.campinas.sp.gov.br/images/full/bbd747e80ea2cd2be51c736311b28d76.pdf" target="_blank">Acessar legislação oficial</a>
</div>
   </header>
   <main class="main-content">
    <div class="search-section">
     <div class="search-box"><label for="search-input" class="sr-only">Buscar no plano</label> <input type="text" id="search-input" class="search-input" placeholder="Buscar por eixo, meta, ação ou palavra-chave..." aria-label="Buscar no plano de cultura"> <span class="search-icon">🔍</span>
     </div>
    </div>
    <div class="breadcrumb" id="breadcrumb" role="navigation" aria-label="Navegação estrutural"><span class="breadcrumb-item active" data-level="home">Início</span>
    </div>
    <div class="stats-bar" id="stats-bar">
     <div class="stat-item">
      <div class="stat-number">
       5
      </div>
      <div class="stat-label">
       EIXOS
      </div>
     </div>
     <div class="stat-item">
      <div class="stat-number">
       19
      </div>
      <div class="stat-label">
       METAS
      </div>
     </div>
     <div class="stat-item">
      <div class="stat-number">
       139
      </div>
      <div class="stat-label">
       AÇÕES
      </div>
     </div>
    </div>
    <div class="plano-info-buttons" aria-label="Princípios, Objetivos e Diretrizes do Plano Municipal de Cultura">
     <button type="button" class="plano-info-button" data-section="principios">
      Princípios
     </button>
     <button type="button" class="plano-info-button" data-section="objetivos">
      Objetivos
     </button>
     <button type="button" class="plano-info-button" data-section="diretrizes">
      Diretrizes
     </button>
    </div>

    <div class="view-selector" id="view-selector"><button class="view-button active" data-view="eixos">📚 Ver por Eixos</button> <button class="view-button" data-view="metas">🎯 Ver por Metas</button> <button class="view-button" data-view="todas-acoes">📋 Todas as Ações</button>
    </div>
    <div id="content-area"><!-- Conteúdo dinâmico ser   inserido aqui -->
    </div>
   </main>
   <footer class="footer">
    <p id="footer-text">© 2025 Secretaria Municipal de Cultura e Turismo - Plano Municipal de Cultura</p>
   </footer>
  </div>
  <div id="modal" class="modal-overlay" role="dialog" aria-modal="true" aria-labelledby="modal-title">
   <div class="modal-content"><button class="close-button" id="close-modal" aria-label="Fechar">×</button>
    <div class="modal-header">
     <div class="modal-badge" id="modal-badge"></div>
     <h2 class="modal-title" id="modal-title"></h2>
     <p class="modal-subtitle" id="modal-subtitle"></p>
    </div>
    <div class="modal-body" id="modal-body"><!-- Conteúdo detalhado será inserido aqui -->
    </div>
   </div>
  </div>
  <script>
    const defaultConfig = {
      main_title: "Plano Municipal de Cultura",
      subtitle: "Navegue pela estrutura completa do plano: Eixos, Metas, Ações e Indicadores",
      footer_text: "© 2025 Secretaria Municipal de Cultura e Turismo - Plano Municipal de Cultura",
      background_color: "#1e3a8a",
      secondary_surface_color: "#ffffff",
      text_color: "#1e293b",
      primary_action_color: "#3b82f6",
      secondary_action_color: "#10b981",
      font_family: "Inter",
      font_size: 16
    };

    // Estrutura de dados do Plano
    const planoData = {
      eixos: [
        {
          id: 1,
          numero: "I",
          titulo: "Da institucionalização das Políticas Culturais e da Participação Social",
          descricao: "Da institucionalização das Políticas Culturais e da Participação Social",
          metas: [1, 2, 3, 4]
        },
        {
          id: 2,
          numero: "II",
          titulo: "Da Infraestrutura Cultural e do Espaço Urbano",
          descricao: "Da Infraestrutura Cultural e do Espaço Urbano",
          metas: [5, 6, 7, 8]
        },
        {
          id: 3,
          numero: "III",
          titulo: "Do Patrimônio e da Memória",
          descricao: "Do Patrimônio e da Memória",
          metas: [9, 10, 11, 12]
        },
        {
          id: 4,
          numero: "IV",
          titulo: "Da Formação, Mediação, Hábitos Culturais e Difusão Cultural",
          descricao: "Da Formação, Mediação, Hábitos Culturais e Difusão Cultural",
          metas: [13, 14, 15]
        },
        {
          id: 5,
          numero: "V",
          titulo: "Do Fomento e da Economia da Cultura",
          descricao: "Do Fomento e da Economia da Cultura",
          metas: [16, 17, 18, 19]
        }
      ],
      metas: [
        { id: 1, numero: 1, titulo: "Financiamento", descricao: "Financiamento - Criação do Sistema Municipal de Financiamento à Cultura - SIFIC,  com manutenção, ampliação e diversificação das fontes de recursos e dos fundos municipais de cultura", eixoId: 1, acoes: ["1.1", "1.2", "1.3", "1.4"] },
        { id: 2, numero: 2, titulo: "Reestruturação, Reorganização e Capilaridade", descricao: "Reestruturação, Reorganização e Capilaridade - Reestruturação e regionalização da SECULT, com ampliação e qualificação do quadro de servidores", eixoId: 1, acoes: ["2.1", "2.2", "2.3", "2.4"] },
        { id: 3, numero: 3, titulo: "Gestão Participativa", descricao: "Gestão Participativa - Implantação e consolidação de instâncias e mecanismos de participação social, contemplando as dimensões municipal, regional, local e digital", eixoId: 1, acoes: ["3.1", "3.2", "3.3", "3.4"] },
        { id: 4, numero: 4, titulo: "Informações e Indicadores", descricao: "Informações e Indicadores - Implantar o Sistema Municipal de Informações e Indicadores Culturais – SMIIC em plataformas abertas, acessíveis, amigáveis e disponíveis para consulta on-line", eixoId: 1, acoes: ["4.1", "4.2", "4.3", "4.4", "4.5", "4.6", "4.7", "4.8", "4.9", "4.10", "4.11", "4.12"] },
        { id: 5, numero: 5, titulo: "Requalificação de Equipamentos Públicos Culturais Municipais", descricao: "Requalificação de Equipamentos Públicos Culturais Municipais - Requalificação dos equipamentos públicos culturais municipais, inclusive os cogeridos pelo Poder Público Municipal e a Sociedade Civil, atendendo às normas de segurança e acessibilidade, com conectividade e integração aos espaços públicos", eixoId: 2, acoes: ["5.1", "5.2", "5.3", "5.4", "5.5", "5.6"] },
        { id: 6, numero: 6, titulo: "Rede Municipal de Equipamentos Públicos Culturais", descricao: "Rede Municipal de Equipamentos Públicos Culturais - Implantação da rede de equipamentos públicos culturais municipais de abrangência local e regional em todos os territórios do município, em pleno funcionamento e contemplando múltiplos usos e usos intersetoriais", eixoId: 2, acoes: ["6.1", "6.2", "6.3"] },
        { id: 7, numero: 7, titulo: "Gestão Colaborativa e Espaços Independentes", descricao: "Gestão Colaborativa e Espaços Independentes - Criação de novos arranjos institucionais para gestão colaborativa de equipamentos públicos culturais municipais e estímulo a espaços culturais independentes", eixoId: 2, acoes: ["7.1", "7.2", "7.3", "7.4"] },
        { id: 8, numero: 8, titulo: "Ocupação de Espaços Públicos", descricao: "Ocupação de Espaços Públicos - Promoção da ocupação dos espaços públicos com práticas e atividades artístico-culturais", eixoId: 2, acoes: ["8.1", "8.2", "8.3", "8.4"] },
        { id: 9, numero: 9, titulo: "Preservação do Patrimônio", descricao: "Preservação do Patrimônio - Preservação dos bens e patrimônios culturais, monumentos e obras artísticas e áreas de potencial arqueológico, com instrumentos de reconhecimento e proteção diversificados e implantados em sua plenitude", eixoId: 3, acoes: ["9.1", "9.2", "9.3", "9.4", "9.5", "9.6", "9.7", "9.8", "9.9"] },
        { id: 10, numero: 10, titulo: "Educação Patrimonial", descricao: "Educação Patrimonial - Valorização da educação patrimonial para produção e difusão de conhecimento acerca dos bens culturais reconhecidos como patrimônio", eixoId: 3, acoes: ["10.1", "10.2", "10.3", "10.4"] },
        { id: 11, numero: 11, titulo: "Museus, Bibliotecas e Memória", descricao: "Museus, Bibliotecas e Memória - Fortalecimento dos espaços museológicos, de informação e leitura para gestão e difusão dos acervos e bens culturais", eixoId: 3, acoes: ["11.1", "11.2", "11.3", "11.4", "11.5", "11.6", "11.7"] },
        { id: 12, numero: 12, titulo: "Gestão de Acervos", descricao: "Gestão de Acervos - Formulação e implantação de política integrada de gestão e difusão de acervos bibliográficos e museológicos, respeitando suas especificidades", eixoId: 3, acoes: ["12.1", "12.2", "12.3", "12.4", "12.5", "12.6", "12.7"] },
        { id: 13, numero: 13, titulo: "Formação Cultural", descricao: "Formação Cultural - Iniciação, formação continuada e profissionalização artística, cultural e patrimonial para alunos, artistas, orientadores e oficineiros coordenadas pela Escola Municipal de Cultura e Arte – EMCEA", eixoId: 4, acoes: ["13.1", "13.2", "13.3", "13.4", "13.5", "13.6", "13.7", "13.8", "13.9", "13.10", "13.11"] },
        { id: 14, numero: 14, titulo: "Mediação Cultural e Desenvolvimento de Hábitos Culturais", descricao: "Mediação Cultural e Desenvolvimento de Hábitos Culturais - Promoção de processos de mediação cultural que façam emergir os hábitos culturais territoriais e que promovam a interlocução cultural", eixoId: 4, acoes: ["14.1", "14.2"] },
        { id: 15, numero: 15, titulo: "Programação Cultural", descricao: "Programação Cultural - Estabelecimento e consolidação de planejamento de programação cultural de maneira integrada e participativa", eixoId: 4, acoes: ["15.1", "15.2", "15.3", "15.4"] },
        { id: 16, numero: 16, titulo: "Cidadania Cultural", descricao: "Cidadania Cultural - Ampliação do fomento às culturas periféricas, populares e de base comunitária que envolvam questões de raça, gênero, orientação sexual, etnia e cultura histórica e qualquer outra que necessite de enfoques específicos para diversificação do acesso às políticas culturais", eixoId: 5, acoes: ["16.1", "16.2", "16.3", "16.4", "16.5", "16.6", "16.7", "16.8", "16.9"] },
        { id: 17, numero: 17, titulo: "Fomento às Linguagens Artísticas", descricao: "Fomento às Linguagens Artísticas - Ampliação e aprimoramento do fomento, com diversificação de seus instrumentos e inclusão de novas linguagens artísticas", eixoId: 5, acoes: ["17.1", "17.2", "17.3", "17.4", "17.5", "17.6"] },
        { id: 18, numero: 18, titulo: "Sustentabilidade e Colaboração", descricao: "Sustentabilidade e Colaboração - Promoção da sustentabilidade de iniciativas culturais", eixoId: 5, acoes: ["18.1", "18.2", "18.3", "18.4", "18.5", "18.6"] },
        { id: 19, numero: 19, titulo: "Cadeias Produtivas", descricao: "Cadeias Produtivas - Mapeamento e desenvolvimento das cadeias produtivas e arranjos produtivos locais para estímulo à produção artística e cultural", eixoId: 5, acoes: ["19.1", "19.2", "19.3", "19.4", "19.5"] }
      ],
      acoes: {
        "1.1": {
          titulo: "Realizar projeção orçamentária para viabilizar as metas e ações previstas no PCULT e ampliar o orçamento para sua implementação.",
          curtoPrazo: "2,5% do orçamento municipal destinado à cultura",
          medioPrazo: "2,7% do orçamento municipal destinado à cultura",
          longoPrazo: "3% do orçamento municipal destinado à cultura",
          indicadores: [
            "Percentual do orçamento municipal destinado à cultura"
          ]
        },
        "1.2": {
          titulo: "Ampliar e diversificar as fontes de recursos financeiros para plena execução das metas e ações do PCULT por meio de colaboração com a União, o Estado, a iniciativa privada, contrapartidas de empreendimentos imobiliários, organismos nacionais e internacionais e outros órgãos da Prefeitura, bem como recepção de emendas parlamentares",
          curtoPrazo: "Fontes de recursos para além do orçamento municipal destinado à cultura ampliadas e diversificadas. Coordenadoria Setorial de Convênios, para gestão das parcerias, criada. Quadro de servidores ampliado para execução da ação",
          medioPrazo: "Fontes de recursos para além do orçamento municipal destinado à cultura ampliadas e diversificadas. Quadro de servidores ampliado para execução plena da ação. Ferramentas e legislações para novas formas de arrecadação criadas e implantadas",
          longoPrazo: "Fontes de recursos para além do orçamento municipal destinado à cultura ampliadas e diversificadas",
          indicadores: [
            "Percentual de recursos de outras fontes para além do orçamento municipal destinado à cultura com relação ao total investido na cultura.",
            "Coordenadoria Setorial de Convênios implantada.",
            "Número de servidores contratados.",
            "Indicação de Fontes de Recurso"
          ]
        },
        "1.3": {
          titulo: "Reestruturar os fundos municipais de cultura – FAC – Fundo de Assistência à Cultura, criado pela Lei nº 4.712, de 03 de maio de 1977, FICC – Fundo de Investimentos Culturais de Campinas, criado pela Lei nº 12.355, de 10 de setembro de 2005, Fundo Municipal para Preservação do Patrimônio Artístico, Arquitetônico, Histórico, Paisagístico e Cultural de Campinas, criado pela Lei nº 7;859, de 04 de maio de 1994, e Fundo de Apoio a Festas Populares e/ou Beneficentes, criado pela Lei nº 11.332, de 26 de agosto de 2002 – atendendo às prerrogativas da Lei Federal nº 13.019, de 31 de julho de 2014 e às demandas do PCULT, com o devido controle social e levando em consideração a criação do SIFIC",
          curtoPrazo: "Legislação relativa aos fundos municipais de cultura revista, com propositura de atualização, e projetos de lei encaminhados à Câmara Municipal de Campinas para aprovação",
          medioPrazo: "Legislação relativa aos fundos municipais de cultura aprovada e implantada e recursos orçamentários ampliados",
          longoPrazo: "Legislação dos fundos municipais de cultura consolidada e recursos orçamentários ampliados",
          indicadores: [
            "Legislação revisada e implantada.",
            "Percentual do orçamento destinado aos fundos municipais de cultura.",
            "Valores arrecadados.",
            "Valores empenhados e pagos.",
            "Indicação de Fontes de Recursos."
          ]
        },
        "1.4": {
          titulo: "Criar fundos setoriais de cultura dentro do SIFIC, geridos pelas Câmaras Setoriais do Conselho Municipal de Política Cultural – COMCULT e a SECULT",
          curtoPrazo: "Projeto de lei de criação dos fundos setoriais encaminhado à Câmara Municipal de Campinas para aprovação",
          medioPrazo: "Fundos setoriais implantados",
          longoPrazo: "Fundos setoriais consolidados",
          indicadores: [
            "Volume de recursos destinados.",
            "Valores empenhados e pagos.",
            "Número de ações realizadas com recursos dos fundos setoriais.",
            "Diversidade de linguagens e ações abrangidas pelos fundos"
          ]
        },
        "2.1": {
          titulo: "Realizar a reestruturação administrativa da SECULT para adequação de seu modelo organizacional às políticas e demandas existentes",
          curtoPrazo: "Lei de reestruturação administrativa da SECULT aprovada e implantada",
          medioPrazo: "Reestruturação administrativa da SECULT consolidada",
          longoPrazo: "Reestruturação administrativa da SECULT consolidada",
          indicadores: [
            "Lei de reestruturação administrativa implantada"
          ]
        },
        "2.2": {
          titulo: "Mapear e ampliar o quadro de recursos humanos da SECULT a partir de cargos e carreiras existentes; da criação e alteração de cargos para melhor adequação às necessidades; da realização de concursos públicos; e da consolidação de uma política de estágios",
          curtoPrazo: "Demanda de recursos humanos mapeada. Proposta de criação e alteração de cargos realizada. Formulação de política de estágios concluída. Concursos públicos para preenchimento de vagas realizados",
          medioPrazo: "Concursos realizados. Servidores concursados nas carreiras existentes convocados. Cargos criados e alterados. Política de estágios aplicada",
          longoPrazo: "Concursos realizados. Servidores concursados nas carreiras existentes convocados. Política de estágios aplicada",
          indicadores: [
            "Número de servidores em atuação por área e cargo.",
            "Número de servidores concursados.",
            "Número de estagiários contratados e respectivas áreas de atuação.",
            "Porcentagem de servidores e estagiários da cultura em relação à população."
          ]
        },
        "2.3": {
          titulo: "Realizar formação continuada dos servidores da cultura em cursos de produção, gestão e política cultural, administração pública, atualização técnica específica de cada área e sensibilização para o trabalho com a diversidade, os direitos humanos e a cidadania cultural",
          curtoPrazo: "Diagnóstico do quadro de servidores realizado e plano de formação elaborado com base nas necessidades de cada área",
          medioPrazo: "Formações específicas oferecidas a 30% dos servidores da cultura e formação continuada oferecida a 20% dos servidores da cultura",
          longoPrazo: "Formações específicas oferecidas a 40% dos servidores da cultura e formação continuada oferecida a 30% dos servidores da cultura",
          indicadores: [
            "Número de vagas e cursos ofertados.",
            "Número de servidores formados.",
            "Percentual de servidores formados em relação à totalidade do quadro.",
            "Diversidade de cursos realizados."
          ]
        },
        "2.4": {
          titulo: "Promover a articulação territorial nas Áreas de Planejamento e Gestão – APGs sob orientação dos equipamentos públicos culturais municipais de abrangência regional",
          curtoPrazo: "Elaboração de proposta de mapeamento e construção de equipamentos públicos culturais municipais de abrangência regional, em cada APG, concluída. Elaboração de proposta de instrumentos de articulação para os equipamentos públicos existentes concluída",
          medioPrazo: "7 equipamentos públicos culturais municipais de abrangência regional e seus instrumentos de articulação implantados, funcionando como articuladores regionais",
          longoPrazo: "10 equipamentos públicos culturais municipais de abrangência regional e seus instrumentos de articulação implantados, funcionando como articuladores regionais. Número e situação dos instrumentos de articulação",
          indicadores: [
            "Número de equipamentos públicos culturais municipais implantados e sua localização"
          ]
        },
        "3.1": {
          titulo: "Implantar e consolidar o Conselho Municipal de Política Cultural – CONCULT, com caráter consultivo, deliberativo e propositivo, com representação setorial, territorial, intersecretarial e de servidores da SECULT",
          curtoPrazo: "Lei de criação do CONCULT aprovada e regulamentada. CONCULT implantado, em funcionamento, com reuniões periódicas",
          medioPrazo: "CONCULT consolidado e em funcionamento, com reuniões periódicas",
          longoPrazo: "CONCULT consolidado e em funcionamento, com reuniões periódicas",
          indicadores: [
            "CONCULT implantado.",
            "Representantes territoriais e setoriais eleitos.",
            "Número de reuniões e plenárias realizadas.",
            "Composição dos conselhos"
          ]
        },
        "3.2": {
          titulo: "Realizar Conferências Municipais de Cultura, com ampla participação social, a cada dois anos",
          curtoPrazo: "-",
          medioPrazo: "V e VI Conferências Municipais de Cultura realizadas",
          longoPrazo: "VII, VIII e IX Conferências Municipais de Cultura realizadas",
          indicadores: [
            "Conferências Municipais de Cultura realizadas.",
            "Número de participantes.",
            "Propostas aprovadas e implantadas."
          ]
        },
        "3.3": {
          titulo: "Criar e implantar conselhos de gestão compartilhada dos equipamentos públicos culturais municipais, objetivando a gestão de projetos e programas intersecretariais e intersetoriais",
          curtoPrazo: "30% dos equipamentos públicos culturais municipais com conselho de gestão compartilhada tripartite – Poder Público Municipal, Sociedade Civil organizada e comunidade – implantado e funcionando em consonância com as representações das Câmaras Territoriais do CONCULT",
          medioPrazo: "70% dos equipamentos públicos culturais municipais com conselho de gestão compartilhada tripartite – Poder Público Municipal, Sociedade Civil organizada e comunidade – implantado e funcionando em consonância com as representações das Câmaras Territoriais do CONCULT",
          longoPrazo: "100% dos equipamentos públicos culturais municipais com conselho de gestão compartilhada tripartite – Poder Público Municipal, Sociedade Civil organizada e comunidade – implantado e funcionando em consonância com as representações das Câmaras Territoriais do CONCULT",
          indicadores: [
            "Percentual de equipamentos públicos culturais municipais com conselho de gestão compartilhada implantado.",
            "Número de reuniões realizadas por conselho"
          ]
        },
        "3.4": {
          titulo: "Implantar canais de participação digital, como consultas públicas on-line, fóruns virtuais de debate, canais de atendimento ao cidadão e plataformas de governança colaborativa, e disponibilizar, de forma permanente e atualizada, informações acerca das instâncias e mecanismos de participação social",
          curtoPrazo: "Estudo preliminar para levantamento das necessidades de canais de participação digital realizado. Primeiros canais de participação digital implantados. Informações acerca das instâncias e mecanismos de participação social disponibilizadas e atualizadas de forma permanente",
          medioPrazo: "50% dos canais de participação digital implantados. Informações acerca das instâncias e mecanismos de participação social disponibilizadas e atualizadas de forma permanente",
          longoPrazo: "100% dos canais de participação digital implantados. Informações acerca das instâncias e mecanismos de participação social disponibilizadas e atualizadas de forma permanente",
          indicadores: [
            "Número de canais de participação digital implantados.",
            "Número de participantes nos canais de participação digital.",
            "Documentos e informações acerca das instâncias e mecanismos de participação social disponibilizados.",
            "Diversidade de canais implantados."
          ]
        },
        "4.1": {
          titulo: "Desenvolver ferramenta para o monitoramento da implantação do PCULT e fomentar a produção de dados, informações e indicadores culturais, disponibilizando-os on-line e em formato aberto",
          curtoPrazo: "Metodologia e ferramenta de monitoramento criadas e implantadas. Fóruns anuais de reflexão, pesquisa, divulgação dos dados e indicadores realizados em parceria com universidades, consultores, entre outras instituições, e agentes especializados na produção de dados e indicadores",
          medioPrazo: "Metodologia e ferramenta de monitoramento consolidadas. Dados e indicadores atualizados, disponibilizados on-line, sistematizados e publicados em relatórios anualmente. Fóruns anuais de reflexão, pesquisa, divulgação dos dados e indicadores realizados em parceria com universidades, consultores, entre outras instituições, e agentes especializados na produção de dados e indicadores",
          longoPrazo: "Dados e indicadores atualizados, disponibilizados on-line, sistematizados e publicados em relatórios anualmente. Fóruns anuais de reflexão, pesquisa, divulgação dos dados e indicadores realizados em parceria com universidades, consultores, entre outras instituições, e agentes especializados na produção de dados e indicadores, incluindo um evento de avaliação final do PCULT",
          indicadores: [
            "Metodologia e ferramenta de monitoramento do PCULT implantada.",
            "Dados e indicadores disponibilizados.",
            "Relatórios publicados.",
            "Número de acessos."
          ]
        },
        "4.2": {
          titulo: "Mapear a diversidade cultural existente no município, utilizando plataforma como ferramenta colaborativa de georreferenciamento de espaços, agentes, eventos, projetos, segmentos, linguagens, movimentos culturais e hábitos de cultura da população em geral, com atualização permanente, para promoção de melhorias na acessibilidade, usabilidade e inteligibilidade. Realização de um Censo Cultural a cada 4 anos envolvendo as secretarias do município",
          curtoPrazo: "Banco de dados criado e apropriação da ferramenta por cidadãos e instituições culturais atuantes no município realizada. Plataforma integrada aos sistemas internos de gestão da Prefeitura Municipal de Campinas – PMC. I Censo Cultural realizado",
          medioPrazo: "Mapeamento dos espaços, agentes, eventos, projetos, segmentos, linguagens, movimentos culturais e hábitos de cultura realizado. Ferramenta de comunicação entre os agentes implantada. Plataforma integrada ao Sistema Nacional de Informações e Indicadores Culturais – SNIIC",
          longoPrazo: "Plataforma da SECULT consolidada com novas funcionalidades implantadas e atualização permanente, conforme as demandas de acessibilidade, navegabilidade e usabilidade. II e III Censos Culturais realizados",
          indicadores: [
            "Número de espaços, agentes, eventos, projetos e movimentos culturais cadastrados.",
            "Número de acessos.",
            "Plataforma da SECULT integrada com outros sistemas.",
            "Novas funcionalidades implantadas.",
            "Mapeamento realizado.",
            "Dados e indicadores extraídos.",
            "Censos Culturais realizados."
          ]
        },
        "4.3": {
          titulo: "Disponibilizar as informações acerca dos investimentos públicos em cultura no município, com recortes por órgão, linguagem, programa, projeto, ação, território e tipo de política, por meio de plataforma on-line, de maneira detalhada, acessível e sistemática, garantindo a transparência pública e o acesso à informação",
          curtoPrazo: "Relatórios publicados no Portal da Transparência",
          medioPrazo: "Plataforma on-line para divulgação dos investimentos públicos em cultura no município implantada",
          longoPrazo: "Plataforma integrada a bases de dados de outras esferas federativas que têm investimentos públicos em cultura no município (governos estadual e federal) implantada, bem como à ação entre os órgãos do setor público municipal",
          indicadores: [
            "Informações disponibilizadas.",
            "Plataforma implantada.",
            "Base de dados integrada.",
            "Número de acessos."
          ]
        },
        "4.4": {
          titulo: "Criar memorial digital para catalogação, armazenamento e difusão do acervo de publicações e documentos dos programas, produtos e ações vinculados e/ou apoiados pela SECULT e às políticas culturais do município",
          curtoPrazo: "Levantamento do acervo de publicações e documentos de programas e ações vinculados e/ou apoiados pela SECULT e às políticas culturais do município efetuado",
          medioPrazo: "Memorial digital para catalogação, armazenamento e difusão do acervo de publicações e documentos de programas e ações vinculados e/ou apoiados pela SECULT e às políticas culturais do município criado",
          longoPrazo: "Memorial digital para catalogação, armazenamento e difusão do acervo de publicações e documentos de programas e ações vinculados e/ou apoiados pela SECULT e às políticas culturais do município consolidado. Acervos disponibilizados com licenças livres",
          indicadores: [
            "Levantamento realizado.",
            "Memorial criado.",
            "Publicações, documentos e conteúdo disponibilizados.",
            "Número de acessos."
          ]
        },
        "4.5": {
          titulo: "Criar estratégia integrada de comunicação das políticas culturais e da agenda e produção cultural municipal, tanto do Poder Público Municipal quanto da Sociedade Civil, com diversificação dos canais de divulgação, contemplando as dimensões digitais, radialísticas, televisivas, impressas e territoriais, de forma vinculada às ferramentas do SMIIC e aos equipamentos públicos culturais municipais de abrangência regional",
          curtoPrazo: "Estratégia integrada de comunicação criada. Revista on-line implantada, como guia de programação da SECULT, publicada mensalmente. Revista impressa implantada, publicada trimestralmente. Manual de identidade visual da SECULT criado",
          medioPrazo: "Estratégia integrada de comunicação implantada e integrada ao SMIIC. Revista on-line consolidada, como guia de programação da SECULT, publicada mensalmente. Revista impressa consolidada, publicada trimestralmente. Portal Cultura reformulado",
          longoPrazo: "Estratégia integrada de comunicação consolidada. Revista on-line consolidada e publicada mensalmente. Revista impressa consolidada, publicada trimestralmente. Portal Cultura atualizado",
          indicadores: [
            "Estratégia integrada de comunicação implantada.",
            "Canais de divulgação implantados.",
            "Número de acessos.",
            "Número de revistas on-line e impressas publicadas.",
            "Tiragem das revistas impressas.",
            "Acesso a revistas on-line."
          ]
        },
        "4.6": {
          titulo: "Definir e padronizar os instrumentos de monitoramento e avaliação, tanto por parte do Poder Público Municipal quanto da Sociedade Civil, da programação e do público dos eventos e equipamentos públicos culturais municipais, contemplando pesquisas periódicas do perfil sociodemográfico, hábitos de consumo, criação e práticas culturais e impactos econômico e sociais gerados pelas atividades e pela programação",
          curtoPrazo: "Instrumentos de monitoramento e avaliação qualitativos e quantitativos de programação, de público dos eventos e equipamentos públicos culturais municipais levantados, definidos, padronizados e implantados pelo Poder Público Municipal e Sociedade Civil",
          medioPrazo: "Instrumentos de monitoramento e avaliação qualitativos e quantitativos de programação, de público dos eventos e equipamentos públicos culturais municipais consolidados, com indicadores criados e disponibilizados. Pesquisas realizadas e disponibilizadas. 50% das demandas de atividades e melhoramentos levantadas nos instrumentos de monitoramento e avaliação atendidas",
          longoPrazo: "Indicadores consolidados, monitorados e disponibilizados de forma contínua. 100% das demandas de atividades e melhoramentos levantadas nos instrumentos de monitoração e avaliação atendidas",
          indicadores: [
            "Instrumentos de monitoramento e avaliação implantados.",
            "Indicadores disponibilizados.",
            "Pesquisas realizadas.",
            "Porcentagem das demandas de atividades e melhoramentos levantadas nos instrumentos de monitoramento e avaliação."
          ]
        },
        "4.7": {
          titulo: "Criar indicadores econômicos municipais da Cultura, com base nos indicadores criados na Conta Satélite da Cultura e no Atlas Econômico da Cultura Brasileira, ambos do Ministério da Cultura – MinC",
          curtoPrazo: "Metodologia definida. Indicadores prioritários escolhidos de acordo com os eixos propostos pela Conta Satélite da Cultura e com o panorama municipal",
          medioPrazo: "Metodologia definida. Indicadores prioritários escolhidos, com medição e publicação realizada anualmente",
          longoPrazo: "Metodologia consolidada. Medição e publicação mantidas",
          indicadores: [
            "Indicadores econômicos da cultura criados.",
            "Relatórios publicados."
          ]
        },
        "4.8": {
          titulo: "Desenvolver aplicativo para web e celular objetivando a divulgação participativa da programação e das ações culturais do município bem como dos editais da cultura",
          curtoPrazo: "Estudo para desenvolvimento do aplicativo concluído. Ferramenta de inscrições em oficinas e editais aprimorada e consolidada",
          medioPrazo: "Aplicativo desenvolvido e implantado. Conteúdo do Portal Cultura migrado para o aplicativo. 100% da programação cultural realizada pela SECULT divulgada. 50% da programação cultural do município integrada",
          longoPrazo: "100% da programação cultural do município integrada",
          indicadores: [
            "Aplicativo implantado.",
            "Número de acessos.",
            "Número de atividades.",
            "Diversidade da programação"
          ]
        },
        "4.9": {
          titulo: "Criar web TV para o aprofundamento de conteúdos referentes a acervos, atividades, grupos e manifestações culturais e de educomunicação",
          curtoPrazo: "Estudo para implantação da web TV concluído",
          medioPrazo: "Web TV implantada com equipamento e equipes formadas. 50% das APGs atendidas por oficinas de educomunicação para a produção de conteúdos",
          longoPrazo: "100% das APGs atendidas por oficinas de educomunicação para a produção de conteúdo. 100% da programação produzida de maneira colaborativa",
          indicadores: [
            "Web TV criada.",
            "Horas de conteúdo produzidos.",
            "Número de oficinas realizadas.",
            "Horas de conteúdos produzidos nas oficinas.",
            "Número de pessoas atendidas."
          ]
        },
        "4.10": {
          titulo: "Criar web TV para o aprofundamento de conteúdos referentes a acervos, atividades, grupos e manifestações culturais e educomunicação, e circulação de conteúdos produzidos com investimento público no município. Criar web rádios produzidas a partir dos equipamentos públicos culturais municipais descentralizados, com programação cultural diversificada",
          curtoPrazo: "Estudo para implantação das web rádios concluídos. 20% dos equipamentos públicos culturais municipais equipados para captação e transmissão das web rádios",
          medioPrazo: "50% dos equipamentos públicos culturais municipais equipados para captação e transmissão das web rádios e implementação de estratégia para manutenção e ampliação da programação",
          longoPrazo: "100% dos equipamentos públicos culturais municipais equipados para captação e transmissão das web rádios",
          indicadores: [
            "Web rádios criadas.",
            "Horas de conteúdos produzidos.",
            "Número de acessos.",
            "Estudo da implantação.",
            "Participação da Sociedade Civil na programação."
          ]
        },
        "4.11": {
          titulo: "Desenvolver plataforma municipal de streaming",
          curtoPrazo: "Plataforma criada. 20% dos equipamentos públicos culturais municipais com recursos necessários para a produção de conteúdo. Estudo realizado de estratégia para upload de material produzido no município, divulgação e manutenção da plataforma",
          medioPrazo: "Plataforma aperfeiçoada. 50% dos equipamentos públicos culturais municipais com recursos necessários para a produção de conteúdo. Estratégia implementada para upload de material produzido no município, divulgação e manutenção da plataforma",
          longoPrazo: "Plataforma consolidada. 100% dos equipamentos públicos culturais municipais com recursos necessários para a produção de conteúdo",
          indicadores: [
            "Plataforma criada.",
            "Número de acessos.",
            "Horas de conteúdos produzidos.",
            "Equipamentos públicos culturais municipais atendidos."
          ]
        },
        "4.12": {
          titulo: "Criar o Sistema Municipal de Radiodifusão Cultural, subordinado à SECULT, com criação de emissoras de rádio e TV públicas municipais de cultura e da TV Cultural Cidadão para veiculação de conteúdo relacionado à cultura do município, com, no mínimo, 15% da programação diária destinados à divulgação e apresentação de músicas de artistas oriundos ou residentes no município de Campinas",
          curtoPrazo: "Estudo para implantação do Sistema Municipal de Radiodifusão Cultural concluído. Consulta ao Ministério das Comunicações para participação em edital, com vistas à obtenção da outorga da rádio e TVs públicas realizada",
          medioPrazo: "Outorga da rádio e TVs públicas obtida junto ao Ministério das Comunicações. Lei de criação do Sistema Municipal de Radiodifusão Cultural aprovada e implantada. Rádio e TVs culturais implantadas",
          longoPrazo: "Rádio e TVs consolidadas",
          indicadores: [
            "Rádio e TVs implantadas.",
            "Conteúdos produzidos.",
            "Ações veiculadas.",
            "Estimativa de audiência."
          ]
        },
        "5.1": {
          titulo: "Adaptar e regularizar os equipamentos públicos culturais municipais em relação às normas de segurança e proteção contra incêndio",
          curtoPrazo: "100% dos equipamentos públicos culturais municipais com diagnóstico e ações para adequação às normas de segurança realizados e 50% regularizados",
          medioPrazo: "70% dos equipamentos públicos culturais municipais regularizados e com manutenção permanente para adequação às normas de segurança",
          longoPrazo: "100% dos equipamentos públicos culturais municipais regularizados e com manutenção permanente para adequação às normas de segurança",
          indicadores: [
            "Percentual de equipamentos públicos culturais municipais com Auto de Vistoria do Corpo de Bombeiros e Alvará de Funcionamento válidos e/ou comprovante de segurança para equipamento cultural público"
          ]
        },
        "5.2": {
          titulo: "Adaptar e reformar os equipamentos públicos culturais municipais para atendimento às normas de acessibilidade arquitetônica, ergonômica e mobiliária",
          curtoPrazo: "55% dos equipamentos públicos culturais municipais adequados às normas de acessibilidade arquitetônica e 100% com diagnóstico e projeto para adequação à acessibilidade ergonômica e mobiliária realizado",
          medioPrazo: "70% dos equipamentos públicos culturais municipais adequados às normas de acessibilidade arquitetônica e 50% atendendo à acessibilidade ergonômica e mobiliária",
          longoPrazo: "100% dos equipamentos públicos culturais municipais adequados às normas de acessibilidade arquitetônica, ergonômica e mobiliária",
          indicadores: [
            "Percentual de equipamentos públicos culturais municipais adequados às normas de acessibilidade arquitetônica, ergonômica e mobiliária"
          ]
        },
        "5.3": {
          titulo: "Adaptar, reformar e ampliar os equipamentos públicos culturais municipais que necessitam de requalificação, bem como reconceituá-los de acordo com as características físicas e demanda da comunidade. Realizar manutenção permanente e vistorias periódicas de todos os equipamentos públicos culturais municipais",
          curtoPrazo: "20% dos equipamentos públicos culturais municipais requalificados e 100% com manutenção permanente. Diagnóstico realizado das demandas de requalificação e adaptações",
          medioPrazo: "40% dos equipamentos públicos culturais municipais requalificados e 100% com manutenção permanente. Diagnóstico atualizado das demandas de requalificação e adaptaçoes",
          longoPrazo: "100% dos equipamentos públicos culturais municipais requalificados e 100% com manutenção permanente",
          indicadores: [
            "Percentual de equipamentos públicos culturais municipais requalificados.",
            "Percentual dos equipamentos públicos culturais municipais em manutenção permanente."
          ]
        },
        "5.4": {
          titulo: "Integrar os equipamentos públicos culturais municipais às políticas de mobilidade urbana, em articulação com as redes de transporte, incluindo rotas acessíveis",
          curtoPrazo: "Diagnóstico da integração dos equipamentos públicos culturais municipais com as redes de transporte realizado, incluindo rotas acessíveis",
          medioPrazo: "50% dos equipamentos públicos culturais municipais de abrangência municipal e regional integrados à rede de transporte, incluindo rotas acessíveis",
          longoPrazo: "100% dos equipamentos públicos culturais municipais de abrangência local integrados à rede de transporte, incluindo rotas acessíveis",
          indicadores: [
            "Percentual de equipamentos públicos culturais municipais integrados à rede de transporte, com rotas acessíveis.",
            "Porcentagem das demandas levantadas no diagnóstico atendidas."
          ]
        },
        "5.5": {
          titulo: "Integrar os equipamentos públicos culturais municipais às politicas de infraestrutura urbana de iluminação pública e sinalização",
          curtoPrazo: "100% do diagnóstico realizado. 40% dos equipamentos públicos culturais municipais com adequação de iluminação pública e com sinalização. Revisão e manutenção periódicas da iluminação pública e sinalização realizadas",
          medioPrazo: "80% dos equipamentos públicos culturais municipais com adequação de iluminação pública e com sinalização. Revisão e manutenção periódicas da iluminação pública e sinalização realizadas",
          longoPrazo: "100% dos equipamentos públicos culturais municipais com adequação de iluminação pública e com sinalização. Revisão e manutenção periódicas da iluminação pública e sinalização realizadas",
          indicadores: [
            "Percentual de equipamentos públicos culturais municipais integrados às políticas de infraestrutura urbana de iluminação pública e sinalização"
          ]
        },
        "5.6": {
          titulo: "Instalar sistema de wi-fi livre, com acesso gratuito à internet em toda a rede municipal de equipamentos públicos culturais municipais",
          curtoPrazo: "30% dos equipamentos públicos culturais municipais com sistema de wi-fi instalado",
          medioPrazo: "100% dos equipamentos públicos culturais municipais com sistema de wi-fi instalado",
          longoPrazo: "Conectividade nos equipamentos públicos culturais municipais mantida e consolidada",
          indicadores: [
            "Percentual de equipamentos públicos culturais municipais com sistema de wi-fi instalado.",
            "Velocidade da conexão."
          ]
        },
        "6.1": {
          titulo: "Implantar equipamentos públicos culturais municipais intersetoriais multiúso de abrangência regional em todas as 17 APGs, adaptando os já existentes ou construindo novos equipamentos",
          curtoPrazo: "Equipamentos públicos culturais municipais multiúso existentes nas 17 APGs identificados e mapeados, respeitando as divisões territoriais definidas pelo CONCULT. 4 equipamentos públicos culturais municipais multiúso de abrangência regional implantados e em pleno funcionamento. Planejamento realizado de implementação dos equipamentos públicos de abrangência regional",
          medioPrazo: "7 equipamentos públicos culturais municipais multiúso de abrangência regional implantados e em pleno funcionamento",
          longoPrazo: "10 equipamentos públicos culturais municipais multiúso de abrangência regional implantados e em pleno funcionamento",
          indicadores: [
            "Regiões administrativas com equipamentos públicos culturais municipais multiúso de abrangência regional implantados.",
            "Número de equipamentos públicos culturais municipais"
          ]
        },
        "6.2": {
          titulo: "Aprofundar e consolidar a gestão compartilhada dos CEUs, integrando-os às Câmaras Territoriais do CONCULT",
          curtoPrazo: "Plano de ação comum compreendendo as diretrizes, políticas e programas de cada secretaria nos CEUs elaborado. Grupo de trabalho intersecretarial estabelecido para aprofundamento do modelo de gestão compartilhada",
          medioPrazo: "Plano de ação comum compreendendo as diretrizes, políticas e programas de cada secretaria nos CEUs implantado. Modelo de gestão compartilhada dos CEUs implantado",
          longoPrazo: "Plano de ação comum compreendendo as diretrizes, políticas e programas de cada secretaria nos CEUs consolidado. Modelo de gestão compartilhada dos CEUs consolidado",
          indicadores: [
            "Gestão compartilhada nos CEUs consolidada.",
            "Número de CEUs com gestão compartilhada"
          ]
        },
        "6.3": {
          titulo: "Promover e ampliar parcerias com outros órgãos municipais para ampliação da rede de equipamentos públicos municipais de uso cultural, para além da gestão compartilhada dos CEUs",
          curtoPrazo: "Parcerias estabelecidas com outros órgãos municipais para ampliação da rede de equipamentos públicos municipais de uso cultural",
          medioPrazo: "Parcerias estabelecidas com outros órgãos municipais para ampliação da rede de equipamentos públicos municipais de uso cultural",
          longoPrazo: "Parcerias estabelecidas com outros órgãos municipais para ampliação da rede de equipamentos públicos municipais de uso cultural",
          indicadores: [
            "Número de parcerias estabelecidas"
          ]
        },
        "7.1": {
          titulo: "Ampliar, diversificar e potencializar a rede de equipamentos culturais em parceria com a Sociedade Civil por meio de novos modelos de gestão compartilhada e ocupação de espaços, fundamentado em princípios de horizontalidade, pluralismo e fortalecimento",
          curtoPrazo: "Modelos de gestão compartilhada consolidados nos equipamentos públicos culturais municipais já existentes",
          medioPrazo: "Modelos de gestão compartilhada e cessão de espaços ampliados e diversificados, de acordo com a demanda e necessidades de cada equipamento cultural e território",
          longoPrazo: "Modelos de gestão compartilhada e cessão de espaços ampliados e diversificados, de acordo com a demanda e necessidades de cada equipamento cultural e território",
          indicadores: [
            "Número de equipamentos públicos culturais municipais implantados por meio de novos modelos de gestão compartilhada.",
            "Número de equipamentos culturais com espaços cedidos"
          ]
        },
        "7.2": {
          titulo: "Mapear imóveis públicos ocupados por atividades culturais, regularizá-los e realizar parcerias para gestão compartilhada desses espaços com instituições de interesse público e coletivos culturais com comprovada relevância e histórico de atuação, avaliadas pelo CONCULT, articulando esses equipamentos com a rede municipal de equipamentos culturais",
          curtoPrazo: "Mapeamento das ocupações existentes efetuado. Política de regulamentação e apoio para gestão compartilhada e permissão de uso dos espaços, com suas devidas responsabilidades, elaboradas",
          medioPrazo: "Regularização das ocupações existentes efetuada e política de regulamentação e apoio aos espaços públicos ocupados implantada",
          longoPrazo: "Regularização das ocupações existentes efetuada e política de regulamentação e apoio aos espaços públicos ocupados consolidada",
          indicadores: [
            "Ocupações culturais mapeadas.",
            "Número de espaços públicos ocupados regularizados"
          ]
        },
        "7.3": {
          titulo: "Estabelecer programa de apoio e estímulo à criação de bibliotecas comunitárias que contemple mapeamento, articulação em rede, intercâmbio cultural, desenvolvimento de acervos e treinamento, priorizando os territórios não atendidos pelas bibliotecas e espaços de leitura públicos municipais",
          curtoPrazo: "100% das bibliotecas comunitárias mapeadas",
          medioPrazo: "50% das bibliotecas comunitárias mapeadas apoiadas. Bibliotecas comunitárias em territórios não atendidos implantadas",
          longoPrazo: "100% das bibliotecas comunitárias mapeadas e implantadas apoiadas",
          indicadores: [
            "Número de bibliotecas comunitárias mapeadas.",
            "Percentual de bibliotecas comunitárias mapeadas e implantadas apoiadas.",
            "Número de bibliotecas comunitárias implantadas"
          ]
        },
        "7.4": {
          titulo: "Identificar e instituir o registro das Zonas Especiais de Preservação Cultural – ZEPECs para proteção dos imóveis destinados à produção, fruição, formação e exibição pública de conteúdos culturais e artísticos",
          curtoPrazo: "Política de reconhecimento das ZEPECs definida e comissão de análise específica implantada",
          medioPrazo: "Política de reconhecimento das ZEPECs consolidada",
          longoPrazo: "Política de reconhecimento das ZEPECs consolidada",
          indicadores: [
            "Comissão de análise específica para reconhecimento das ZEPECs implantada.",
            "Número de ZEPECs reconhecidas"
          ]
        },
        "8.1": {
          titulo: "Consolidar programas intersetoriais para ocupação de espaços públicos por meio de práticas artístico-culturais, a partir da convergência de ações e orçamentos para garantir infraestrutura, segurança e acessibilidade e promover atividades nas ruas, praças e parques públicos, entre outros",
          curtoPrazo: "Grupo de trabalho para elaboração de programa intersetorial de ocupação dos espaços públicos criado. Procedimentos para facilitar a realização de atividades culturais em espaços públicos definidos. Espaços públicos com maior recorrência de atividades culturais mapeados para investimento intersecretarial em infraestrutura e acessibilidade",
          medioPrazo: "Programa intersetorial de ocupação dos espaços públicos implantado. Espaços públicos com maior recorrência de atividades culturais adequados com infraestrutura e acessibilidade",
          longoPrazo: "Programa intersetorial de ocupação dos espaços públicos consolidado com ampliação das atividades e espaços adequados com infraestrutura e acessibilidade",
          indicadores: [
            "Programa intersetorial de ocupação dos espaços públicos implantado.",
            "Espaços públicos mapeados e adequados com infraestrutura e acessibilidade.",
            "Número de atividades desenvolvidas"
          ]
        },
        "8.2": {
          titulo: "Apoiar e consolidar o Carnaval de Rua, os blocos carnavalescos, as escolas de samba, os eventos e as festas de caráter popular e cultural e intervenções de coletivos culturais independentes",
          curtoPrazo: "Blocos, escolas de samba e programação artística contemplados em todas as regiões do município no período do Carnaval de Rua, com o apoio de infraestrutura da SECULT. Projeto de lei de ocupação dos espaços públicos por eventos e manifestações culturais temporárias elaborado pela SECULT, com a participação da Sociedade Civil, e encaminhada à Câmara Municipal de Campinas para aprovação. Grupo de trabalho para mapear as atividades culturais realizadas em todas as APGs criado. Estudo para a propositura de projeto de lei para financiamento privado das ações iniciado",
          medioPrazo: "Blocos, escolas de samba e programação artística contemplados em todas as regiões do município no período do Carnaval de Rua. Lei de ocupação dos espaços públicos por eventos e manifestações culturais temporárias em todas as APGs aprovada e implantada. Lei para o financiamento privado das ações aprovada e implantada. Atividades culturais realizadas em todas as APGs mapeadas. 1 edital de apoio a eventos, festas e intervenções de coletivos culturais em todas as APGs lançado anualmente",
          longoPrazo: "Blocos, escolas de samba e programação artística contemplados em todas as regiões do município no período do Carnaval de Rua. Lei de ocupação dos espaços públicos por eventos e manifestações culturais temporárias em todas as APGs consolidada. Lei para o financiamento privado das ações consolidada. 1 edital de apoio a eventos, festas e intervenções de coletivos culturais em todas as APGs lançado anualmente",
          indicadores: [
            "Número de blocos e escolas de samba existentes e contemplados.",
            "Número de pessoas participantes do Carnaval de Rua.",
            "Número de atividades realizadas por APG.",
            "Número de ações apoiadas.",
            "Número de ações com financiamento privado realizadas"
          ]
        },
        "8.3": {
          titulo: "Reconhecer e proteger práticas e manifestações urbanas de intervenção artístico-cultural, regulamentando o uso dos espaços públicos e facilitando a utilização dos espaços privados, para enriquecimento da paisagem urbana",
          curtoPrazo: "Práticas e manifestações urbanas de intervenção artístico-cultural identificadas e reconhecidas.  Agentes públicos de segurança, limpeza, zeladoria e mobilidade urbana orientados. Estudo realizado e propostas feitas para atualização da LUOS (Lei de Uso e Ocupação do Solo) vigente, relativo a ações de caráter artístico-cultural",
          medioPrazo: "Práticas e manifestações urbanas de intervenção artístico-cultural identificadas e reconhecidas. Agentes públicos de segurança, limpeza, zeladoria e mobilidade urbana orientados. Atualizações implementadas na LUOS e/ou lei própria de regulamentação de uso dos espaços públicos aprovada e implantada. Criação de grupo permanente de acompanhamento da LUOS para propostas futuras do Plano Diretor e LUOS",
          longoPrazo: "Práticas e manifestações urbanas de intervenção artístico-cultural identificadas e reconhecidas. Lei de regulamentação de uso dos espaços públicos consolidada. Agentes públicos de segurança, limpeza, zeladoria e mobilidade urbana orientados",
          indicadores: [
            "Número e diversidade das práticas e manifestações urbanas de intervenção artístico-cultural.",
            "Ações de divulgação de regulamentações realizadas.",
            "Número de agentes públicos orientados.",
            "LUOS (Lei de Uso e Ocupação do Solo) e lei de regulamentação de uso dos espaços públicos de caráter artístico-cultural implantadas e/ou atualizadas"
          ]
        },
        "8.4": {
          titulo: "Regulamentar a cobrança de preços públicos das atividades realizadas nos equipamentos públicos culturais municipais, com recolhimento dos recursos financeiros aos fundos municipais de cultura e destinação à manutenção desses equipamentos",
          curtoPrazo: "Decretos de regulamentação de cobrança de preços públicos de todos os equipamentos públicos culturais municipais aprovados e implantados",
          medioPrazo: "Regulamentação de cobrança de preços públicos de todos os equipamentos públicos culturais municipais consolidada, com avaliação dos resultados",
          longoPrazo: "Regulamentação de cobrança de preços públicos de todos os equipamentos públicos culturais municipais consolidada e revisada",
          indicadores: [
            "Número de equipamentos públicos culturais municipais com regulamentação de cobrança de preços públicos implantada.",
            "Valores arrecadados por equipamento público cultural municipal.",
            "Manutenções realizadas.",
            "Valores utilizados em manutenção por equipamento público cultural municipal"
          ]
        },
        "9.1": {
          titulo: "Fomentar estudos para identificação e reconhecimento de bens e patrimônios materiais, realizar o tombamento e monitorar seus planos de conservação, em parceria e convênio com órgãos governamentais, universidades, Sociedade Civil e grupos envolvidos em práticas culturais tradicionais",
          curtoPrazo: "Número de estudos de tombamento abertos anualmente mantido. Estudos de imóveis com abertura de processo de tombamento realizados. Planos de conservação monitorados e apoiados",
          medioPrazo: "Número de estudos de tombamento abertos anualmente mantido. Estudos de imóveis com abertura de processo de tombamento realizados. Planos de conservação monitorados e apoiados",
          longoPrazo: "Número de estudos de tombamento abertos anualmente mantido. Estudos de imóveis com abertura de processo de tombamento realizados. Planos de conservação monitorados e apoiados",
          indicadores: [
            "Número de estudos de tombamento abertos anualmente.",
            "Número de tombamentos realizados anualmente.",
            "Número de planos de conservação apoiados e monitorados"
          ]
        },
        "9.2": {
          titulo: "Fomentar estudos para identificação e reconhecimento de bens culturais de natureza imaterial, realizar seu registro e monitorar planos de salvaguarda, em parceria ou convênio com órgãos governamentais, universidades, Sociedade Civil e grupos envolvidos em práticas culturais tradicionais, de acordo com a Lei Municipal nº 14.701, de 14 de outubro de 2013 e a Resolução do Conselho de Defesa do Patrimônio Cultural de Campinas – CONDEPACC nº 131, de 14 de agosto de 2014",
          curtoPrazo: "Estudos de registro de bens culturais de natureza imaterial abertos mantidos. Estudo de registros de bens culturais de natureza imaterial concluídos anualmente. Planos de salvaguarda monitorados e apoiados",
          medioPrazo: "Estudos de registro de bens culturais de natureza imaterial abertos mantidos. Estudo de registros de bens culturais de natureza imaterial concluídos anualmente. Planos de salvaguarda monitorados e apoiados",
          longoPrazo: "Estudos de registro de bens culturais de natureza imaterial abertos mantidos. Estudo de registros de bens culturais de natureza imaterial concluídos anualmente. Planos de salvaguarda monitorados e apoiados",
          indicadores: [
            "Número de estudos de registro de bens culturais de natureza imaterial realizados.",
            "Número de bens culturais de natureza imaterial registrados.",
            "Número de planos de salvaguarda monitorados e apoiados"
          ]
        },
        "9.3": {
          titulo: "Diversificar e implantar novos instrumentos de reconhecimento e proteção de bens culturais por meio de levantamento e cadastro arqueológico e identificação e instituição das ZEPECs",
          curtoPrazo: "Espaços e intervenções artísticas e espaços urbanos com cartografia social e com recursos da museologia social mapeados. Levantamento e cadastro arqueológico e identificação das ZEPECs iniciado",
          medioPrazo: "Estudos específicos de reconhecimento e proteção de bens culturais e áreas de potencial arqueológico efetuados por meio de levantamento e cadastro arqueológico e identificação e instituição de ZEPEC. Bens reconhecidos",
          longoPrazo: "Estudos específicos de reconhecimento e proteção de bens culturais e áreas de potencial arqueológico efetuados por meio de levantamento e cadastro arqueológico e identificação e instituição de ZEPEC. Bens reconhecidos",
          indicadores: [
            "Número de estudos específicos de reconhecimento e proteção de bens culturais e áreas de potencial arqueológico realizados.",
            "Número de ZEPECs identificadas e instituídas.",
            "Número de bens reconhecidos"
          ]
        },
        "9.4": {
          titulo: "Realizar diagnóstico da situação de conservação e restauro dos monumentos e obras artísticas existentes em espaços públicos e implantar planos de conservação e restauro",
          curtoPrazo: "Espaços e intervenções artísticas e espaços urbanos com cartografia social e com recursos da museologia social mapeados. Diagnóstico da situação de conservação e restauro dos bens e obras artísticas existentes iniciado. Planos de conservação e restauro iniciados",
          medioPrazo: "Acervo de monumentos e obras artísticas com diagnósticos realizados. Monumentos e obras artísticas com diagnósticos realizados, com planos de conservação implantados",
          longoPrazo: "Acervo de monumentos e obras artísticas com diagnósticos realizados. Monumentos e obras artísticas com diagnósticos realizados, com planos de conservação implantados",
          indicadores: [
            "Percentual do acervo de monumentos e obras artísticas com diagnósticos realizados.",
            "Percentual de monumentos e obras artísticas com diagnósticos realizados com planos de conservação implantados.",
            "Número de planos de conservação implantados"
          ]
        },
        "9.5": {
          titulo: "Implantar a Casa do Patrimônio, contemplando os níveis de patrimônio material e imaterial, e garantir o acesso público, geral e irrestrito, incluindo o acesso via transporte público melhorado",
          curtoPrazo: "Oficinas de implantação, em parceria com o Instituto do Patrimônio Histórico e Artístico Nacional – IPHAN, propostas e realizadas na Casa do Patrimônio e em outros espaços do município. Adequação do Centro Cultural Casarão para implantação a Casa do Patrimônio e uso compartilhado efetuada. Estudo para criação de rede do patrimônio cultural concluído. Acervo sobre os registros dos bens patrimonializados e de publicações sobre a temática disponibilizado à população. Atividades de educação patrimonial desenvolvidas",
          medioPrazo: "Oficinas e exposições sobre patrimônio cultural propostas e realizadas na Casa do Patrimônio e em outros espaços do município. Intercâmbio com a rede de casas de patrimônio de outros entes da federação e da União implantado. Atividades de educação patrimonial desenvolvidas",
          longoPrazo: "Oficinas e exposições sobre patrimônio cultural propostas e realizadas na Casa do Patrimônio e em outros espaços do município. Intercâmbio com a rede de casas de patrimônio de outros entes da federação e da União consolidado. Atividades de educação patrimonial desenvolvidas",
          indicadores: [
            "Número de registros de bens de natureza imaterial.",
            "Número de tombos de bens de natureza material.",
            "Número de ações de salvaguarda realizadas.",
            "Número de planos de salvaguarda.",
            "Número de planos de restauro.",
            "Número de ações de educação patrimonial.",
            "Número de estudantes atendidos.",
            "Acervo implantado e acessado"
          ]
        },
        "9.6": {
          titulo: "Criar o Fundo Setorial de Patrimônio Imaterial e Museologia Social, com mecanismos de gestão compartilhada das Câmaras Setoriais de Culturas Populares Tradicionais e da Memória e Patrimônio Material e Imaterial do CONCULT",
          curtoPrazo: "Estudos para elaboração de lei de criação do Fundo Setorial de Patrimônio Imaterial e Museologia Social realizados",
          medioPrazo: "Lei do Fundo Setorial do Patrimônio Imaterial e Museologia Social aprovada, regulamentada e implantada",
          longoPrazo: "Fundo Setorial do Patrimônio Imaterial e Museologia Social consolidado e em pleno funcionamento",
          indicadores: [
            "Fundo Setorial de Patrimônio Imaterial implantado.",
            "Número de ações realizadas com recursos do Fundo Setorial do Patrimônio Imaterial e Museologia Social.",
            "Ações abrangidas.",
            "Volume de recursos aplicados"
          ]
        },
        "9.7": {
          titulo: "Executar o Programa Municipal de Patrimônio Imaterial, em cumprimento ao que determina a Lei Municipal n° 14.701, de 14 de outubro de 2013, em parceria com as Câmaras Setoriais de Culturas Populares Tradicionais e de Memória e Patrimônio Material e Imaterial do CONCULT",
          curtoPrazo: "Plano Setorial das Comunidades Tradicionais, Patrimônio Imaterial e Memória elaborado",
          medioPrazo: "Lei de criação do Plano Setorial das Comunidades Tradicionais, Patrimônio Imaterial e Memória aprovada e implantada",
          longoPrazo: "Plano Setorial das Comunidades Tradicionais, Patrimônio Imaterial e Memória consolidado",
          indicadores: [
            "Plano Setorial das Comunidades Tradicionais, Patrimônio Imaterial e Memória implantado.",
            "Número de ações realizadas"
          ]
        },
        "9.8": {
          titulo: "Fomentar a elaboração e implantação dos Planos de Salvaguarda dos Patrimônios Imateriais registrados em Campinas, em conformidade com a Lei Municipal n° 14.701, de 14 de outubro de 2013, com recursos do Fundo Setorial do Patrimônio Imaterial e Museologia Social e de outras fontes de recurso",
          curtoPrazo: "Planos de Salvaguarda dos Patrimônios Imateriais registrados elaborados e com resoluções publicadas",
          medioPrazo: "50% dos Planos de Salvaguarda dos Patrimônios Imateriais registrados executados",
          longoPrazo: "100% dos Planos de Salvaguarda dos Patrimônios Imateriais registrados anteriormente executados. Início da implementação de novos Planos de Salvaguarda que venham a surgir",
          indicadores: [
            "Planos de Salvaguarda dos Patrimônios Imateriais implantados.",
            "Resoluções publicadas.",
            "Volume de recursos investidos nas ações de salvaguarda.",
            "Porcentagem de cumprimento dos Planos de Salvaguarda dos Patrimônios Imateriais"
          ]
        },
        "9.9": {
          titulo: "Criar Programa Municipal de Mestras, Mestres, Griôs e Aprendizes de Tradição Oral de Campinas, com o objetivo de reconhecimento oficial dos saberes e fazeres de tradição oral como parte integrante do patrimônio cultural imaterial de Campinas, por meio de mecanismos de fomento e proteção que garantam a permanência e a sustentabilidade das práticas de transmissão dos saberes e fazeres de tradição oral",
          curtoPrazo: "Saberes, fazeres e espaço sociocultural, político e econômico dos(as) mestres(as) e griôs e da tradição oral e griôs aprendizes reconhecidos pela própria comunidade de pertencimento destes(as) mestres(as) griôs. Estudo para criação de cadastro municipal dos saberes, fazeres e dos(as) mestres(as) e griôs elaborado. Programa Municipal de Mestras, Mestres, Griôs e Aprendizes de Tradição Oral de Campinas elaborado de forma participativa e democrática, com previsão de disponibilização de bolsas e prêmios para mestre(as) e griôs atuarem na criação de redes sociais de transmissão oral como estratégias de auto-organização para a cidadania cultural e a inclusão social das comunidades de tradição oral",
          medioPrazo: "Cadastro municipal dos saberes, fazeres e dos(as) mestres(as) e griôs implantado e disponibilizado para consulta. Lei de criação do Programa Municipal de Mestras, Mestres, Griôs e Aprendizes de Tradição Oral de Campinas aprovada e implantada, com disponibilização de bolsas para 50% das demandas apresentadas no cadastro municipal",
          longoPrazo: "Cadastro municipal dos saberes, fazeres e dos(as) mestres(as) e griôs consolidado. Programa Municipal de Mestras, Mestres, Griôs e Aprendizes de Tradição Oral de Campinas consolidado com disponibilização de bolsas para 100% das demandas apresentadas no cadastro municipal",
          indicadores: [
            "Cadastro municipal dos saberes, fazeres e dos(as) mestres(as) dos griôs e implantado.",
            "Programa Municipal de Mestras, Mestres, Griôs e Aprendizes de Tradição Oral de Campinas implantado.",
            "Número de mestres(as) e griôs cadastrados.",
            "Número de redes de transmissão oral.",
            "Número de público beneficiado.",
            "Número de bolsas oferecidas.",
            "Valor individual e total das bolsas disponibilizadas"
          ]
        },
        "10.1": {
          titulo: "Realizar eventos para promoção da reflexão e difusão acerca dos patrimônios, acervos, arqueologia, museus, biblioteca e memória, incluindo jornadas, debates e seminários. Apoiar e fomentar, com recursos materiais, técnicos, humanos e financeiros, o protagonismo conquistado pelos grupos nos eventos realizados pelos parceiros, detentores e praticantes de manifestações reconhecidas como patrimônios culturais, objetivando amplificar sua projeção",
          curtoPrazo: "01 evento anual municipal e de parceiros realizado",
          medioPrazo: "02 eventos anuais municipais e de parceiros realizados",
          longoPrazo: "03 eventos anuais municipais e de parceiros realizados",
          indicadores: [
            "Número de eventos municipais e de parceiros realizados anualmente.",
            "Quantidade de público nos eventos"
          ]
        },
        "10.2": {
          titulo: "Publicar revista on-line especializada sobre patrimônio, acervos, arqueologia, museus, bibliotecas e memória",
          curtoPrazo: "01 publicação especializada realizada anualmente",
          medioPrazo: "01 publicação especializada realizada por semestre",
          longoPrazo: "01 publicação especializada realizada por semestre",
          indicadores: [
            "Número de publicação especializada realizada.",
            "Número de acessos"
          ]
        },
        "10.3": {
          titulo: "Implantar programa de educação patrimonial com a realização de inventários nas APGs e nas escolas",
          curtoPrazo: "Metodologia de educação patrimonial por meio da realização de inventários patrimoniais participativos criada. Fórum de Patrimônio com representantes do Poder Público Municipal e Sociedade Civil realizado",
          medioPrazo: "Áreas ou bens com inventários patrimoniais participativos realizados por meio de parcerias e com escolas participantes. 30% das APGs com suas áreas ou bens com inventários patrimoniais participativos realizados por meio de parcerias e com escolas participantes",
          longoPrazo: "Áreas ou bens com inventários patrimoniais participativos realizados por meio de parcerias e com escolas participantes. 60% das APGs com suas áreas ou bens com inventários patrimoniais participativos realizados por meio de parcerias e com escolas participantes",
          indicadores: [
            "Número de áreas ou bens com inventários patrimoniais participativos realizados por meio de parcerias.",
            "Número de inventários realizados.",
            "Número de escolas participantes.",
            "Número de alunos participantes"
          ]
        },
        "10.4": {
          titulo: "Criar portal do patrimônio para difusão permanente das ações, com informações, notícias e bancos de imagens de manifestações registradas e bens tombados",
          curtoPrazo: "Processos de registro e tombamento digitalizados. Banco de imagens das manifestações registradas e bens tombados disponibilizado. Portal planejado e em implementação",
          medioPrazo: "Processos de registro e tombamento digitalizados. Banco de imagens das manifestações registradas e bens tombados disponibilizados. Portal implementado e atualizado",
          longoPrazo: "Processos de registro e tombamento digitalizados. Banco de imagens das manifestações registradas e bens tomados disponibilizado. Portal consolidado",
          indicadores: [
            "Número de processos de registro e de tombamento digitalizados.",
            "Número de acessos ao portal.",
            "Ações realizadas"
          ]
        },
        "11.1": {
          titulo: "Implantar o Sistema Municipal de Museus para formulação de diretrizes, formação e suporte técnico museológico e operacional e integração dos espaços museológicos e centros de memória, a partir de programas, projetos e ações conjuntas e compartilhadas",
          curtoPrazo: "Lei de criação do Sistema Municipal de Museus aprovada. Plano Museológico dos Museus Municipais formulado",
          medioPrazo: "Sistema Municipal de Museus implantado. Lei de instituição do Plano Museológico dos Museus aprovada e implantada",
          longoPrazo: "Sistema Municipal de Museus consolidado. Plano Museológico dos Museus Municipais consolidado",
          indicadores: [
            "Sistema Municipal de Museus implantado.",
            "Plano Museológico dos Museus Municipais implantado"
          ]
        },
        "11.2": {
          titulo: "Implantar o Sistema Municipal de Bibliotecas para formulação de diretrizes, formação e suporte técnico e operacional de bibliotecas e integração dos espaços de informação e leitura, a partir de programas, projetos e ações conjuntas e compartilhadas",
          curtoPrazo: "Lei de criação do Sistema Municipal de Bibliotecas encaminhado à Câmara Municipal de Campinas para aprovação",
          medioPrazo: "Lei de criação do Sistema Municipal de Bibliotecas aprovada e implantada",
          longoPrazo: "Sistema Municipal de Bibliotecas consolidado",
          indicadores: [
            "Sistema Municipal de Bibliotecas implantado"
          ]
        },
        "11.3": {
          titulo: "Implementar circuito de exposições para a difusão dos acervos existentes e promoção das artes visuais",
          curtoPrazo: "10% das casas de cultura, centros culturais, CEUs e espaços museológicos municipais integrados ao circuito de exposições",
          medioPrazo: "30% das casas de cultura, centros culturais, CEUs e espaços museológicos municipais integrados ao circuito de exposições",
          longoPrazo: "50% das casas de cultura, centros culturais, CEUs e espaços museológicos municipais integrados ao circuito de exposições",
          indicadores: [
            "Percentual das casas de cultura, centros culturais, CEUs e espaços museológicos integrados ao circuito de exposições.",
            "Ações realizadas.",
            "Público das ações"
          ]
        },
        "11.4": {
          titulo: "Ampliar o público dos museus e bibliotecas públicas municipais por meio de ações educativas, incluindo visitas monitoradas, palestras e oficinas itinerantes",
          curtoPrazo: "Ações educativas em todos os museus e bibliotecas mantidas com ampliação de 10% do público",
          medioPrazo: "Ações educativas em todos os museus e bibliotecas mantidas com ampliação de 30% do público",
          longoPrazo: "Ações educativas em todos os museus e bibliotecas mantidas com ampliação de 50% do público",
          indicadores: [
            "Ações educativas realizadas nos museus e bibliotecas públicas municipais.",
            "Público participante das ações educativas nos museus e bibliotecas"
          ]
        },
        "11.5": {
          titulo: "Implantar centros de memória nos equipamentos públicos culturais municipais, considerando as temáticas e identidades territoriais",
          curtoPrazo: "Centros de memórias implantados em 2 equipamentos públicos culturais municipais",
          medioPrazo: "Centros de memórias implantados em 6 equipamentos públicos culturais municipais",
          longoPrazo: "Centros de memórias implantados em todos os equipamentos públicos culturais municipais",
          indicadores: [
            "Porcentagem de equipamentos públicos culturais municipais com centros de memória implantados"
          ]
        },
        "11.6": {
          titulo: "Mapear e articular espaços independentes de memória e promover formação e orientação técnica para conservação e guarda de acervos",
          curtoPrazo: "Espaços independentes de memória mapeados e identificados. Grupo de trabalho para criação da rede de espaços independentes de memória criado",
          medioPrazo: "Espaços independentes de memória mapeados e identificados, com formação e orientação técnica para conservação e guarda de acervos. Rede de espaços independentes de memória implantada",
          longoPrazo: "Rede de espaços independentes de memória consolidada",
          indicadores: [
            "Número de espaços de memória mapeados e identificados.",
            "Número de espaços de memória orientados.",
            "Rede de espaços independentes de memória implantada"
          ]
        },
        "11.7": {
          titulo: "Implantar o Plano Municipal do Livro e Leitura de Campinas – PMLLC",
          curtoPrazo: "Encontros e debates com associações de livreiros, autores, bibliotecários e pessoas envolvidas com o livro e leitura, para desenvolvimento do PMLLC realizados. Projeto de lei encaminhado à Câmara Municipal de Campinas para aprovação",
          medioPrazo: "Lei de instituição do PMLLC aprovada e implantada",
          longoPrazo: "PMLLC consolidado",
          indicadores: [
            "PMLLC implantado.",
            "Número de reuniões realizadas para proposição do PMLLC.",
            "Número de participantes nas ações para criação do PMLLC"
          ]
        },
        "12.1": {
          titulo: "Criar plano integrado de expansão e qualificação das reservas técnicas e dos espaços de guarda para conservação dos acervos bibliográficos e museológicos públicos municipais",
          curtoPrazo: "Plano integrado de expansão e qualificação das reservas técnicas e dos espaços de guarda de acervos do município elaborado",
          medioPrazo: "Plano integrado de expansão e qualificação das reservas técnicas e dos espaços de guarda de acervos do município parcialmente implantado",
          longoPrazo: "Plano integrado de expansão e qualificação das reservas técnicas e dos espaços de guarda de acervos do município consolidado",
          indicadores: [
            "Plano de expansão de reservas técnicas implantado"
          ]
        },
        "12.2": {
          titulo: "Criar sistema integrado de gestão, consulta e disponibilização dos acervos museológicos e bibliográficos públicos municipais",
          curtoPrazo: "Sistema integrado de gestão, consulta e disponibilização dos acervos museológicos e bibliográficos públicos municipais formulado. Base de dados dos museus e das bibliotecas públicas municipais disponibilizados, via intranet e internet, para consulta interna",
          medioPrazo: "Sistema integrado de gestão, consulta e disponibilização dos acervos museológicos e bibliográficos públicos municipais implantado, com acervos disponíveis para consulta interna. Base de dados dos museus e das bibliotecas públicas municipais disponibilizada, via intranet e internet, para consulta, parcialmente consolidada em 20%. Base de dados das bibliotecas públicas municipais disponibilizada, via intranet e internet, para reserva, parcialmente consolidada em 20%",
          longoPrazo: "Sistema integrado de gestão, consulta e disponibilização dos acervos museológicos e bibliográficos públicos municipais consolidado, com acervos e produtos desenvolvidos com apoio público disponíveis para consulta. Base de dados dos museus e das bibliotecas públicas municipais disponibilizada, via intranet e internet, para consulta, parcialmente consolidada em 60%. Base de dados das bibliotecas públicas municipais disponibilizada, via intranet e internet, para reserva, parcialmente consolidada em 60%",
          indicadores: [
            "Sistema integrado de gestão, consulta e disponibilização dos acervos museológicos e bibliográficos públicos municipais implantado.",
            "Acervos disponibilizados para consulta pública.",
            "Número de usuários cadastrados.",
            "Número de reservas de acervo bibliográfico.",
            "Número de empréstimo de acervo bibliográfico"
          ]
        },
        "12.3": {
          titulo: "Inventariar e catalogar os bens patrimoniais, considerando os acervos existentes e as novas aquisições",
          curtoPrazo: "20% dos acervos inventariados e catalogados",
          medioPrazo: "50% dos acervos inventariados e catalogados",
          longoPrazo: "100% dos acervos inventariados e catalogados",
          indicadores: [
            "Percentual dos acervos inventariados e catalogados"
          ]
        },
        "12.4": {
          titulo: "Disponibilizar os acervos públicos municipais digitalizados, para consulta on-line, considerando a diversidade e especificidade de cada acervo, bem como a legalidade, utilizando sistema integrado de gestão, consulta e disponibilização dos acervos museológicos e bibliográficos públicos municipais",
          curtoPrazo: "Mapeamento dos acervos municipais catalogados elaborado. Hemeroteca das bibliotecas públicas municipais disponibilizada para acesso digital, conforme legislação vigente",
          medioPrazo: "20% dos acervos públicos municipais catalogados disponibilizados para acesso digital. Hemeroteca das bibliotecas 100% disponibilizada",
          longoPrazo: "60% dos acervos públicos municipais catalogados disponibilizados para acesso digital",
          indicadores: [
            "Percentual de acervos públicos municipais catalogados disponíveis para acesso digital"
          ]
        },
        "12.5": {
          titulo: "Implantar tecnologias assistivas e interfaces amigáveis para garantir acessibilidade aos acervos públicos municipais, conforme suas particularidades e diversos públicos",
          curtoPrazo: "Mapeamento das tecnologias assistivas e interfaces amigáveis para disponibilização dos acervos públicos municipais",
          medioPrazo: "50% dos acervos públicos municipais catalogados. 50% dos acervos públicos municipais disponibilizados, com tecnologias assistivas e interfaces amigáveis",
          longoPrazo: "100% dos acervos públicos municipais catalogados. 100% dos acervos públicos municipais disponibilizados, com tecnologias assistivas e interfaces amigáveis",
          indicadores: [
            "Percentual de acervos públicos municipais catalogados.",
            "Percentual de acervos públicos municipais disponibilizados"
          ]
        },
        "12.6": {
          titulo: "Implantar política de desenvolvimento de coleções das bibliotecas públicas municipais, com aquisição e atualização permanentemente dos acervos, considerando a bibliodiversidade, os suportes informacionais, as necessidades territoriais e a produção independente, priorizando os autores locais e regionais",
          curtoPrazo: "Política de desenvolvimento de coleções das bibliotecas públicas municipais implantada e mapeamento da bibliodiversidade territorial realizada",
          medioPrazo: "Política de desenvolvimento de coleções das bibliotecas públicas municipais implantada. 1% do número total de exemplares existentes por biblioteca pública municipal adquirido",
          longoPrazo: "Política de desenvolvimento de coleções das bibliotecas públicas municipais consolidada. 5% do número total de exemplares existentes por biblioteca pública municipal adquirido",
          indicadores: [
            "Percentual de exemplares adquiridos anualmente com relação ao total de exemplares por equipamento público cultural municipal.",
            "Número de exemplares adquiridos.",
            "Bibliodiversidade de autoria e de títulos"
          ]
        },
        "12.7": {
          titulo: "Implantar política de preservação de acervo museológico e desenvolvimento de coleções, que levem em consideração a diversidade étnica, cultural e social bem como a necessidade de preservar acervos representativos da vida social e cultural",
          curtoPrazo: "Grupo de Trabalho para desenvolvimento de política de preservação de acervo museológico e desenvolvimento de coleções e suas metas criado",
          medioPrazo: "Política de preservação de acervo museológico e desenvolvimento de coleções desenvolvida e implantada em 50%",
          longoPrazo: "Política de preservação de acervo museológico e desenvolvimento de coleções consolidada, com 100% das metas implantadas",
          indicadores: [
            "Porcentagem de metas realizadas."
          ]
        },
        "13.1": {
          titulo: "Regularizar e regulamentar a Escola Municipal de Cultura e Arte – EMCEA quanto ao seu funcionamento e gestão, considerando: a) a integração com o campo educacional do município para coordenação e inserção da formação cultural nas atividades desenvolvidas dentro dos equipamentos educacionais, do ensino infantil ao ensino médio; b) a interação com equipamentos públicos culturais e sociais municipais, priorizando ações intersetoriais e dos territórios para implantação de oficinas e cursos adequados às demandas territoriais em todas as APGs; c) o desenvolvimento de cursos de formação artística e cultural, com perspectiva de ações pontuais e formação continuada; d) a implantação de cursos de formação técnica e profissionalizante, em parceria com o Centro de Educação Profissional de Campinas – CEPROCAMP, bem como com outras instituições de ensino; e e) a construção e implantação de plano político-pedagógico para formação cultural que forneça meios de produção de linguagem e identidade, ancestralidade e cidadania cultural, priorizando o atendimento da população em vulnerabilidade social e com maiores índices de violência urbana",
          curtoPrazo: "Legislação específica e documentação necessária para regularização e regulamentação da EMCEA levantada. Estudo de regularização e regulamentação da EMCEA elaborado, com desenvolvimento de proposta de ação por meio de programas que contemplem todas as APGs, faixas etárias, diversidades, níveis de graduação e aperfeiçoamento, linguagens artísticas e manifestações culturais. Articulação entre políticas de cultura e educação, envolvendo as suas secretarias realizada",
          medioPrazo: "Plano político-pedagógico para formação cultural elaborado. Regularização e regulamentação da EMCEA concluída. Diagnóstico de áreas já atendidas e ainda a ser atendidas elaborado",
          longoPrazo: "Regularização e regulamentação da EMCEA concluída. Lei de instituição de plano político-pedagógico para formação cultural aprovada e implantada. Congresso da EMCEA para avaliação do plano político-pedagógico para a formação cultural realizado",
          indicadores: [
            "Regularização e regulamentação da EMCEA concluída.",
            "Plano político-pedagógico para formação cultural implantado.",
            "Diagnóstico de áreas atendidas e a serem atendidas concluído.",
            "Congresso da EMCEA realizado"
          ]
        },
        "13.2": {
          titulo: "Viabilizar o funcionamento da EMCEA por meio da consolidação de corpo técnico efetivo e da contratação de oficineiros por meio de edital",
          curtoPrazo: "Cargos e vagas de caráter efetivo para provimento do corpo docente criados. Oficineiros contratados por meio de edital",
          medioPrazo: "Concurso para contratação de corpo técnico efetivo realizado. Corpo técnico contratado. Contratação de oficineiros por meio de edital ampliada em 50%",
          longoPrazo: "Corpo técnico efetivo consolidado. Contratação de oficineiros por meio de edital ampliada em 70%",
          indicadores: [
            "Número de contratações de corpos técnicos efetivos.",
            "Número de editais realizados.",
            "Número de oficineiros contratados.",
            "Horas-aulas realizadas"
          ]
        },
        "13.3": {
          titulo: "Desenvolver e criar programas e ações intersetoriais da Administração Pública, com vistas à integração das ações de formação cultural, nas quais o indivíduo seja atendido na sua totalidade, potencializando seus recursos internos e reconhecendo novas possibilidades de ser e estar no mundo",
          curtoPrazo: "Programas e ações intersetoriais existentes envolvendo cultura mapeados. 1 programa ou ação intersetorial, no mínimo, proposto pela EMCEA desenvolvido",
          medioPrazo: "Mapeamento de programas e ações da Administração Pública envolvendo cultura continuado. Participação da EMCEA efetuada em, no mínimo, 30% das ações e programas intersetoriais identificados. 3 programas ou ações intersetoriais, no mínimo, propostos pela EMCEA desenvolvidos",
          longoPrazo: "Participação da EMCEA consolidada, em no mínimo, 75% das ações e programas intersetoriais identificados. Programas e ações intersetoriais propostos pela EMCEA consolidados. 5 programas ou ações intersetoriais, no mínimo, propostos pela EMCEA desenvolvidos. Programas e ações intersetoriais reavaliados no Congresso da EMCEA",
          indicadores: [
            "Número de programas e ações realizadas.",
            "Número e diversidade de linguagens das ações e programas.",
            "Número de participantes.",
            "Perfil sociodemográfico dos participantes"
          ]
        },
        "13.4": {
          titulo: "Desenvolver e criar programas e ações interinstitucionais com vistas ao desenvolvimento de atividades integradas, que fomentem a difusão do conhecimento acadêmico, especialmente em cultura, voltadas prioritariamente às populações residentes nas regiões periféricas e em situação de vulnerabilidade social",
          curtoPrazo: "Programas e ações interinstitucionais existentes em outras instituições de ensino, pesquisa e tecnologias mapeadas. Propositura de criação de, no mínimo, 1 programa ou ação interinstitucional efetuada",
          medioPrazo: "Participação da EMCEA efetuada em, no mínimo, 30% das ações e programas interinstitucionais identificados. Programas e ações interinstitucionais propostos pela EMCEA implantados e consolidados. 1 programa ou ação interinstitucional, no mínimo, proposto pela EMCEA e desenvolvido",
          longoPrazo: "Participação da EMCEA efetuada em, no mínimo, 75% das ações e programas interinstitucionais identificados. Programas e ações interinstitucionais propostos pela EMCEA consolidados. 01 programa ou ação interinstitucional, no mínimo, proposto pela EMCEA e desenvolvido. Programas e ações interinstitucionais reavaliados no Congresso da EMCEA",
          indicadores: [
            "Número de programas realizados com a participação da EMCEA.",
            "Número de programas e ações criados.",
            "Número de participantes.",
            "Perfil sociodemográfico dos participantes"
          ]
        },
        "13.5": {
          titulo: "Desenvolver e criar programas e ações visando ao acesso da população em vulnerabilidade econômica e social às atividades pedagógicas da EMCEA, viabilizando os recursos para transporte e alimentação, por meio do estabelecimento de parcerias com outras secretarias da municipalidade, bem como empresas e instituições de ensino e afins",
          curtoPrazo: "Demandas identificadas. Parcerias efetuadas, no âmbito do setor público e privado",
          medioPrazo: "Parcerias ampliadas, visando ao atendimento de 50% da demanda",
          longoPrazo: "Parcerias ampliadas e consolidadas visando ao atendimento de 100% da demanda",
          indicadores: [
            "Número de pessoas atendidas.",
            "Recursos financeiros disponibilizados.",
            "Número de atividades realizadas nos territórios vulneráveis.",
            "Número de participantes dos programas e ações.",
            "Perfil sociodemográfico dos participantes.",
            "Porcentagem das demandas atendidas"
          ]
        },
        "13.6": {
          titulo: "Criar, consolidar e aprimorar os programas de iniciação artística, cultural e patrimonial para os mais diversos segmentos da população, utilizando, inclusive, os professores de orquestra da Orquestra Sinfônica Municipal de Campinas – O",
          curtoPrazo: "Estudo para implantação de programas de iniciação artística, cultural e patrimonial elaborado, com levantamento do número de vagas demandadas. Programas de iniciação artística, cultural e patrimonial implantados, com oferta de 30% do número de vagas demandadas",
          medioPrazo: "Programas de iniciação artística, cultural e patrimonial consolidado, com oferta de 60% do número de vagas demandadas",
          longoPrazo: "Programas de iniciação artística, cultural e patrimonial consolidado, com oferta de 100% do número de vagas demandadas",
          indicadores: [
            "Número de vagas ofertadas na EMCEA.",
            "Número de oficinas ofertadas na EMCEA.",
            "Diversidade de público atingida.",
            "Segmento cultural atendido.",
            "Número de pessoas atendidas.",
            "Quantidade de horas-aula realizadas.",
            "Perfil sociodemográfico dos participantes.",
            "Diversidade de linguagens dos programas"
          ]
        },
        "13.7": {
          titulo: "Criar, consolidar e aprimorar atividades formativas de experimentação, circulação e preservação artística, cultural, comunicacional e patrimonial, com a realização de oficinas, cursos e apresentações, inclusive da Orquestra Sinfônica Municipal de Campinas, de acordo com a capacidade de cada equipamento público cultural municipal e especificidade de cada território, contemplando a diversidade de públicos, expressões culturais e todas as APGs",
          curtoPrazo: "Atividades formativas mantidas e ampliadas de acordo com a capacidade de cada equipamento público cultural municipal, contemplando, no mínimo, 2 atividades mensais nas bibliotecas, 4 nas casas de cultura e centros culturais e 4 nos museus e órgãos de ciência",
          medioPrazo: "Atividades formativas mantidas e ampliadas de acordo com a capacidade de cada equipamento público cultural municipal, contemplando, no mínimo, 4 atividades mensais nas bibliotecas, 8 nas casas de cultura e centros culturais e 8 nos museus e órgãos de ciência",
          longoPrazo: "Atividades formativas mantidas e ampliadas de acordo com a capacidade de cada equipamento público cultural municipal, contemplando, no mínimo, 6 atividades mensais nas bibliotecas, 10 nas casas de cultura e centros culturais e 10 nos museus e órgãos de ciência",
          indicadores: [
            "Número de atividades formativas realizadas.",
            "Número de vagas ofertadas.",
            "Público atendido.",
            "Segmentos culturais atendidos.",
            "Perfil sociodemográfico dos alunos e oficineiros.",
            "Diversidade de linguagens dos programas"
          ]
        },
        "13.8": {
          titulo: "Promover a formação continuada dos trabalhadores da cultura por meio de cursos, seminários, publicações, intercâmbios, bolsas e prêmios",
          curtoPrazo: "Seminário de formação dos trabalhadores da cultura implantado e realizado anualmente. Espaço virtual dentro do Portal Cultura para divulgação de conteúdos de formação e experiências pedagógicas criado. Estudo para implantação de programas de intercâmbio, bolsas e prêmios realizado",
          medioPrazo: "Seminário de formação dos trabalhadores da cultura consolidado e realizado anualmente. Espaço virtual dentro do Portal Cultura para divulgação de conteúdos de formação e experiências pedagógicas ampliado. 1 publicação realizada anualmente. Lei de criação de programas de intercâmbio, bolsas e prêmios aprovadas e implantadas, com 1 edital lançado anualmente",
          longoPrazo: "Seminário de formação dos trabalhadores da cultura consolidado e realizado anualmente. Portal da EMCEA para suporte tecnológico às atividades pedagógicas implantado. 1 publicação realizada anualmente. Programas de intercâmbio, bolsas e prêmios consolidados, com 1 edital lançado anualmente",
          indicadores: [
            "Número de cursos, seminários, publicações e intercâmbios realizados.",
            "Número de bolsas e prêmios concedidos.",
            "Portal da EMCEA implantado.",
            "Perfil sociodemográfico dos participantes.",
            "Diversidade de linguagens das ações"
          ]
        },
        "13.9": {
          titulo: "Criar, consolidar e aprimorar os programas de longa duração e formação continuada nos mais diversos segmentos, aproveitando o corpo técnico da SECULT, inclusive os professores de orquestra da OSMC",
          curtoPrazo: "Estudo para o desenvolvimento de programa de longa duração e formação continuada elaborado. Programas intersetoriais e interinstitucionais de longa duração e formação continuada existentes identificados, visando ao estabelecimento de parcerias e ao desenvolvimento de ações conjuntas",
          medioPrazo: "Programa de longa duração de formação continuada implantado. Programas intersetoriais e interinstitucionais de longa duração e formação continuada existentes identificados, com parcerias e ações conjuntas realizadas",
          longoPrazo: "Programa de longa duração de formação continuada consolidado. Programas intersetoriais e interinstitucionais de longa duração e formação continuada existentes identificados com parcerias e ações conjuntas realizadas",
          indicadores: [
            "Quantidade de horas-aula realizadas.",
            "Quantidade de cursos realizados.",
            "Número de vagas.",
            "Programas implantados.",
            "Perfil sociodemográfico dos participantes.",
            "Diversidade de linguagens dos programas.",
            "Diversidade dos setores do Poder Público Municipal atuantes.",
            "Parcerias realizadas"
          ]
        },
        "13.10": {
          titulo: "Ampliar o ensino de arte e cultura na rede municipal de ensino por meio da articulação entre as políticas de cultura e educação, envolvendo suas secretarias e a criação de um corpo de monitores culturais",
          curtoPrazo: "Levantamento e criação de programas intersetoriais e interinstitucionais efetuado, visando à implementação dos programas existentes e à criação de novos programas de ensino de arte e cultura na rede municipal de ensino. Propositura de criação do cargo de monitor cultural efetuada",
          medioPrazo: "Programas implantados. Concurso para monitores culturais realizado. Monitores culturais contratados",
          longoPrazo: "Programas consolidados. Quadro de monitores culturais ampliado",
          indicadores: [
            "Quantidade de horas-aula realizadas.",
            "Quantidade de cursos realizados.",
            "Número de vagas.",
            "Programas implantados.",
            "Número de monitores culturais contratados.",
            "Perfil sociodemográfico dos alunos.",
            "Diversidade de linguagens dos programas.",
            "Parcerias realizadas"
          ]
        },
        "13.11": {
          titulo: "Criar e implantar programa de formação de técnicos e profissionais",
          curtoPrazo: "Estudo para o desenvolvimento de programas de formação de técnicos e profissionais na área cultural, com cursos pontuais ou de formação continuada realizado. Articulação com instituições que oferecem cursos na área para obtenção de bolsas realizada",
          medioPrazo: "Programas de formação de técnicos e profissionais na área cultural, com cursos pontuais ou de formação continuada implantados, com 30 vagas oferecidas",
          longoPrazo: "Programas de formação de técnicos e profissionais na área cultural, com cursos pontuais ou de formação continuada implantados, com 100 vagas oferecidas",
          indicadores: [
            "Número de horas-aula realizadas.",
            "Número de cursos realizados.",
            "Número de vagas.",
            "Número de programas implantados.",
            "Número de monitores contratados.",
            "Perfil sociodemográfico dos participantes.",
            "Diversidade de linguagens utilizadas nos programas"
          ]
        },
        "14.1": {
          titulo: "Criar programa de mediação cultural em todos os equipamentos públicos culturais municipais, com ações vinculadas à programação e acervos bem como à criação de roteiros de visita e à realização de concertos didáticos da Orquestra Sinfônica Municipal de Campinas – OSMC",
          curtoPrazo: "Programa de mediação cultural elaborado. 10 concertos didáticos da OSMC para escolas da rede pública realizados",
          medioPrazo: "Programa de mediação cultural implantado. 10 concertos didáticos da OSMC para escolas da rede pública e, ao menos, 1 concerto em cada território realizado anualmente. 2 atividades mensais realizadas em cada equipamento público cultural municipal",
          longoPrazo: "Programa de mediação cultural consolidado. 10 concertos didáticos da OSMC para escolas da rede pública e, ao menos, 2 concertos em cada território realizados anualmente. 4 atividades mensais realizadas em cada equipamento público cultural municipal",
          indicadores: [
            "Número de atividades de mediação cultural realizadas.",
            "Número de atividades de mediação cultural por equipamento público cultural municipal realizadas.",
            "Número de participantes nas atividades de mediação cultural.",
            "Número de concertos didáticos realizados.",
            "Público dos concertos.",
            "Perfil sociodemográfico dos participantes"
          ]
        },
        "14.2": {
          titulo: "Desenvolver e criar programas e ações intersetoriais e interinstitucionais para a mediação cultural",
          curtoPrazo: "Programas e ações intersetoriais e interinstitucionais de mediação cultural elaborados",
          medioPrazo: "Programas e ações intersetoriais e interinstitucionais de mediação cultural implantados",
          longoPrazo: "Programas e ações intersetoriais e interinstitucionais de mediação cultural consolidados",
          indicadores: [
            "Número de ações e programas realizados.",
            "Número de participantes.",
            "Perfil sociodemográfico dos participantes"
          ]
        },
        "15.1": {
          titulo: "Ampliar a programação cultural oferecida nos equipamentos e espaços públicos culturais municipais, em todas as APGs, contemplando a produção local",
          curtoPrazo: "2 atividades culturais realizadas em cada equipamento público cultural municipal, mensalmente. 2 atividades culturais realizadas em espaço público municipal aberto, em cada APG, bimestralmente",
          medioPrazo: "2 atividades culturais realizadas em cada equipamento público cultural municipal, mensalmente. 2 atividades culturais realizadas em espaço público municipal aberto, em cada APG, mensalmente",
          longoPrazo: "4 atividades culturais realizadas em cada equipamento público cultural municipal, mensalmente. 4 atividades culturais realizadas em espaço público municipal aberto, em cada APG, mensalmente",
          indicadores: [
            "Número de atividades culturais realizadas por equipamento público cultural municipal.",
            "Número de atividades culturais realizadas nas APGs em que não existam equipamentos públicos culturais municipais.",
            "Público presente.",
            "Perfil sociodemográfico do público.",
            "Diversidade das ações realizadas.",
            "Local de moradia das(os) artistas que se apresentam"
          ]
        },
        "15.2": {
          titulo: "Construir mecanismos e formas para elaboração de uma programação cultural participativa",
          curtoPrazo: "Mecanismos e formas de participação da população na elaboração dos programas culturais construídos. 50% das atividades culturais realizadas de forma participativa",
          medioPrazo: "Mecanismos e formas de participação da população na elaboração dos programas culturais implantados. 50% das atividades culturais realizadas de forma participativa",
          longoPrazo: "Mecanismos e formas de participação da população na elaboração dos programas culturais consolidados. 75% das atividades culturais realizadas de forma participativa",
          indicadores: [
            "Centros culturais e casas de cultura com programação cultural realizada de forma participativa.",
            "Percentual de centros culturais e casas de cultura com programação definida de forma participativa.",
            "Percentual da programação realizada de forma participativa, por unidade.",
            "Perfil sociodemográfico do público atendido e dos participantes da elaboração"
          ]
        },
        "15.3": {
          titulo: "Apoiar eventos e iniciativas de demanda espontânea da Sociedade Civil e de órgãos públicos que tenham coerência com as políticas culturais do município, considerando a representatividade dos segmentos, linguagens artísticas e território",
          curtoPrazo: "Cartografia das demandas da Sociedade Civil realizada e apoio a eventos de órgãos públicos ampliado em 10%",
          medioPrazo: "Apoio a eventos de demanda da Sociedade Civil e de órgãos públicos ampliado em 30%",
          longoPrazo: "Apoio a eventos de demanda da Sociedade Civil e de órgãos públicos ampliado em 50%",
          indicadores: [
            "Número de eventos apoiados por demanda da Sociedade Civil e de órgãos públicos.",
            "Público presente.",
            "Perfil sociodemográfico das pessoas atendidas para apoio.",
            "Diversidade das linguagens atendidas"
          ]
        },
        "15.4": {
          titulo: "Promover a fruição cultural e acessibilidade comunicacional em eventos e atividades de programação cultural por meio de tecnologias assistivas, assegurando a participação de pessoas com deficiência",
          curtoPrazo: "Grupo de trabalho para estudo e mapeamento de tecnologias assistivas para fruição cultural, acessibilidade comunicacional e mapeamento das condições de acessibilidade dos equipamentos públicos culturais municipais, em diálogo com grupos e instituições que trabalham a questão das acessibilidades, criado",
          medioPrazo: "Tecnologias assistivas para fruição cultural e acessibilidade comunicacional implantadas em eventos públicos municipais de grande porte, em 50% dos equipamentos públicos culturais municipais e nos materiais de divulgação da programação pública cultural municipal, a partir do mapeamento realizado",
          longoPrazo: "Tecnologias assistivas para fruição cultural e acessibilidade comunicacional implantadas em 100% dos equipamentos públicos culturais municipais e nos materiais de divulgação da programação pública cultural municipal, a partir do mapeamento realizado",
          indicadores: [
            "Tecnologias assistivas mapeadas implantadas.",
            "Mapeamento das condições de acessibilidade dos equipamentos públicos culturais municipais realizado.",
            "Número de ações acessíveis.",
            "Perfil sociodemográfico do público atendido.",
            "Diversidade das ações assistidas"
          ]
        },
        "16.1": {
          titulo: "Implantar programa de fomento à cultura da periferia, popular e de base comunitária que envolvam questões de raça, gênero, orientação sexual, etnia, cultura histórica e qualquer outra que necessite de enfoques específicos para apoio financeiro de projetos e ações de agentes, coletivos artísticos e culturais, em todas as APGs ou bolsões com altos índices de vulnerabilidade social",
          curtoPrazo: "Grupo de trabalho para elaboração do programa de fomento à cultura da periferia, popular e de base comunitária que envolvam questões de raça, gênero, orientação sexual, etnia, cultura histórica e qualquer outra que necessite de enfoques específicos criado, com diagnóstico produzido a partir dos processos de museologia social. Programa de fomento à cultura da periferia, popular e de base comunitária que envolvam questões de raça, gênero, orientação sexual, etnia, cultura histórica e qualquer outra que necessite de enfoques específicos desenvolvido, com previsão orçamentária anual. Projeto de lei enviado à Câmara Municipal de Campinas para aprovação",
          medioPrazo: "Lei que institui o programa de fomento à cultura da periferia, popular e de base comunitária que envolvam questões de raça, gênero, orientação sexual, etnia, cultura histórica e qualquer outra que necessite de enfoques específicos aprovada e programa implantado, com 1 edital lançado anualmente",
          longoPrazo: "Programa de fomento à cultura da periferia, popular e de base comunitária que envolvam questões de raça, gênero, orientação sexual, etnia, cultura histórica e qualquer outra que necessite de enfoques específicos consolidado, com 1 edital lançado anualmente",
          indicadores: [
            "Número de editais lançados.",
            "Número de projetos apoiados por área ou segmento cultural.",
            "Número de APGs com projetos contemplados pelo programa.",
            "Valor do orçamento anual.",
            "Perfil sociodemográfico dos contemplados"
          ]
        },
        "16.2": {
          titulo: "Implantar a Política Municipal Cultura Viva, em cumprimento à Lei Nacional nº 13.018, de 22 de julho 2014 e Lei Municipal nº 15.089, de 9 de novembro de 2015 – Lei Cultura Viva.",
          curtoPrazo: "Lei Municipal nº 15.089, de 9 de novembro de 2015 – Lei Cultura Viva regulamentada. Cadastro municipal dos pontos de cultura de Campinas implantado",
          medioPrazo: "1 edital para pontos e pontões de cultura lançado bianualmente, contemplando, no mínimo, 20 pontos e 2 pontões. Atividades de formação, fortalecimento da rede municipal de pontos de cultura e articulação com demais redes realizadas periodicamente. Teia Municipal realizada com regularidade, nos termos da Instrução Normativa do Ministério da Cultura nº 08, de 11 de maio de 2016. Encontros do Cultura Viva com participação de pontos e pontões de cultura de Campinas",
          longoPrazo: "1 edital para pontos e pontões de cultura lançado bianualmente, contemplando, no mínimo, 40 pontos e 4 pontões. Atividades de formação, fortalecimento da rede municipal de pontos de cultura e articulação com demais redes realizadas periodicamente. Teia Municipal realizada com regularidade, nos termos da Instrução Normativa do Ministério da Cultura nº 08, de 11 de maio de 2016. Encontros do Cultura Viva com participação de Pontos e Pontões de Cultura de Campinas",
          indicadores: [
            "Programa Cultura Viva Municipal implantado.",
            "Número de editais lançados.",
            "Número de organizações apoiadas e premiadas.",
            "Número de APGs com pontos e pontões de cultura em funcionamento.",
            "Número de atividades de formação e articulação em rede realizadas.",
            "Número de teias municipais realizadas.",
            "Número de pessoas atingidas pelos projetos.",
            "Diversidade de linguagens.",
            "Perfil sociodemográfico do público atingido."
          ]
        },
        "16.3": {
          titulo: "Promover a diversidade cultural por meio de ações de reconhecimento, valorização, fortalecimento e articulação, a partir da contratação de agentes comunitários para atuação territorial e com segmentos historicamente não atendidos pelas políticas culturais municipais",
          curtoPrazo: "Estudo para desenvolvimento de programa para agentes comunitários de cultura efetuado, com previsão de disponibilização de bolsa para custeio de despesa",
          medioPrazo: "Lei de criação de programa para agentes comunitários de cultura implantado, com 1 edital de bolsas lançado anualmente",
          longoPrazo: "Programa para agentes comunitários de cultura consolidado, com 1 edital de bolsas lançado anualmente",
          indicadores: [
            "Programa de agentes comunitários de cultura implantado.",
            "Número de editais lançados.",
            "Número de bolsas disponibilizadas.",
            "Perfil sociodemográfico dos contemplados pelo programa.",
            "Valor unitário e total das bolsas"
          ]
        },
        "16.4": {
          titulo: "Desenvolver programa de inclusão de estudantes da rede pública municipal de ensino nas ações culturais",
          curtoPrazo: "Estudo para desenvolvimento de programa de inclusão de estudantes da rede pública municipal de ensino nas ações culturais iniciado",
          medioPrazo: "Lei de criação de programa de inclusão de estudantes da rede pública municipal de ensino nas ações culturais aprovada e implantada, com 1 edital lançado anualmente, com previsão de 5 bolsas anuais de estudo para curso de formação na área cultural",
          longoPrazo: "Programa de inclusão de estudantes da rede pública municipal de ensino nas ações culturais consolidado, com 1 edital lançado anualmente, com previsão de 20 bolsas anuais de estudo para curso de formação na área cultural.",
          indicadores: [
            "Programa de inclusão de estudantes da rede pública municipal de ensino nas ações culturais implantado.",
            "Número de bolsas disponibilizadas anualmente.",
            "Perfil sociodemográfico dos contemplados pelo programa"
          ]
        },
        "16.5": {
          titulo: "Implantar programa municipal de pontos de memória, visando ao reconhecimento e ao fomento dos grupos culturais que atuam na preservação cultural em Campinas. Produzir memória audiovisual e em outros formatos de culturas e de práticas culturais tradicionais",
          curtoPrazo: "Estudo para desenvolvimento de programa municipal de pontos de memória realizado, com proposta de destinação de recursos orçamentários. Mapeamento de culturas e de práticas culturais tradicionais efetuado",
          medioPrazo: "Lei de criação de programa municipal de pontos de memória aprovada e implantada. 8 pontos de memória reconhecidos e premiados e 30 produtos, na área de cinema, fotografia, multimídia, web, jogos eletrônicos, entre outros, produzidos",
          longoPrazo: "10 pontos de memória reconhecidos, premiados e integrados em redes e 30 produtos na área de cinema, fotografia, multimídia, web, jogos eletrônicos, entre outros, produzidos",
          indicadores: [
            "Culturas e práticas culturais identificadas.",
            "Número de pontos de memória reconhecidos e premiados.",
            "Número de pontos de memória autossustentados.",
            "Número de produtos produzidos"
          ]
        },
        "16.6": {
          titulo: "Implantar processos de museologia social em todas as APGs, tendo como referência os polos e casas de cultura, visando ao desenvolvimento local integrado e sustentável",
          curtoPrazo: "30% das APGs inventariadas",
          medioPrazo: "60% das APGs inventariadas e 30% dos processos de museologia social concluídos",
          longoPrazo: "100% das APGs inventariadas e 60% dos processos de museologia social concluídos",
          indicadores: [
            "Número de APGs inventariadas com seus processos de museologia social concluídos"
          ]
        },
        "16.7": {
          titulo: "Desenvolver programa de inclusão de estudantes universitários nas ações culturais de cidadania cultural que envolvam a Prefeitura de Campinas, a Secretaria de Cultura e a extensão universitária de universidades públicas e privadas, com o objetivo de criar e estruturar rede de troca e produção de conhecimento entre estudantes, professores, pesquisadores, pontos de cultura, coletivos, espaços e agentes culturais, para ampliar a formação dos estudantes e fortalecer as iniciativas culturais em seus conhecimentos e suas práticas",
          curtoPrazo: "Estudo para implantação do programa de inclusão de estudantes universitários nas ações culturais de cidadania cultural finalizado",
          medioPrazo: "Lei de criação de programa de inclusão de estudantes universitários nas ações culturais de cidadania cultural implantado, com 1 edital lançado anualmente, com 30 bolsas para estudantes",
          longoPrazo: "Programa de inclusão de estudantes universitários nas ações culturais de cidadania cultural consolidado, com 1 edital lançado anualmente, com 50 bolsas para estudantes",
          indicadores: [
            "Número de universidades participantes.",
            "Número de editais lançados.",
            "Número de cursos realizados.",
            "Número de bolsas concedias.",
            "Variedade de trabalhos e linguagens.",
            "Número de iniciativas culturais.",
            "Número de pessoas atingidas.",
            "Perfil sociodemográfico dos contemplados pelo programa"
          ]
        },
        "16.8": {
          titulo: "Implantar programa municipal de educomunicação, em todas as APGs, tendo como referência os polos, pontos de cultura e casas de cultura, visando à apropriação das linguagens e tecnologias da informação e da comunicação para a produção partilhada de conhecimento e difusão dos conteúdos e das produções dos diversos territórios culturais de Campinas",
          curtoPrazo: "Estudo para desenvolvimento de programa municipal de educomunicação iniciado, com previsão de destinação de recursos orçamentários para aquisição de equipamentos e formação de equipes de educomunicadores",
          medioPrazo: "Lei de criação de programa municipal de educomunicação aprovada e programa implantado em 100% dos equipamentos públicos culturais municipais. 1 edital para formação de educomunicadores lançado anualmente. Curso para formação de educadores realizado",
          longoPrazo: "Programa municipal de educomunicação consolidado. 1 edital para formação de educomunicadores lançado anualmente. Educomunicadores formados atuando como multiplicadores",
          indicadores: [
            "Programa municipal de educomunicação implantado.",
            "Número de editais lançados.",
            "Número de educomunicadores formados.",
            "Número de polos de cultura e casas de cultura com programas de educomunicação em funcionamento.",
            "Perfil sociodemográfico dos contemplados pelo programa"
          ]
        },
        "16.9": {
          titulo: "Implantar o Sistema Municipal de Polos e Casas de Cultura para formulação de diretrizes, formação e suporte técnico e operacional, constituindo-se a rede integrativa de informação dos projetos, programas e ações compartilhadas",
          curtoPrazo: "Lei de criação do Sistema Municipal de Polos e Casas de Cultura aprovada e implantada, com 30% dos equipamentos culturais adequados ao sistema",
          medioPrazo: "Sistema Municipal de Polos e Casas de Cultura implantado, com 60% dos equipamentos culturais adequados ao sistema",
          longoPrazo: "Sistema Municipal de Polos e Casas de Cultura consolidado, com 100% dos equipamentos culturais adequados ao sistema",
          indicadores: [
            "Sistema Municipal de Polos e Casas de Cultura implantado"
          ]
        },
        "17.1": {
          titulo: "Criar o Fundo Municipal de Cultura – FMC. Revisar, reestruturar e adequar o Fundo de Investimentos Culturais de Campinas – FICC ao FMC, inclusive desvinculando a avaliação das propostas dos editais de cultura do CONCULT. Criar o Fundo Setorial das Artes, objetivando a ampliação do acesso e diversificação das matrizes contempladas, linguagens e segmentos, com atenção ao acesso às comunidades de base e ao caráter social, educacional e inclusivo das ações, e a extensão das contrapartidas sociais para realização nas APGs. Fortalecer e regulamentar os processos de seleção dos editais de financiamento dos fundos municipais de cultura, com a criação de mecanismos de transparência e publicização dos critérios de avaliação e das seleções. Manter regularidade do lançamento de editais de financiamento direto a ações culturais",
          curtoPrazo: "1 edital de seleção para financiamento de projetos culturais com recursos do FICC lançado anualmente. Estudo para revisão, reestruturação e adequação do FICC ao FMC iniciado. Estudo para criação do Fundo Setorial das Artes – FUSA iniciado. Estudo para vinculação orçamentária do Fundo Municipal de Cultura e do FUSA iniciado. Estudo para ampliação de matrizes, linguagens e segmentos iniciado. Estudo para regulamentação dos processos de seleção dos editais de financiamento dos fundos municipais de cultura, com a criação de mecanismos de transparência e publicização dos critérios de avaliação e das seleções, iniciado",
          medioPrazo: "Lei de alteração do FICC para FMC aprovada e implantada. Lei de criação do FUSA aprovada e implantada. 1 edital com recursos do FMC lançado anualmente. 1 edital com recursos do FUSA lançado anualmente. Regulamentação dos processos de seleção dos editais de financiamento dos fundos municipais de cultura, com a criação de mecanismos de transparência e publicização dos critérios de avaliação e das seleções, implantada",
          longoPrazo: "FMC consolidado. FUSA consolidado. 1 edital com recursos do FMC lançao anualmente. 1 edital com recursos do FUSA lançado anualmente",
          indicadores: [
            "FMC criado.",
            "FUSA criado.",
            "Recursos destinados aos editais.",
            "Número de editais lançados.",
            "Número de projetos apoiados.",
            "Linguagens e segmentos culturais contemplados.",
            "APGs contempladas.",
            "Número de pessoas atendidas.",
            "Perfil sociodemográfico dos contemplados.",
            "Perfil sociodemográfico do público atingido"
          ]
        },
        "17.2": {
          titulo: "Criar programa de fomento aos diversos segmentos artísticos, contemplando todas as fases da cadeia produtiva – pesquisa, criação, produção e circulação, com caráter continuado, atendendo a todas as APGs",
          curtoPrazo: "Projeto de lei encaminhado à Câmara Municipal de Campinas para aprovação",
          medioPrazo: "Lei de criação de programa de fomento aos diversos segmentos artísticos aprovada e implantada, com 1 edital lançado anualmente",
          longoPrazo: "Programa de fomento aos diversos segmentos artísticos consolidado, com 1 edital lançado anualmente",
          indicadores: [
            "Programa de fomento aos diversos segmentos artísticos implantado.",
            "Recursos destinados aos editais.",
            "Número de editais lançados.",
            "Número de projetos apoiados.",
            "Linguagens e segmentos contemplados.",
            "Número de APGs com projetos contemplados.",
            "Perfil sociodemográfico dos contemplados.",
            "Perfil sociodemográfico do público atingido"
          ]
        },
        "17.3": {
          titulo: "Implantar programa de apoio a projetos de inclusão, cidadania e cultura digital que promovam a ocupação dos espaços públicos nos diversos territórios do município e o uso de tecnologias digitais livres",
          curtoPrazo: "Lei de criação de programa de apoio a projetos de inclusão, cidadania e cultura digital desenvolvida",
          medioPrazo: "Lei de criação de programa de apoio a projetos de inclusão, cidadania e cultura digital aprovado e implantada. 1 edital lançado anualmente",
          longoPrazo: "Programa de apoio a projetos de inclusão, cidadania e cultura digital consolidado. 1 edital lançado anualmente",
          indicadores: [
            "Programa de apoio a projetos de inclusão, cidadania e cultura digital implantado.",
            "Valor destinado aos editais.",
            "Número de projetos apoiados.",
            "Número de APGs com projetos contemplados.",
            "Perfil sociodemográfico dos contemplados.",
            "Perfil sociodemográfico do público atingido"
          ]
        },
        "17.4": {
          titulo: "Realizar seminário com oferecimento de oficinas de elaboração de projetos, administração de recursos financeiros e prestação de contas, previamente a cada edital de fomento lançado, de modo a ampliar o acesso aos fomentos e atender à diversidade cultural",
          curtoPrazo: "Seminários e oficinas de elaboração de projetos, administração de recursos financeiros e prestação de contas realizados a cada edital de fomento lançado",
          medioPrazo: "Seminários e oficinas de elaboração de projetos, administração de recursos financeiros e prestação de contas realizados a cada edital de fomento lançado",
          longoPrazo: "Seminários e oficinas de elaboração de projetos, administração de recursos financeiros e prestação de contas realizados a cada edital de fomento lançado",
          indicadores: [
            "Número de seminários e de oficinas de elaboração de projetos, administração de recursos financeiros e prestação de contas realizados.",
            "Número de participantes.",
            "Perfil Sociodemográfico dos participantes"
          ]
        },
        "17.5": {
          titulo: "Desenvolver e implantar programa municipal do audiovisual, com enfoque nas áreas de cinema, fotografia, multimídia, web, jogos eletrônicos, entre outros",
          curtoPrazo: "Desenvolvimento de proposta de programa municipal do audiovisual concluído",
          medioPrazo: "Lei de criação de programa municipal do audiovisual aprovada e implantada. 1 edital lançado anualmente",
          longoPrazo: "Programa municipal do audiovisual consolidado. 1 edital lançado anualmente",
          indicadores: [
            "Programa municipal do audiovisual implantado.",
            "Número de editais lançados.",
            "Número de audiovisuais produzidos.",
            "Número de participantes.",
            "Perfil sociodemográfico dos contemplados.",
            "Perfil sociodemográfico do público atingido"
          ]
        },
        "17.6": {
          titulo: "Criar programa de fomento de projetos de comunicação cultural de base comunitária que fortaleçam ações de comunicação popular, tais como web TV, rádios comunitárias, mídias digitais, mídias impressas, constituindo-se a rede integrativa de comunicação",
          curtoPrazo: "Grupo de trabalho para o desenvolvimento de proposta de programa de fomento de projetos de comunicação cultural de base comunitária criado. Proposta de programa de fomento de projetos de comunicação cultural de base comunitária concluído",
          medioPrazo: "Lei de criação de programa de fomento de projetos de comunicação cultural de base comunitária aprovada e implantada. 1 edital lançado anualmente, com 10 projetos contemplados",
          longoPrazo: "Programa de fomento de projetos de comunicação cultural de base comunitária consolidado. 1 edital lançado anualmente, com 30 projetos contemplados",
          indicadores: [
            "Programa de fomento de projetos de comunicação cultural de base comunitária implantado.",
            "Valor destinado por edital.",
            "Número de projetos fomentados.",
            "Número de meios contemplados.",
            "Número de APGs contempladas.",
            "Número de pessoas atendidas.",
            "Perfil sociodemográfico dos contemplados.",
            "Perfil sociodemográfico do público atingido"
          ]
        },
        "18.1": {
          titulo: "Promover, realizar e apoiar ações de formação para a sustentabilidade voltadas às cadeias produtivas da cultura e arranjos produtivos locais",
          curtoPrazo: "Formação para a sustentabilidade de empreendimentos culturais com, no mínimo, 15 vagas oferecidas anualmente",
          medioPrazo: "Formação para a sustentabilidade de empreendimentos culturais com, no mínimo, 30 vagas oferecidas anualmente",
          longoPrazo: "Formação para a sustentabilidade de empreendimentos culturais com, no mínimo, 45 vagas oferecidas anualmente",
          indicadores: [
            "Número de vagas oferecidas.",
            "Número de empreendimentos formados.",
            "Número de pessoas participantes.",
            "Perfil sociodemográfico dos participantes"
          ]
        },
        "18.2": {
          titulo: "Fomentar a produção local e sustentável na economia da cultura por meio da contratação de fornecedores e trabalhadores locais ou pertencentes a grupos vulneráveis",
          curtoPrazo: "Fornecedores, trabalhadores locais e empresas da economia da cultura cadastrados. Eventos do calendário municipal com contratações e compras públicas sustentáveis implantadas",
          medioPrazo: "Cadastro de fornecedores, trabalhadores locais e empresas da economia da cultura mantido atualizado. Órgãos e equipamentos da SECULT com contratações e compras públicas sustentáveis implantadas",
          longoPrazo: "Cadastro de fornecedores, trabalhadores locais e empresas da economia da cultura mantido atualizado. Eventos do circuito municipal de cultura com contratações e compras públicas sustentáveis implantadas",
          indicadores: [
            "Número de novas empresas da economia da cultura cadastradas.",
            "Número de eventos com contratações e compras públicas sustentáveis.",
            "Número de empresas contratadas por meio de compras públicas sustentáveis.",
            "Percentual de contratos com exclusividade para micro e pequenas empresas.",
            "Número de trabalhadores pertencentes a grupos vulneráveis contratados"
          ]
        },
        "18.3": {
          titulo: "Implantar critérios de sustentabilidade nos mecanismos de financiamento, de modo a contemplar e promover a articulação de diferentes elos da cadeia produtiva e a participação em redes, o desenvolvimento de modelos colaborativos e valores de cooperação, o grau de inovação para a cultura no município, a formação de hábitos culturais, a transversalidade da cultura e das artes com outras áreas e ações públicas municipais e a viabilidade dos projetos e sua continuidade",
          curtoPrazo: "Estudo para definição de critérios de sustentabilidade concluído",
          medioPrazo: "Critérios de sustentabilidade implantados em 100% dos mecanismos de financiamento",
          longoPrazo: "Critérios de sustentabilidade implantados em 100% dos mecanismos de financiamento",
          indicadores: [
            "Percentual de mecanismos de financiamento com critérios de sustentabilidade implantados"
          ]
        },
        "18.4": {
          titulo: "Implantar ações de incentivo à cultura local da zona rural e das Áreas de Preservação Ambiental – APAs do município, de maneira sustentável, bem como promover o fortalecimento de fornecedores e produtores rurais familiares e sustentáveis por meio do estreitamento de laços com o setor de ações culturais",
          curtoPrazo: "Estudo para mapeamento das ações culturais e dos fornecedores de agricultura familiar e sustentável nas zonas rurais e APAs que sejam feitas seguindo critérios de sustentabilidade e com os planos de manejo em vigor realizado. Estudo para criação de legislação específica de incentivo à cultura local da zona rural e das APAs iniciado",
          medioPrazo: "Ações culturais da zona rural e APAs 100% mapeadas. Lei de incentivo à cultura local da zona rural e das APAs aprovada e implantada. 1 edital de incentivo à cultura local da zona rural e das APAs lançado anualmente. Programa de fortalecimento de produtores locais sustentáveis implementado",
          longoPrazo: "Ações culturais da zona rural e APAs e fornecedores rurais sustentáveis 100% mapeadas. 1 edital de incentivo à cultura local da zona rural e das APAs lançado anualmente",
          indicadores: [
            "Lei de incentivo à cultura local da zona rural e das APAs implantada.",
            "Número de ações mapeadas.",
            "Valor destinado a cada edital.",
            "Número de projetos financiados.",
            "Número de pessoas atendidas.",
            "Perfil sociodemográfico dos contemplados.",
            "Perfil sociodemográfico do público atingido"
          ]
        },
        "18.5": {
          titulo: "Promover iniciativas culturais colaborativas que alavanquem recursos com foco em projetos de engajamento e articulação em rede, por meio de financiamento coletivo (crowdfunding) e da colaboração para criação de conteúdos, ideias e serviços (crowdsourcing) em todas as regiões do município",
          curtoPrazo: "2 oficinas e ações de divulgação das plataformas e conceitos existentes realizadas no primeiro ano. Lançamento de uma plataforma para difusão das informações sobre os projetos da cidade que buscam financiamento",
          medioPrazo: "2 oficinas e ações de divulgação das plataformas e conceitos existentes realizadas anualmente. Plataforma para difusão das informações sobre os projetos da cidade que buscam financiamento implantada e em funcionamento",
          longoPrazo: "2 oficinas e ações de divulgação das plataformas e conceitos existentes realizadas anualmente. Plataforma para difusão das informações sobre os projetos da cidade que buscam financiamento em funcionamento",
          indicadores: [
            "Número de oficinas realizadas.",
            "Número de pessoas formadas.",
            "Número de projetos divulgados.",
            "Número de projetos elaborados.",
            "Perfil sociodemográfico das pessoas formadas.",
            "Número de projetos divulgados e que tiveram sucessona captação"
          ]
        },
        "18.6": {
          titulo: "Implantar polos culturais e criativos para estimular o desenvolvimento de atividades econômicas em territórios específicos relacionados ao patrimônio cultural, às artes, às mídias, à moda e ao design e serviços criativos, com incentivos fiscais e incubação de empreendimentos criativos e espaços compartilhados de trabalho (coworkings)",
          curtoPrazo: "Estudo para o desenvolvimento de modelos híbridos de ocupação dos polos culturais e criativos voltados à sustentabilidade de ações e empreendimentos culturais elaborado. Estudos para o desenvolvimento de laboratório de experimentação e inovação na área artístico-cultural e de modelos de incubadora de empreendimentos criativos, empresas iniciantes que desenvolvem produtos ou processos de inovação (startups) e coworkings realizado",
          medioPrazo: "Lei de criação de modelos híbridos de ocupação dos polos culturais e criativos aprovada e implantada. Laboratório de experimentação e inovação na área artístico-cultural e de modelos de incubadora de empreendimentos criativos, startups e coworkings implantados por meio de edital lançado anualmente. Oficinas para orientação à criação de empreendimentos criativos, startups e coworkings realizadas",
          longoPrazo: "Modelos híbridos de ocupação dos polos culturais e criativos consolidados. Laboratório de experimentação e inovação na área artístico-cultural e de modelos de incubadora de empreendimentos criativos, startups e coworkings consolidados por meio de edital lançado anualmente. Oficinas para orientação à criação de empreendimentos criativos, startups e coworkings realizadas",
          indicadores: [
            "Lei de criação de modelos híbridos de ocupação dos polos culturais e criativos implantada.",
            "Valor destinado a cada edital.",
            "Número de editais lançados.",
            "Número de projetos culturais financiados.",
            "Modelo de ocupação de polos culturais e criativos formulado.",
            "Número de polos culturais e criativos em funcionamento.",
            "Número de empreendimentos criativos, startups e coworkings assessorados.",
            "Número de oficinas realizadas"
          ]
        },
        "19.1": {
          titulo: "Mapear cadeias produtivas e arranjos produtivos locais dos segmentos da economia da cultura e de outros segmentos correlatos, por meio de seminários, pesquisas e análises dos dados do SMIIC",
          curtoPrazo: "Método de mapeamento das cadeias produtivas e arranjos locais dos segmentos da economia da cultura e de outros segmentos correlatos desenvolvido",
          medioPrazo: "50% das APGs com áreas da economia da cultura e outros segmentos correlatos com cadeias produtivas e arranjos produtivos locais mapeados",
          longoPrazo: "100% das APGs com áreas da economia da cultura e outros segmentos correlatos com cadeias produtivas e arranjos produtivos locais mapeados",
          indicadores: [
            "Número de áreas mapeados.",
            "Número de cadeias produtivas mapeadas.",
            "Número de arranjos produtivos locais mapeados.",
            "Número de APGs mapeadas"
          ]
        },
        "19.2": {
          titulo: "Promover, realizar e apoiar eventos de articulação e acesso a mercados, como encontros, festivais, mostras e feiras, voltados às cadeias produtivas e arranjos produtivos locais, de pequeno, médio e grande porte em diferentes regiões do município",
          curtoPrazo: "Método de mapeamento das cadeias produtivas e arranjos locais dos segmentos da economia da cultura desenvolvido. 100% das cadeias produtivas e arranjos produtivos locais mapeados. Eventos regulares de articulação e acesso a mercados realizados em 25% das APGs, com, no mínimo, 30% dos produtores dessas cadeias produtivas locais contratados, priorizando os de pequeno e médio porte",
          medioPrazo: "100% das cadeias produtivas e arranjos produtivos locais mapeados. Eventos regulares de articulação e acesso a mercados realizados em 50% das APGs, com, no mínimo, 30% dos produtores dessas cadeias produtivas locais contratados, priorizando os de pequeno e médio porte",
          longoPrazo: "100% das cadeias produtivas e arranjos produtivos locais mapeados. Eventos regulares de articulação e acesso a mercados realizados em 100% das APGs, com, no mínimo, 30% dos produtores dessas cadeias produtivas locais contratados, priorizando os de pequeno e médio porte",
          indicadores: [
            "Número de eventos de articulação e acesso a mercados realizados.",
            "Número de regiões do município com eventos de articulação e acesso a mercados realizados.",
            "Número de produtores contratados.",
            "Perfil sociodemográfico dos produtores"
          ]
        },
        "19.3": {
          titulo: "Mapear e fomentar a produção de artistas, grupos e fazedores de cultura que atuem na rua",
          curtoPrazo: "Lei que dispõe sobre a apresentação de artistas de rua nos logradouros públicos aprovada e implantada. Mapeamento de artistas, grupos e fazedores de cultura que atuem na rua realizado",
          medioPrazo: "Apresentação de artistas de rua nos logradouros públicos consolidada. Mapeamento de artistas, grupos e fazedores de cultura que atuem na rua atualizado",
          longoPrazo: "Apresentação de artistas de rua nos logradouros públicos consolidada. Mapeamento de artistas, grupos e fazedores de cultura que atuem na rua atualizado",
          indicadores: [
            "Artistas, grupos e fazedores de cultura mapeados.",
            "Lei que dispõe sobre a apresentação de artistas de rua nos logradouros públicos implantada.",
            "Perfil sociodemográfico dos artistas, grupos e fazedores de cultura"
          ]
        },
        "19.4": {
          titulo: "Promover intercâmbio estadual, nacional e internacional voltado à formação, difusão, articulação e acesso a mercados nas diversas cadeias produtivas e arranjos produtivos locais",
          curtoPrazo: "Estudo para desenvolvimento de programa de intercâmbio e representação da produção e conteúdos locais em eventos estaduais, nacionais e internacionais",
          medioPrazo: "Lei de criação de programa de intercâmbio e representação da produção e conteúdos locais em eventos estaduais, nacionais e internacionais aprovada e implantada. Intercâmbio e representação da produção e conteúdos locais realizados com regularidade e periodicidade",
          longoPrazo: "Programa de intercâmbio e representação da produção e conteúdos locais em eventos estaduais, nacionais e internacionais consolidado. Intercâmbio e representação da produção e conteúdos locais realizados com regularidade e periodicidade",
          indicadores: [
            "Programa de intercâmbio e representação da produção e conteúdos locais em eventos estaduais, nacionais e internacionais implantado.",
            "Número de intercâmbios realizados.",
            "Número de eventos com representação da produção e conteúdos locais realizados.",
            "Volume de recursos investido em bolsas, prêmios e incentivos para a promoção do conteúdo local"
          ]
        },
        "19.5": {
          titulo: "Implantar o Alvará de Ocupação Criativa",
          curtoPrazo: "Grupo de trabalho para estudo e desenvolvimento de projeto de lei de criação do Alvará de Ocupação Criativa concluído, com alteração da Lei nº 6.031, de 28 de dezembro de 1988",
          medioPrazo: "Lei de criação do Alvará de Ocupação Criativa aprovada e implantada",
          longoPrazo: "Alvará de Ocupação Criativa consolidado",
          indicadores: [
            "Alvará de Ocupação Criativa implantado.",
            "Número de alvarás concedidos por APG.",
            "Atividades com alvarás concedidos por APG"
          ]
        }
      }
};

    let currentView = 'eixos';
    let currentEixo = null;
    let currentMeta = null;
    let searchTerm = '';
    let navigationHistory = [];


    function normalizeText(str) {
      const base = (str || '').toLowerCase();
      try {
        if (typeof base.normalize === 'function') {
          return base.normalize("NFD").replace(/[\u0300-\u036f]/g, '');
        }
      } catch (e) {
        // se normalize não existir, retorna base sem remover acentos
      }
      return base;
    }


    async function onConfigChange(config) {
      const baseSize = config.font_size || defaultConfig.font_size;
      const customFont = config.font_family || defaultConfig.font_family;
      const baseFontStack = '-apple-system, BlinkMacSystemFont, Segoe UI, Arial, sans-serif';

      document.getElementById('main-title').textContent = config.main_title || defaultConfig.main_title;
      document.getElementById('subtitle').textContent = config.subtitle || defaultConfig.subtitle;
      document.getElementById('footer-text').textContent = config.footer_text || defaultConfig.footer_text;

      document.getElementById('main-title').style.fontFamily = `${customFont}, ${baseFontStack}`;
      document.getElementById('subtitle').style.fontFamily = `${customFont}, ${baseFontStack}`;
      document.getElementById('footer-text').style.fontFamily = `${customFont}, ${baseFontStack}`;

      document.getElementById('main-title').style.fontSize = `${baseSize * 3}px`;
      document.getElementById('subtitle').style.fontSize = `${baseSize * 1.125}px`;
      document.getElementById('footer-text').style.fontSize = `${baseSize * 0.875}px`;

      document.body.style.fontFamily = `${customFont}, ${baseFontStack}`;
      document.body.style.fontSize = `${baseSize}px`;

      const backgroundColor = config.background_color || defaultConfig.background_color;
      const secondaryActionColor = config.secondary_action_color || defaultConfig.secondary_action_color;

      document.body.style.background = `linear-gradient(135deg, ${backgroundColor} 0%, ${secondaryActionColor} 100%)`;

      renderCurrentView(config);
    }

    function renderCurrentView(config) {
      if (currentMeta) {
        renderAcoesView(currentMeta, config);
      } else if (currentEixo) {
        renderMetasView(currentEixo, config);
      } else if (currentView === 'eixos') {
        renderEixosView(config);
      } else if (currentView === 'metas') {
        renderAllMetasView(config);
      } else if (currentView === 'todas-acoes') {
        renderAllAcoesView(config);
      }
      updateBreadcrumb(config);
    }

    function renderEixosView(config) {
      const contentArea = document.getElementById('content-area');
      const baseSize = config.font_size || defaultConfig.font_size;
      
      const filteredEixos = planoData.eixos.filter(eixo => {
        if (!searchTerm) return true;
        return eixo.titulo.toLowerCase().includes(searchTerm.toLowerCase()) ||
               eixo.descricao.toLowerCase().includes(searchTerm.toLowerCase());
      });

      if (filteredEixos.length === 0) {
        contentArea.innerHTML = `
          <div class="empty-state">
            <div class="empty-state-icon">  </div>
            <h3 class="empty-state-title" style="font-size: ${baseSize * 1.5}px">Nenhum resultado encontrado</h3>
            <p class="empty-state-text" style="font-size: ${baseSize}px">Tente buscar com outros termos</p>
          </div>
        `;
      applyGlossaryHighlights(contentArea);
        return;
      }

      contentArea.innerHTML = `
        <div class="eixos-grid">
          ${filteredEixos.map(eixo => `
            <article class="eixo-card" data-eixo-id="${eixo.id}">
              <div class="eixo-number">EIXO ${eixo.numero}</div>
              <h2 class="eixo-title" style="font-size: ${baseSize * 1.375}px">${highlightGlossaryText(eixo.titulo)}</h2>
              <p class="eixo-description" style="font-size: ${baseSize * 0.9375}px">${highlightGlossaryText(eixo.descricao)}</p>
              <div class="eixo-stats">
                <div class="eixo-stat"><strong>${eixo.metas.length}</strong> Metas</div>
                <div class="eixo-stat"><strong>${eixo.metas.reduce((sum, metaId) => sum + planoData.metas.find(m => m.id === metaId).acoes.length, 0)}</strong> Ações</div>
              </div>
            </article>
          `).join('')}
        </div>
      `;
      applyGlossaryHighlights(contentArea);

      document.querySelectorAll('.eixo-card').forEach(card => {
        card.addEventListener('click', function() {
          const eixoId = parseInt(this.dataset.eixoId);
          navigateToEixo(eixoId, config);
        });
      });
    }

    function renderMetasView(eixoId, config) {
      const eixo = planoData.eixos.find(e => e.id === eixoId);
      const contentArea = document.getElementById('content-area');
      const baseSize = config.font_size || defaultConfig.font_size;

      const metas = planoData.metas.filter(m => eixo.metas.includes(m.id));

      contentArea.innerHTML = `
        <button class="back-button" id="back-button" style="font-size: ${baseSize * 0.9375}px">
          ← Voltar para Eixos
        </button>
        <div class="metas-list">
          ${metas.map(meta => `
            <article class="meta-card" data-meta-id="${meta.id}">
              <div class="meta-number">META ${meta.numero}</div>
              <h3 class="meta-title" style="font-size: ${baseSize * 1.125}px">${highlightGlossaryText(meta.titulo)}</h3>
              <p class="eixo-description" style="font-size: ${baseSize * 0.9375}px">${highlightGlossaryText(meta.descricao)}</p>
              <div class="meta-acoes-count" style="font-size: ${baseSize * 0.8125}px">${meta.acoes.length} ações vinculadas</div>
            </article>
          `).join('')}
        </div>
      `;
      applyGlossaryHighlights(contentArea);

      document.getElementById('back-button').addEventListener('click', () => {
        currentEixo = null;
        renderCurrentView(config);
      });

      document.querySelectorAll('.meta-card').forEach(card => {
        card.addEventListener('click', function() {
          const metaId = parseInt(this.dataset.metaId);
          navigateToMeta(metaId, config);
        });
      });
    }

    function renderAcoesView(metaId, config) {
      const meta = planoData.metas.find(m => m.id === metaId);
      const contentArea = document.getElementById('content-area');
      const baseSize = config.font_size || defaultConfig.font_size;

      contentArea.innerHTML = `
        <button class="back-button" id="back-button" style="font-size: ${baseSize * 0.9375}px">
          ← Voltar para Metas
        </button>
        <div class="acoes-list">
          ${meta.acoes.map(acaoId => {
            const acao = planoData.acoes[acaoId];
            return `
              <article class="acao-card" data-acao-id="${acaoId}">
                <div class="acao-header">
                  <div class="acao-number">AÇÃO ${acaoId}</div>
                  <h3 class="acao-title" style="font-size: ${baseSize}px">${highlightGlossaryText(acao.titulo)}</h3>
                </div>
                <div class="acao-prazo-tags">
                  <span class="prazo-tag curto" style="font-size: ${baseSize * 0.75}px">Curto Prazo</span>
                  <span class="prazo-tag medio" style="font-size: ${baseSize * 0.75}px">Médio Prazo</span>
                  <span class="prazo-tag longo" style="font-size: ${baseSize * 0.75}px">Longo Prazo</span>
                </div>
              </article>
            `;
          }).join('')}
        </div>
      `;

      applyGlossaryHighlights(contentArea);

      document.getElementById('back-button').addEventListener('click', () => {
        currentMeta = null;
        renderCurrentView(config);
      });

      document.querySelectorAll('.acao-card').forEach(card => {
        card.addEventListener('click', function() {
          const acaoId = this.dataset.acaoId;
          openAcaoModal(acaoId, config);
        });
      });
    }

    function renderAllMetasView(config) {
      const contentArea = document.getElementById('content-area');
      const baseSize = config.font_size || defaultConfig.font_size;

      const filteredMetas = planoData.metas.filter(meta => {
        if (!searchTerm) return true;
        return meta.titulo.toLowerCase().includes(searchTerm.toLowerCase()) ||
               meta.descricao.toLowerCase().includes(searchTerm.toLowerCase());
      });

      if (filteredMetas.length === 0) {
        contentArea.innerHTML = `
          <div class="empty-state">
            <div class="empty-state-icon">🔍</div>
            <h3 class="empty-state-title" style="font-size: ${baseSize * 1.5}px">Nenhum resultado encontrado</h3>
            <p class="empty-state-text" style="font-size: ${baseSize}px">Tente buscar com outros termos</p>
          </div>
        `;
      applyGlossaryHighlights(contentArea);
        return;
      }

      contentArea.innerHTML = `
        <div class="metas-list">
          ${filteredMetas.map(meta => {
            const eixo = planoData.eixos.find(e => e.metas.includes(meta.id));
            return `
              <article class="meta-card" data-meta-id="${meta.id}">
                <div class="meta-number">META ${meta.numero} • EIXO ${eixo.numero}</div>
                <h3 class="meta-title" style="font-size: ${baseSize * 1.125}px">${highlightGlossaryText(meta.titulo)}</h3>
                <p class="eixo-description" style="font-size: ${baseSize * 0.9375}px">${highlightGlossaryText(meta.descricao)}</p>
                <div class="meta-acoes-count" style="font-size: ${baseSize * 0.8125}px">${meta.acoes.length} ações vinculadas</div>
              </article>
            `;
      applyGlossaryHighlights(contentArea);
          }).join('')}
        </div>
      `;

      document.querySelectorAll('.meta-card').forEach(card => {
        card.addEventListener('click', function() {
          const metaId = parseInt(this.dataset.metaId);
          const meta = planoData.metas.find(m => m.id === metaId);
          currentEixo = meta.eixoId;
          navigateToMeta(metaId, config);
        });
      });
    }

    function renderAllAcoesView(config) {
      const contentArea = document.getElementById('content-area');
      const baseSize = config.font_size || defaultConfig.font_size;

      const allAcoes = [];
      planoData.metas.forEach(meta => {
        meta.acoes.forEach(acaoId => {
          const acao = planoData.acoes[acaoId];
          if (!searchTerm || acao.titulo.toLowerCase().includes(searchTerm.toLowerCase())) {
            allAcoes.push({ id: acaoId, ...acao, metaNumero: meta.numero });
          }
        });
      });

      if (allAcoes.length === 0) {
        contentArea.innerHTML = `
          <div class="empty-state">
            <div class="empty-state-icon">🔍</div>
            <h3 class="empty-state-title" style="font-size: ${baseSize * 1.5}px">Nenhum resultado encontrado</h3>
            <p class="empty-state-text" style="font-size: ${baseSize}px">Tente buscar com outros termos</p>
          </div>
        `;
      applyGlossaryHighlights(contentArea);
        return;
      }

      contentArea.innerHTML = `
        <div class="acoes-list">
          ${allAcoes.map(acao => `
            <article class="acao-card" data-acao-id="${acao.id}">
              <div class="acao-header">
                <div class="acao-number">AÇÃO ${acao.id} • META ${acao.metaNumero}</div>
                <h3 class="acao-title" style="font-size: ${baseSize}px">${highlightGlossaryText(acao.titulo)}</h3>
              </div>
              <div class="acao-prazo-tags">
                <span class="prazo-tag curto" style="font-size: ${baseSize * 0.75}px">Curto Prazo</span>
                <span class="prazo-tag medio" style="font-size: ${baseSize * 0.75}px">Médio Prazo</span>
                <span class="prazo-tag longo" style="font-size: ${baseSize * 0.75}px">Longo Prazo</span>
              </div>
            </article>
          `).join('')}
        </div>
      `;
      applyGlossaryHighlights(contentArea);

      document.querySelectorAll('.acao-card').forEach(card => {
        card.addEventListener('click', function() {
          const acaoId = this.dataset.acaoId;
          openAcaoModal(acaoId, config);
        });
      });
    }

    
            function renderSearchResultsView(config) {
      const contentArea = document.getElementById('content-area');
      const baseSize = config.font_size || defaultConfig.font_size;
      const rawTerm = (searchTerm || '').trim();
      const normalizedTerm = normalizeText(rawTerm);

      if (!normalizedTerm) {
        renderCurrentView(config);
        return;
      }

      // termos de busca, com alias para LGBT
      const termosBusca = [normalizedTerm];
      if (normalizedTerm.includes('lgbt')) {
        termosBusca.push(
          'orientacao sexual',
          'genero',
          'identidade de genero',
          'diversidade sexual'
        );
      }

      const resultadosEixos = [];
      const resultadosMetas = [];
      const resultadosAcoes = [];

      // EIXOS: título + descrição
      planoData.eixos.forEach(eixo => {
        const textoEixo = normalizeText(eixo.titulo + ' ' + eixo.descricao + ' ' + eixo.numero);
        if (termosBusca.some(t => textoEixo.includes(t))) {
          resultadosEixos.push(eixo);
        }
      });

      // METAS: título + descrição
      planoData.metas.forEach(meta => {
        const textoMeta = normalizeText(
          meta.titulo + ' ' +
          meta.descricao + ' ' +
          String(meta.numero) +
          ' Eixo ' + String(meta.eixoId)
        );
        if (termosBusca.some(t => textoMeta.includes(t))) {
          resultadosMetas.push(meta);
        }
      });

      // AÇÕES: título + prazos + indicadores
      planoData.metas.forEach(meta => {
        meta.acoes.forEach(acaoId => {
          const acao = planoData.acoes[acaoId];
          const textoCompleto = [
            acao.titulo,
            acao.curtoPrazo,
            acao.medioPrazo,
            acao.longoPrazo,
            ...(acao.indicadores || [])
          ].join(' ');

          const textoNormalizado = normalizeText(textoCompleto);

          if (termosBusca.some(t => textoNormalizado.includes(t))) {
            resultadosAcoes.push({ id: acaoId, ...acao, metaNumero: meta.numero });
          }
        });
      });

      const totalResultados = resultadosEixos.length + resultadosMetas.length + resultadosAcoes.length;

      if (totalResultados === 0) {
        contentArea.innerHTML = `
          <div class="empty-state">
            <div class="empty-state-icon">🔍</div>
            <h3 class="empty-state-title" style="font-size: ${baseSize * 1.5}px">Nenhum resultado encontrado</h3>
            <p class="empty-state-text" style="font-size: ${baseSize}px">Tente buscar com outros termos ou palavras-chave.</p>
          </div>
        `;
      applyGlossaryHighlights(contentArea);
        return;
      }

      contentArea.innerHTML = `
        <section class="search-results">
          <header class="search-results-header">
            <p class="search-results-count" style="font-size: ${baseSize * 0.9}px">
              <strong>${totalResultados}</strong> resultados encontrados para "<span>${rawTerm}</span>"
            </p>
          </header>

          ${resultadosEixos.length > 0 ? `
          <section class="search-block search-eixos">
            <h3 class="search-block-title" style="font-size: ${baseSize * 1.1}px">Eixos relacionados</h3>
            <div class="eixos-grid">
              ${resultadosEixos.map(eixo => `
                <article class="eixo-card" data-eixo-id="${eixo.id}">
                  <div class="eixo-number">EIXO ${eixo.numero}</div>
                  <h3 class="eixo-title" style="font-size: ${baseSize * 1.2}px">${highlightGlossaryText(eixo.titulo)}</h3>
                  <p class="eixo-description" style="font-size: ${baseSize * 0.9}px">${highlightGlossaryText(eixo.descricao)}</p>
                  <div class="eixo-stats">
                    <span class="eixo-stat">${eixo.metas.length} metas</span>
                  </div>
                </article>
              `).join('')}
            </div>
          </section>
          ` : ''}

          ${resultadosMetas.length > 0 ? `
          <section class="search-block search-metas">
            <h3 class="search-block-title" style="font-size: ${baseSize * 1.1}px">Metas relacionadas</h3>
            <div class="metas-grid">
              ${resultadosMetas.map(meta => `
                <article class="meta-card" data-meta-id="${meta.id}">
                  <div class="meta-number">META ${meta.numero} • EIXO ${meta.eixoId}</div>
                  <h3 class="meta-title" style="font-size: ${baseSize * 1.05}px">${highlightGlossaryText(meta.titulo)}</h3>
                  <p class="meta-description" style="font-size: ${baseSize * 0.9}px">${highlightGlossaryText(meta.descricao)}</p>
                </article>
              `).join('')}
            </div>
          </section>
          ` : ''}

          ${resultadosAcoes.length > 0 ? `
          <section class="search-block search-acoes">
            <h3 class="search-block-title" style="font-size: ${baseSize * 1.1}px">Ações relacionadas</h3>
            <div class="acoes-grid">
              ${resultadosAcoes.map(acao => `
                <article class="acao-card" data-acao-id="${acao.id}">
                  <div class="acao-header">
                    <span class="acao-badge">AÇÃO ${acao.id}</span>
                    <span class="acao-meta-ref">Meta ${acao.metaNumero}</span>
                  </div>
                  <h3 class="acao-title" style="font-size: ${baseSize * 1.1}px">${highlightGlossaryText(acao.titulo)}</h3>
                </article>
              `).join('')}
            </div>
          </section>
          ` : ''}
        </section>
      `;
      applyGlossaryHighlights(contentArea);

      // Clique em eixo/meta/ação nos resultados da busca
      document.querySelectorAll('.search-eixos .eixo-card').forEach(card => {
        card.addEventListener('click', function() {
          const eixoId = parseInt(this.dataset.eixoId, 10);
          currentEixo = eixoId;
          currentMeta = null;
          searchTerm = '';
          const cfg = window.elementSdk?.config || defaultConfig;
          document.getElementById('search-input').value = '';
          renderCurrentView(cfg);
        });
      });

      document.querySelectorAll('.search-metas .meta-card').forEach(card => {
        card.addEventListener('click', function() {
          const metaId = parseInt(this.dataset.metaId, 10);
          currentMeta = metaId;
          searchTerm = '';
          const cfg = window.elementSdk?.config || defaultConfig;
          document.getElementById('search-input').value = '';
          renderCurrentView(cfg);
        });
      });

      document.querySelectorAll('.search-acoes .acao-card').forEach(card => {
        card.addEventListener('click', function() {
          const acaoId = this.dataset.acaoId;
          const cfg = window.elementSdk?.config || defaultConfig;
          openAcaoModal(acaoId, cfg);
        });
      });
    }

    function navigateToEixo(eixoId, config) {
      currentEixo = eixoId;
      currentMeta = null;
      renderCurrentView(config);
    }

    function navigateToMeta(metaId, config) {
      currentMeta = metaId;
      renderCurrentView(config);
    }

    function updateBreadcrumb(config) {
      const breadcrumb = document.getElementById('breadcrumb');
      const baseSize = config.font_size || defaultConfig.font_size;
      let html = '<span class="breadcrumb-item active" data-level="home" style="font-size: ' + (baseSize * 0.875) + 'px">Início</span>';

      if (currentEixo) {
        const eixo = planoData.eixos.find(e => e.id === currentEixo);
        html += '<span class="breadcrumb-separator"> / </span>';
        html += '<span class="breadcrumb-item active" data-level="eixo" style="font-size: ' + (baseSize * 0.875) + 'px">Eixo ' + eixo.numero + '</span>';
      }

      if (currentMeta) {
        const meta = planoData.metas.find(m => m.id === currentMeta);
        html += '<span class="breadcrumb-separator"> / </span>';
        html += '<span class="breadcrumb-item active" data-level="meta" style="font-size: ' + (baseSize * 0.875) + 'px">Meta ' + meta.numero + '</span>';
      }

      breadcrumb.innerHTML = html;

      document.querySelectorAll('.breadcrumb-item').forEach(item => {
        item.addEventListener('click', function() {
          const level = this.dataset.level;
          if (level === 'home') {
            currentEixo = null;
            currentMeta = null;
            currentView = 'eixos';
            document.querySelectorAll('.view-button').forEach(btn => btn.classList.remove('active'));
            document.querySelector('[data-view="eixos"]').classList.add('active');
          } else if (level === 'eixo') {
            currentMeta = null;
          }
          const config = window.elementSdk?.config || defaultConfig;
          renderCurrentView(config);
        });
      });
    }

    function openAcaoModal(acaoId, config) {
      const acao = planoData.acoes[acaoId];
      const baseSize = config.font_size || defaultConfig.font_size;

      document.getElementById('modal-badge').textContent = `AÇÃO ${acaoId}`;
      document.getElementById('modal-badge').style.fontSize = `${baseSize * 0.8125}px`;
      document.getElementById('modal-title').textContent = acao.titulo;
      document.getElementById('modal-title').style.fontSize = `${baseSize * 2}px`;
      document.getElementById('modal-subtitle').textContent = 'Detalhamento da ação';
      document.getElementById('modal-subtitle').style.fontSize = `${baseSize}px`;

      let bodyContent = '';
      
      if (acao.descricao) {
        bodyContent += `
          <div class="modal-section">
            <h3 style="font-size: ${baseSize * 1.25}px"><span class="modal-section-icon">📝</span> Descrição</h3>
            <p style="font-size: ${baseSize * 0.9375}px; color: #475569; line-height: 1.8;">${highlightGlossaryText(acao.descricao)}</p>
          </div>
        `;
      }

      bodyContent += `
        <div class="modal-section">
          <h3 style="font-size: ${baseSize * 1.25}px"><span class="modal-section-icon">🎯</span> Metas por Prazo</h3>
          <div class="prazo-grid">
            <div class="prazo-item">
              <h4>Curto Prazo</h4>
              <p style="font-size: ${baseSize * 0.9375}px">${highlightGlossaryText(acao.curtoPrazo)}</p>
            </div>
            <div class="prazo-item">
              <h4>Médio Prazo</h4>
              <p style="font-size: ${baseSize * 0.9375}px">${highlightGlossaryText(acao.medioPrazo)}</p>
            </div>
            <div class="prazo-item">
              <h4>Longo Prazo</h4>
              <p style="font-size: ${baseSize * 0.9375}px">${highlightGlossaryText(acao.longoPrazo)}</p>
            </div>
          </div>
        </div>
        <div class="modal-section">
          <h3 style="font-size: ${baseSize * 1.25}px"><span class="modal-section-icon">📊</span> Indicadores</h3>
          <div style="margin-top:8px;"></div>
        </div>
      `;

      document.getElementById('modal-body').innerHTML = bodyContent;
      applyGlossaryHighlights(document.getElementById('modal-body'));
      document.getElementById('modal').classList.add('active');
    }

    function openPlanoInfoModal(section, config) {
      const baseSize = config.font_size || defaultConfig.font_size;

      let badgeText = '';
      let titleText = '';
      let subtitleText = '';
      let bodyContent = '';

      if (section === 'principios') {
        badgeText = 'PRINCÍPIOS';
        titleText = 'Princípios do Plano Municipal de Cultura';
        subtitleText = 'Princípios que regem o Plano Municipal de Cultura.';

        bodyContent = `
          <div class="modal-section">
            <h3 style="font-size: ${baseSize * 1.25}px">
              <span class="modal-section-icon">📌</span> Princípios do Plano Municipal de Cultura
            </h3>
            <p style="font-size: ${baseSize * 0.9375}px; color: #475569; line-height: 1.8;">
              O Plano Municipal de Cultura será regido pelos seguintes princípios:
            </p>
            <div style="margin-top:8px;"><p style="margin:4px 0;">- promoção e proteção da diversidade das expressões culturais;</p><p style="margin:4px 0;">- descentralização territorial da política cultural;</p><p style="margin:4px 0;">- expansão e qualificação da infraestrutura de equipamentos culturais;</p><p style="margin:4px 0;">- promoção do direito à Cidade e da ocupação dos espaços públicos;</p><p style="margin:4px 0;">- reconhecimento, proteção e valorização dos bens e paisagens culturais do município, em suas dimensões material e imaterial;</p><p style="margin:4px 0;">- formação e capacitação nos campos artístico e de gestão cultural;</p><p style="margin:4px 0;">- promoção do acesso à fruição cultural;</p><p style="margin:4px 0;">- estímulo à criação e à produção artístico-cultural;</p><p style="margin:4px 0;">- desenvolvimento da economia criativa e economia da cultura;</p><p style="margin:4px 0;">- participação democrática da Sociedade Civil na gestão das políticas públicas de cultura;</p><p style="margin:4px 0;">- monitoramento e sistematização das informações culturais para garantia da transparência e do acesso à informação.</p></div>
          </div>
        `;
      } else if (section === 'objetivos') {
        badgeText = 'OBJETIVOS';
        titleText = 'Objetivos do Plano Municipal de Cultura';
        subtitleText = 'Objetivos gerais do Plano Municipal de Cultura.';

        bodyContent = `
          <div class="modal-section">
            <h3 style="font-size: ${baseSize * 1.25}px">
              <span class="modal-section-icon">🎯</span> Objetivos do Plano Municipal de Cultura
            </h3>
            <p style="font-size: ${baseSize * 0.9375}px; color: #475569; line-height: 1.8;">
              São objetivos do Plano Municipal de Cultura:
            </p>
            <div style="margin-top:8px;"><p style="margin:4px 0;">- ser instrumento de gestão a curto, médio e longo prazo das políticas, programas e ações voltados para a valorização, fortalecimento e promoção da cultura;</p><p style="margin:4px 0;">- ampliar e diversificar as fontes de recursos para implementação das políticas culturais;</p><p style="margin:4px 0;">- reestruturar e regionalizar a SECULT, ampliando e qualificando seu quadro de servidores;</p><p style="margin:4px 0;">- implantar e consolidar instâncias e mecanismos de participação social, presenciais e digitais;</p><p style="margin:4px 0;">- criar e disponibilizar informações e indicadores sobre o campo cultural municipal, promovendo transparência e qualificação contínua das políticas públicas;</p><p style="margin:4px 0;">- consolidar e requalificar a rede de equipamentos culturais, atendendo necessidades territoriais e iniciativas da sociedade civil;</p><p style="margin:4px 0;">- promover a ocupação dos espaços públicos com atividades artístico-culturais;</p><p style="margin:4px 0;">- reconhecer, valorizar e preservar o patrimônio histórico e cultural, material e imaterial;</p><p style="margin:4px 0;">- catalogar, conservar e disponibilizar acervos municipais para pesquisa, consulta e fruição;</p><p style="margin:4px 0;">- consolidar iniciativas de iniciação artística e cultural;</p><p style="margin:4px 0;">- promover formação técnica e profissional nas áreas artísticas, de gestão e de produção cultural;</p><p style="margin:4px 0;">- promover a formação de público por meio de mediação cultural;</p><p style="margin:4px 0;">- universalizar o acesso à cultura com programação integrada e participativa;</p><p style="margin:4px 0;">- fomentar e diversificar o acesso aos mecanismos de financiamento à cultura;</p><p style="margin:4px 0;">- promover a sustentabilidade das iniciativas culturais e o potencial econômico da cultura.</p></div>
          </div>
        `;
      } else if (section === 'diretrizes') {
        badgeText = 'DIRETRIZES';
        titleText = 'Diretrizes do Plano Municipal de Cultura';
        subtitleText = 'Diretrizes que orientam a implementação do Plano Municipal de Cultura.';

        bodyContent = `
          <div class="modal-section">
            <h3 style="font-size: ${baseSize * 1.25}px">
              <span class="modal-section-icon">🧭</span> Diretrizes do Plano Municipal de Cultura
            </h3>
            <p style="font-size: ${baseSize * 0.9375}px; color: #475569; line-height: 1.8;">
              São diretrizes que nortearão o Plano Municipal de Cultura:
            </p>
            <div style="margin-top:8px;"><p style="margin:4px 0;">- reconhecer e promover a diversidade de expressões culturais no município, respeitando dinâmicas e formas de transmissão;</p><p style="margin:4px 0;">- desenvolver a territorialização das políticas públicas de cultura, promovendo sistemas e circuitos integrados;</p><p style="margin:4px 0;">- consolidar o Sistema Municipal de Cultura – SISCULT e fortalecer a participação social e o acesso à informação;</p><p style="margin:4px 0;">- estruturar o Sistema Municipal de Informações e Indicadores Culturais – SMIIC como ferramenta para formulação, monitoramento e revisão de políticas;</p><p style="margin:4px 0;">- expandir e qualificar a infraestrutura de espaços públicos culturais, considerando vocações territoriais, equipamentos municipais e espaços independentes;</p><p style="margin:4px 0;">- promover a ocupação dos espaços públicos com atividades artísticas e culturais;</p><p style="margin:4px 0;">- conhecer, reconhecer, salvaguardar, valorizar e difundir bens e patrimônios culturais, ampliando acesso aos acervos;</p><p style="margin:4px 0;">- promover formação artística, técnica e de gestão cultural, com descentralização territorial;</p><p style="margin:4px 0;">- oferecer programação cultural diversificada, integrada e distribuída por todas as regiões da cidade;</p><p style="margin:4px 0;">- consolidar a cidadania cultural como pilar das políticas públicas;</p><p style="margin:4px 0;">- ampliar e qualificar políticas para as artes, promovendo produção, circulação, acesso e fruição;</p><p style="margin:4px 0;">- desenvolver estratégias para fortalecer a economia da cultura, contemplando cadeias produtivas diversas e sustentabilidade;</p><p style="margin:4px 0;">- articular projetos com outras Secretarias Municipais e com a Sociedade Civil de forma intersetorial.</p></div>
          </div>
        `;
      }

      if (!badgeText) return;

      document.getElementById('modal-badge').textContent = badgeText;
      document.getElementById('modal-badge').style.fontSize = `${baseSize * 0.8125}px`;
      document.getElementById('modal-title').textContent = titleText;
      document.getElementById('modal-title').style.fontSize = `${baseSize * 2}px`;
      document.getElementById('modal-subtitle').textContent = subtitleText;
      document.getElementById('modal-subtitle').style.fontSize = `${baseSize}px`;

      document.getElementById('modal-body').innerHTML = bodyContent;
      applyGlossaryHighlights(document.getElementById('modal-body'));
      document.getElementById('modal').classList.add('active');
    }



    function closeModal() {
      document.getElementById('modal').classList.remove('active');
    }

    document.getElementById('close-modal').addEventListener('click', closeModal);
    document.getElementById('modal').addEventListener('click', function(e) {
      if (e.target === this) {
        closeModal();
      }
    });

    document.querySelectorAll('.view-button').forEach(button => {
      button.addEventListener('click', function() {
        document.querySelectorAll('.view-button').forEach(btn => btn.classList.remove('active'));
        this.classList.add('active');
        currentView = this.dataset.view;
        currentEixo = null;
        currentMeta = null;
        const config = window.elementSdk?.config || defaultConfig;
        renderCurrentView(config);
      });
    });

    document.querySelectorAll('.plano-info-button').forEach(button => {
      button.addEventListener('click', function() {
        const section = this.dataset.section;
        const cfg = window.elementSdk?.config || defaultConfig;
        openPlanoInfoModal(section, cfg);
      });
    });

    document.getElementById('search-input').addEventListener('input', function(e) {
      searchTerm = e.target.value || '';
      const config = window.elementSdk?.config || defaultConfig;
      if ((searchTerm || '').trim().length > 0) {
        renderSearchResultsView(config);
      } else {
        renderCurrentView(config);
      }
    });

    if (window.elementSdk) {
      window.elementSdk.init({
        defaultConfig,
        onConfigChange,
        mapToCapabilities: (config) => ({
          recolorables: [
            {
              get: () => config.background_color || defaultConfig.background_color,
              set: (value) => {
                config.background_color = value;
                window.elementSdk.setConfig({ background_color: value });
              }
            },
            {
              get: () => config.secondary_surface_color || defaultConfig.secondary_surface_color,
              set: (value) => {
                config.secondary_surface_color = value;
                window.elementSdk.setConfig({ secondary_surface_color: value });
              }
            },
            {
              get: () => config.text_color || defaultConfig.text_color,
              set: (value) => {
                config.text_color = value;
                window.elementSdk.setConfig({ text_color: value });
              }
            },
            {
              get: () => config.primary_action_color || defaultConfig.primary_action_color,
              set: (value) => {
                config.primary_action_color = value;
                window.elementSdk.setConfig({ primary_action_color: value });
              }
            },
            {
              get: () => config.secondary_action_color || defaultConfig.secondary_action_color,
              set: (value) => {
                config.secondary_action_color = value;
                window.elementSdk.setConfig({ secondary_action_color: value });
              }
            }
          ],
          borderables: [],
          fontEditable: {
            get: () => config.font_family || defaultConfig.font_family,
            set: (value) => {
              config.font_family = value;
              window.elementSdk.setConfig({ font_family: value });
            }
          },
          fontSizeable: {
            get: () => config.font_size || defaultConfig.font_size,
            set: (value) => {
              config.font_size = value;
              window.elementSdk.setConfig({ font_size: value });
            }
          }
        }),
        mapToEditPanelValues: (config) => new Map([
          ["main_title", config.main_title || defaultConfig.main_title],
          ["subtitle", config.subtitle || defaultConfig.subtitle],
          ["footer_text", config.footer_text || defaultConfig.footer_text]
        ])
      });
    } else {
      onConfigChange(defaultConfig);
    }

      // Garante renderização inicial dos Eixos ao carregar o painel,
      // mesmo fora do ambiente do Element SDK.
      document.addEventListener('DOMContentLoaded', function() {
        try {
          const config = (window.elementSdk && window.elementSdk.config) ? window.elementSdk.config : defaultConfig;
          if (typeof onConfigChange === 'function') {
            onConfigChange(config);
          } else if (typeof renderCurrentView === 'function') {
            renderCurrentView(config);
          }
        } catch (e) {
          console.warn('Erro ao renderizar visão inicial', e);
        }
      });

  </script>
 <script>(function(){function c(){var b=a.contentDocument||a.contentWindow.document;if(b){var d=b.createElement('script');d.innerHTML="window.__CF$cv$params={r:'9a422b8531301cd3',t:'MTc2NDA4NDQ0NS4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='/cdn-cgi/challenge-platform/scripts/jsd/main.js';document.getElementsByTagName('head')[0].appendChild(a);";b.getElementsByTagName('head')[0].appendChild(d)}}if(document.body){var a=document.createElement('iframe');a.height=1;a.width=1;a.style.position='absolute';a.style.top=0;a.style.left=0;a.style.border='none';a.style.visibility='hidden';document.body.appendChild(a);if('loading'!==document.readyState)c();else if(window.addEventListener)document.addEventListener('DOMContentLoaded',c);else{var e=document.onreadystatechange||function(){};document.onreadystatechange=function(b){e(b);'loading'!==document.readyState&&(document.onreadystatechange=e,c())}}}})();</script>
  <div id="glossary-backdrop" class="glossary-panel-backdrop"></div>
  <aside id="glossary-panel" class="glossary-panel" aria-label="Glossário de termos do Plano Municipal de Cultura">
    <div class="glossary-panel-header">
      <div>
        <h2 class="glossary-panel-title">Glossário do Plano</h2>
        <p class="glossary-panel-subtitle">Termos, siglas e sistemas citados no Plano Municipal de Cultura</p>
      </div>
      <button class="glossary-close-btn" id="glossary-close" type="button" aria-label="Fechar glossário">×</button>
    </div>
    <div class="glossary-panel-body">
      <div class="glossary-search">
        <input type="text" id="glossary-search-input" placeholder="Buscar termo no glossário..." />
      </div>
      <div class="glossary-downloads">
        <div>Arquivos para consulta:</div>
        <div>• <a href="https://bibliotecajuridica.campinas.sp.gov.br/images/full/bbd747e80ea2cd2be51c736311b28d76.pdf" target="_blank" rel="noopener">Baixar Plano Municipal de Cultura (PDF)</a></div>
        <div>• <a href="https://drive.google.com/file/d/10rB0pPZ8ocULx9hN1ffgxx0uZC4QapSL/view?usp=sharing" target="_blank" rel="noopener">Baixar Glossário completo (PDF)</a></div>
      </div>
      <div style="margin-top:8px;"></div>
    </div>
  </aside>


<script type="text/javascript">
  // ========================
  // Glossário de Termos
  // ========================
  const glossaryItems = [
    {
      termo: "Ação",
      chave: "Acao",
      descricao: "Compromisso operacional dentro de uma meta. Cada ação define o que deve ser feito, por quem, como e com quais indicadores.",
      links: []
    },
    {
      termo: "Acervos",
      chave: "Acervos",
      descricao: "Conjunto de documentos, objetos, obras, registros e materiais preservados em museus, bibliotecas, centros de memória e outras instituições. No Plano Municipal de Cultura, a gestão de acervos envolve catalogação, digitalização, preservação e ampliação do acesso público.",
      links: []
    },
    {
      termo: "Acessibilidade",
      chave: "Acessibilidade",
      descricao: "Conjunto de condições arquitetônicas, comunicacionais, tecnológicas e programáticas que garantem pleno acesso à cultura por todas as pessoas, incluindo pessoas com deficiência. No Plano Municipal de Cultura, orienta reformas, requalificações, sinalização, comunicação e disponibilização de acervos.",
      links: []
    },
    {
      termo: "Áreas de Planejamento e Gestão – APGs",
      chave: "APGs",
      descricao: "Unidades territoriais definidas pelo Plano Diretor de Campinas para organização, planejamento e gestão das políticas públicas no território. As APGs são utilizadas no Plano Municipal de Cultura como referência para ações, indicadores e descentralização das políticas culturais. APGs de Campinas: Amarais, APA Campinas, Barão Geraldo, Brandina, Campo Grande, Centro, Garcia, Imperador, Nova Aparecida, Nova Europa, Ouro Verde, Proença, Santa Lúcia, São Bernardo, São Domingos, São José, Taquaral.",
      links: [
        {
          rotulo: "Plano Diretor (Lei Complementar nº 189/2018)",
          url: "https://bibliotecajuridica.campinas.sp.gov.br/index/visualizaroriginal/id/125347"
        }
      ]
    },
    {
      termo: "Articulação Intersetorial / Interinstitucional",
      chave: "ArticulacaoIntersetorial",
      descricao: "Processos de trabalho conjunto entre diferentes secretarias, esferas de governo e instituições externas para fortalecer políticas culturais no âmbito do Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Bibliotecas Públicas Municipais",
      chave: "BibliotecasPublicas",
      descricao: "Equipamentos culturais vinculados ao Sistema Municipal de Bibliotecas, responsáveis por acesso à leitura, informação e ações educativas.",
      links: []
    },
    {
      termo: "Cadeias Produtivas da Cultura",
      chave: "CadeiasProdutivas",
      descricao: "Conjunto de etapas que envolvem criação, produção, distribuição, difusão, formação de público e consumo cultural. No Plano Municipal de Cultura, apoia o fortalecimento do setor cultural e criativo.",
      links: []
    },
    {
      termo: "Câmaras Setoriais do Conselho Municipal de Política Cultural – COMCULT",
      chave: "CamaraSetoriaisComcult",
      descricao: "Grupos temáticos responsáveis por debates técnicos, acompanhamento setorial e participação na gestão de fundos culturais.",
      links: []
    },
    {
      termo: "Câmara Municipal de Campinas",
      chave: "CamaraMunicipalCampinas",
      descricao: "Poder Legislativo responsável pela aprovação de leis relacionadas ao Plano Municipal de Cultura.",
      links: [
        {
          rotulo: "Câmara Municipal de Campinas",
          url: "https://www.campinas.sp.leg.br/"
        }
      ]
    },
    {
      termo: "Capilaridade",
      chave: "Capilaridade",
      descricao: "Capacidade de atingir de forma descentralizada todos os territórios do município, garantindo distribuição equilibrada de ações, equipamentos e investimentos. É base estrutural do Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Centros de Artes e Esportes Unificados – CEUs",
      chave: "CEUs",
      descricao: "Equipamentos públicos integrados que reúnem cultura, esporte, lazer, educação e convivência comunitária.",
      links: []
    },
    {
      termo: "Centros de Cultura / Casas de Cultura",
      chave: "CentrosCultura",
      descricao: "Equipamentos destinados à oferta descentralizada de atividades culturais, sociais, formativas e artísticas nos territórios.",
      links: []
    },
    {
      termo: "Centros de Memória",
      chave: "CentrosMemoria",
      descricao: "Equipamentos responsáveis pela salvaguarda, pesquisa e difusão das memórias locais, articulados ao Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Circuito de Exposições",
      chave: "CircuitoExposicoes",
      descricao: "Rede municipal de espaços que recebem exposições integradas, incluindo museus, centros culturais e casas de cultura.",
      links: []
    },
    {
      termo: "Cidadania Cultural",
      chave: "CidadaniaCultural",
      descricao: "Direito de todas as pessoas de acessar, produzir, participar e decidir sobre a vida cultural. No Plano Municipal de Cultura, materializa-se por meio de participação social, diversidade, acessibilidade e descentralização.",
      links: []
    },
    {
      termo: "Comissão Intersetorial de Monitoramento e Avaliação – CIMA",
      chave: "CIMA",
      descricao: "Instância municipal que realiza o acompanhamento, monitoramento e avaliação de planos municipais, incluindo o Plano Municipal de Cultura.",
      links: [
        {
          rotulo: "Comissão Intersetorial de Monitoramento e Avaliação – CIMA",
          url: "https://bibliotecajuridica.campinas.sp.gov.br/index/visualizaratualizada/id/138086"
        }
      ]
    },
    {
      termo: "Conselho Municipal de Política Cultural – COMCULT",
      chave: "COMCULT",
      descricao: "Órgão colegiado, deliberativo e paritário responsável pela formulação, acompanhamento e fiscalização da política cultural e do Plano Municipal de Cultura.",
      links: [
        {
          rotulo: "Conselho Municipal de Política Cultural – COMCULT",
          url: "https://bibliotecajuridica.campinas.sp.gov.br/index/pesquisaavancada/"
        }
      ]
    },
    {
      termo: "Difusão Cultural",
      chave: "DifusaoCultural",
      descricao: "Processos de circulação e compartilhamento de obras, artistas, práticas e conteúdos culturais entre os territórios da cidade, seguindo as diretrizes do Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Educação Patrimonial",
      chave: "EducacaoPatrimonial",
      descricao: "Processos educativos que promovem conhecimento, cuidado e valorização dos bens culturais materiais e imateriais. No Plano Municipal de Cultura, envolve inventários participativos nas APGs, ações escolares, oficinas, jornadas e portais de difusão.",
      links: []
    },
    {
      termo: "Educomunicação",
      chave: "Educomunicacao",
      descricao: "Ações que integram comunicação, cultura, tecnologia e educação, fortalecendo a expressão e a produção de conteúdo.",
      links: []
    },
    {
      termo: "EMCEA – Escola Municipal de Cultura e Arte",
      chave: "EMCEA",
      descricao: "Instituição municipal responsável pela coordenação da formação artística, cultural e patrimonial. No Plano Municipal de Cultura, a EMCEA integra cultura e educação, promove cursos e oficinas nos territórios, desenvolve programas de iniciação, formação continuada e profissionalização, e prioriza populações vulneráveis.",
      links: []
    },
    {
      termo: "Equipamentos Culturais Municipais",
      chave: "EquipamentosCulturaisMunicipais",
      descricao: "Museus, bibliotecas, casas de cultura, centros culturais, teatros e CEUs mantidos pela Prefeitura e estruturados pelo Sistema Municipal de Cultura.",
      links: []
    },
    {
      termo: "Equipamentos Públicos Culturais",
      chave: "EquipamentosPublicosCulturais",
      descricao: "Espaços públicos dedicados à formação, produção, circulação e fruição cultural, com papel estratégico no Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Espaços Culturais Independentes",
      chave: "EspacosCulturaisIndependentes",
      descricao: "Iniciativas não governamentais dedicadas à produção, circulação e memória cultural. O Plano Municipal de Cultura prevê seu reconhecimento, apoio técnico e articulação em rede.",
      links: []
    },
    {
      termo: "Fomento",
      chave: "Fomento",
      descricao: "Ações, programas, editais e fundos de apoio destinados a artistas, grupos, coletivos, pontos de cultura, espaços independentes e iniciativas culturais. No Plano Municipal de Cultura, impulsiona criação, circulação e acesso à cultura.",
      links: []
    },
    {
      termo: "Formação Cultural",
      chave: "FormacaoCultural",
      descricao: "Processos de aprendizado artístico, cultural e patrimonial. No Plano Municipal de Cultura, é estruturada pela EMCEA e envolve iniciação, formação continuada, profissionalização e ações intersetoriais.",
      links: []
    },
    {
      termo: "Fundo de Apoio a Festas Populares e/ou Beneficentes",
      chave: "FundoApoioFestasPopulares",
      descricao: "Criado pela Lei nº 11.332/2002 para financiar festas populares e eventos tradicionais.",
      links: [
        {
          rotulo: "Lei nº 11.332/2002 – Fundo de Apoio a Festas Populares e/ou Beneficentes",
          url: "https://bibliotecajuridica.campinas.sp.gov.br/index/visualizaroriginal/id/108819"
        }
      ]
    },
    {
      termo: "Fundo de Assistência à Cultura – FAC",
      chave: "FAC",
      descricao: "Criado pela Lei nº 4.712/1977 para apoio financeiro à cultura.",
      links: [
        {
          rotulo: "Lei nº 4.712/1977 – Fundo de Assistência à Cultura – FAC",
          url: "https://bibliotecajuridica.campinas.sp.gov.br/index/visualizaroriginal/id/120881"
        }
      ]
    },
    {
      termo: "Fundo de Investimentos Culturais de Campinas – FICC",
      chave: "FICC",
      descricao: "Criado pela Lei nº 12.355/2005, financia projetos culturais por meio de editais.",
      links: [
        {
          rotulo: "Lei nº 12.355/2005 – Fundo de Investimentos Culturais de Campinas – FICC",
          url: "https://bibliotecajuridica.campinas.sp.gov.br/index/visualizaroriginal/id/101738"
        }
      ]
    },
    {
      termo: "Fundo Municipal de Cultura – FMC",
      chave: "FMC",
      descricao: "Instrumento proposto pelo Plano Municipal de Cultura para unificar e fortalecer o financiamento cultural.",
      links: []
    },
    {
      termo: "Fundo Municipal para Preservação do Patrimônio Artístico, Arquitetônico, Histórico, Paisagístico e Cultural",
      chave: "FundoPatrimonio",
      descricao: "Criado pela Lei nº 7.859/1994.",
      links: [
        {
          rotulo: "Lei nº 7.859/1994 – Fundo Municipal para Preservação do Patrimônio Artístico, Arquitetônico, Histórico, Paisagístico e Cultural",
          url: "https://bibliotecajuridica.campinas.sp.gov.br/index/visualizaroriginal/id/117278"
        }
      ]
    },
    {
      termo: "Fundo Setorial das Artes – FUSA",
      chave: "FUSA",
      descricao: "Fundo previsto no Plano Municipal de Cultura para apoiar linguagens artísticas específicas, mediante legislação futura.",
      links: []
    },
    {
      termo: "Gestão Colaborativa",
      chave: "GestaoColaborativa",
      descricao: "Modelo de gestão compartilhada entre Poder Público, sociedade civil e comunidades locais, adotado em equipamentos e programas culturais. É uma diretriz estruturante do Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Gestão Cultural",
      chave: "GestaoCultural",
      descricao: "Processos técnicos, administrativos e estratégicos que sustentam a implementação da política cultural e do Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Identidade Cultural",
      chave: "IdentidadeCultural",
      descricao: "Conjunto de valores, símbolos, memórias, referências, histórias e modos de vida que caracterizam grupos, comunidades e territórios da cidade. No Plano Municipal de Cultura, orienta políticas de memória, patrimônio, formação e participação social, valorizando a diversidade cultural de Campinas.",
      links: []
    },
    {
      termo: "Indicadores",
      chave: "Indicadores",
      descricao: "Dados quantitativos e qualitativos que permitem monitorar e avaliar metas e ações do Plano Municipal de Cultura e do Sistema Municipal de Informações e Indicadores Culturais.",
      links: []
    },
    {
      termo: "Intersetorialidade",
      chave: "Intersetorialidade",
      descricao: "Integração entre órgãos e secretarias municipais, como educação, cultura, assistência social e turismo, para execução de políticas conectadas ao Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Lei Cultura Viva – Lei Federal nº 13.018/2014",
      chave: "LeiCulturaViva",
      descricao: "Institui a Política Nacional de Cultura Viva.",
      links: [
        {
          rotulo: "Lei Cultura Viva – Lei Federal nº 13.018/2014",
          url: "https://www.planalto.gov.br/ccivil_03/_ato2011-2014/2014/lei/l13018.htm"
        }
      ]
    },
    {
      termo: "Lei Federal nº 13.019/2014 – MROSC",
      chave: "MROSC",
      descricao: "Regulamenta as parcerias entre administração pública e organizações da sociedade civil.",
      links: [
        {
          rotulo: "Lei Federal nº 13.019/2014 – MROSC",
          url: "https://www.planalto.gov.br/ccivil_03/_ato2011-2014/2014/lei/l13019.htm"
        }
      ]
    },
    {
      termo: "Lei Municipal nº 15.089/2015 – Cultura Viva Campinas",
      chave: "CulturaVivaCampinas",
      descricao: "Institui a Política Municipal Cultura Viva.",
      links: [
        {
          rotulo: "Lei Municipal nº 15.089/2015 – Cultura Viva Campinas",
          url: "https://bibliotecajuridica.campinas.sp.gov.br/index/visualizaroriginal/id/113462"
        }
      ]
    },
    {
      termo: "Linguagens Artísticas",
      chave: "LinguagensArtisticas",
      descricao: "Conjuntos de práticas e manifestações culturais como música, dança, teatro, circo, audiovisual, literatura, culturas urbanas e populares. O Plano Municipal de Cultura contempla políticas específicas para cada linguagem.",
      links: []
    },
    {
      termo: "Mapeamento",
      chave: "Mapeamento",
      descricao: "Processo de levantamento e registro de espaços, agentes, práticas, acervos e iniciativas culturais. Fundamenta diagnósticos e indicadores no Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Mediação Cultural",
      chave: "MediacaoCultural",
      descricao: "Ações que aproximam pessoas de práticas, obras, linguagens e equipamentos culturais, como visitas mediadas, oficinas e ações educativas.",
      links: []
    },
    {
      termo: "Memória",
      chave: "Memoria",
      descricao: "Práticas e registros que preservam identidades, narrativas e saberes dos territórios. No Plano Municipal de Cultura, a memória é fortalecida por centros de memória, acervos, inventários e ações de salvaguarda.",
      links: []
    },
    {
      termo: "Meta",
      chave: "Meta",
      descricao: "Compromisso com prazo definido (curto, médio ou longo), estruturado dentro de cada eixo do Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Museologia Social",
      chave: "MuseologiaSocial",
      descricao: "Práticas de memória e patrimônio desenvolvidas por comunidades e territórios, valorizadas no Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Museus Municipais",
      chave: "MuseusMunicipais",
      descricao: "Equipamentos responsáveis por preservação, difusão cultural e educação patrimonial, integrados ao Sistema Municipal de Museus.",
      links: []
    },
    {
      termo: "Orquestra Sinfônica Municipal de Campinas – OSMC",
      chave: "OSMC",
      descricao: "Corpo artístico oficial da cidade, com ações formativas, educativas e de difusão alinhadas ao Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Participação Social",
      chave: "ParticipacaoSocial",
      descricao: "Processo em que a população participa da formulação, monitoramento e avaliação da política cultural. No Plano Municipal de Cultura, ocorre por conselhos, conferências, plataformas digitais e instrumentos de gestão compartilhada.",
      links: []
    },
    {
      termo: "Patrimônio Cultural",
      chave: "PatrimonioCultural",
      descricao: "Bens materiais e imateriais que representam a memória, identidade e história da cidade.",
      links: []
    },
    {
      termo: "Plano Municipal de Cultura de Campinas",
      chave: "PlanoMunicipalCulturaCampinas",
      descricao: "Documento estratégico que organiza a política cultural da cidade até 2031. Instituído pela Lei nº 15.997/2020.",
      links: [
        {
          rotulo: "Lei nº 15.997/2020 – Plano Municipal de Cultura de Campinas",
          url: "https://bibliotecajuridica.campinas.sp.gov.br/index/visualizaratualizada/id/136237"
        }
      ]
    },
    {
      termo: "Pontos e Pontões de Cultura",
      chave: "PontosPontoesCultura",
      descricao: "Iniciativas comunitárias reconhecidas pelas políticas Cultura Viva e articuladas em redes territoriais e formativas.",
      links: []
    },
    {
      termo: "Polos Culturais",
      chave: "PolosCulturais",
      descricao: "Territórios ou espaços de referência para ações descentralizadas da política cultural, previstos no Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Rede de Espaços Independentes de Memória",
      chave: "RedeEspacosIndependentesMemoria",
      descricao: "Conjunto de iniciativas não governamentais voltadas à preservação das memórias locais.",
      links: []
    },
    {
      termo: "Requalificação",
      chave: "Requalificacao",
      descricao: "Processo de reforma, modernização e adaptação dos equipamentos públicos culturais, garantindo acessibilidade, segurança, conectividade e adequação às demandas da comunidade.",
      links: []
    },
    {
      termo: "Secretaria Municipal de Cultura e Turismo – SECULT",
      chave: "SECULT",
      descricao: "Órgão gestor central da política cultural municipal, responsável pela coordenação e implementação do Plano Municipal de Cultura.",
      links: []
    },
    {
      termo: "Sistema Municipal de Bibliotecas – SMB",
      chave: "SMB",
      descricao: "Rede integrada de bibliotecas públicas municipais, com diretrizes comuns e apoio técnico.",
      links: []
    },
    {
      termo: "Sistema Municipal de Casas e Polos de Cultura – SMCPC",
      chave: "SMCPC",
      descricao: "Rede que articula polos e casas de cultura, promovendo formação, circulação e descentralização.",
      links: []
    },
    {
      termo: "Sistema Municipal de Cultura – SMC",
      chave: "SMC",
      descricao: "Estrutura que reúne órgãos, conselhos, sistemas, fundos, conferências e instâncias de participação social.",
      links: [
        {
          rotulo: "Lei nº 16.318/2024 – Sistema Municipal de Cultura – SMC",
          url: "https://bibliotecajuridica.campinas.sp.gov.br/index/visualizaroriginal/id/136238"
        }
      ]
    },
    {
      termo: "Sistema Municipal de Financiamento à Cultura – SIFIC",
      chave: "SIFIC",
      descricao: "Estrutura que reúne fundos, mecanismos e instrumentos destinados ao financiamento cultural.",
      links: []
    },
    {
      termo: "Sistema Municipal de Informações e Indicadores Culturais – SMIIC",
      chave: "SMIIC",
      descricao: "Plataforma de coleta, monitoramento e transparência de dados culturais.",
      links: []
    },
    {
      termo: "Sistema Municipal de Museus – SMM",
      chave: "SMM",
      descricao: "Rede articulada de museus municipais, orientada pelo Plano Museológico.",
      links: []
    },
    {
      termo: "Sistema Nacional de Cultura – SNC",
      chave: "SNC",
      descricao: "Sistema federal que articula União, Estados e Municípios na governança das políticas culturais.",
      links: [
        {
          rotulo: "Lei nº 14.835/2024 – Sistema Nacional de Cultura – SNC",
          url: "https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2024/lei/l14835.htm"
        }
      ]
    },
    {
      termo: "Sustentabilidade",
      chave: "Sustentabilidade",
      descricao: "Princípio que orienta ações culturais duradouras, socialmente inclusivas, economicamente viáveis e ambientalmente responsáveis.",
      links: []
    },
    {
      termo: "Teia Municipal (Cultura Viva)",
      chave: "TeiaMunicipal",
      descricao: "Encontros e articulações que reúnem Pontos e Pontões de Cultura, promovendo intercâmbio, formação e participação comunitária.",
      links: []
    }
  ].sort((a, b) => a.termo.localeCompare(b.termo, 'pt-BR'));

  // ============================
  // Destaque inline de termos do glossário (com proteção de atributos)
  // ============================
  const glossaryPatterns = [];

  (function buildGlossaryPatterns() {
    function escapeForAttr(str) {
      return (str || '')
        .replace(/&/g, '&amp;')
        .replace(/"/g, '&quot;')
        .replace(/</g, '&lt;')
        .replace(/>/g, '&gt;');
    }

    function addPattern(displayText, key, item, isToken) {
      const text = (displayText || '').trim();
      if (!text) return;
      const lower = text.toLowerCase();
      const descSafe = escapeForAttr(item.descricao || '');
      glossaryPatterns.push({
        text,
        lower,
        key,
        descSafe,
        isToken: !!isToken
      });
    }

    glossaryItems.forEach(item => {
      const rawTerm = (item.termo || '').trim();
      if (!rawTerm) return;

      let baseTerm = rawTerm;
      let sigla = null;

      const parts = rawTerm.split('–');
      if (parts.length === 2) {
        baseTerm = (parts[0] || '').trim();
        sigla = (parts[1] || '').trim();
      }

      // termo completo (para verbetes sem sigla)
      if (baseTerm) {
        // se for "Ação", tratar como palavra isolada (token) para evitar
        // matches em palavras como "programação" ou "requalificação".
        if (baseTerm === 'Ação') {
          addPattern(baseTerm, item.chave || baseTerm, item, true);
        } else {
          // se tiver sigla, vamos priorizar a sigla para highlight;
          // o termo completo ainda pode ser útil em alguns casos.
          addPattern(baseTerm, item.chave || baseTerm, item, false);
        }

        // plural simples de "Meta"
        if (baseTerm === 'Meta') {
          addPattern('Metas', item.chave || baseTerm, item, false);
        }
      }

      // sigla (PCULT, SMIIC, SMC, etc.)
      if (sigla) {
        addPattern(sigla, sigla, item, true);
      }
    });

    // ordenar do maior termo para o menor, para evitar match parcial estranho
    glossaryPatterns.sort((a, b) => b.text.length - a.text.length);
  })();

  
    function highlightGlossaryText(text) {
    // Destaque agora é aplicado via DOM (applyGlossaryHighlights).
    // Esta função retorna o texto original sem alterações.
    return text;
  }



  // Aplica destaque de glossário diretamente no DOM,
  // percorrendo nós de texto dentro de um container.
  function applyGlossaryHighlights(root) {
    try {
      const container = root || document.getElementById('content-area');
      if (!container || !glossaryPatterns.length) return;

      const walker = document.createTreeWalker(
        container,
        NodeFilter.SHOW_TEXT,
        {
          acceptNode(node) {
            if (!node.nodeValue || !node.nodeValue.trim()) return NodeFilter.FILTER_REJECT;
            const parent = node.parentNode;
            if (!parent) return NodeFilter.FILTER_REJECT;
            if (parent.closest && parent.closest('.glossary-inline')) {
              return NodeFilter.FILTER_REJECT;
            }
            return NodeFilter.FILTER_ACCEPT;
          }
        }
      );

      const textNodes = [];
      let current;
      while ((current = walker.nextNode())) {
        textNodes.push(current);
      }

      textNodes.forEach(node => {
        let text = node.nodeValue;
        const lowerText = text.toLowerCase();
        let cursor = 0;
        const parent = node.parentNode;
        const frag = document.createDocumentFragment();
        let changed = false;

        while (cursor < text.length) {
          let bestIndex = -1;
          let bestPat = null;

          for (let i = 0; i < glossaryPatterns.length; i++) {
            const pat = glossaryPatterns[i];
            const idx = lowerText.indexOf(pat.lower, cursor);
            if (idx === -1) continue;

            // para siglas (tokens), garantir que seja palavra isolada
            if (pat.isToken) {
              const before = idx === 0 ? '' : lowerText[idx - 1];
              const after = idx + pat.lower.length >= lowerText.length ? '' : lowerText[idx + pat.lower.length];
              const isBoundaryBefore = !before || !(/[a-z0-9áâãéíóôõúç]/i.test(before));
              const isBoundaryAfter = !after || !(/[a-z0-9áâãéíóôõúç]/i.test(after));
              if (!(isBoundaryBefore && isBoundaryAfter)) {
                continue;
              }
            }

            if (bestIndex === -1 || idx < bestIndex) {
              bestIndex = idx;
              bestPat = pat;
            }
          }

          if (!bestPat || bestIndex === -1) {
            break;
          }

          // texto antes do termo
          if (bestIndex > cursor) {
            frag.appendChild(document.createTextNode(text.slice(cursor, bestIndex)));
          }

          // termo destacado
          const matched = text.slice(bestIndex, bestIndex + bestPat.text.length);
          const span = document.createElement('span');
          span.className = 'glossary-inline';
          span.setAttribute('data-glossary-token', bestPat.key);
          span.textContent = matched;
          frag.appendChild(span);

          cursor = bestIndex + bestPat.text.length;
          changed = true;
        }

        if (!changed) {
          return;
        }

        if (cursor < text.length) {
          frag.appendChild(document.createTextNode(text.slice(cursor)));
        }

        parent.replaceChild(frag, node);
      });
    } catch (e) {
      console.warn('Erro ao aplicar destaque de glossário no DOM', e);
    }
  }

function openGlossaryAtToken(token) {
    if (!token) return;
    if (typeof openGlossary === 'function') {
      openGlossary();
    }
    setTimeout(() => {
      try {
        const list = document.getElementById('glossary-list');
        if (!list) return;
        const items = Array.from(list.querySelectorAll('.glossary-item'));
        const upperToken = token.toUpperCase();
        const match = items.find(li => {
          const nameEl = li.querySelector('.glossary-term-name');
          if (!nameEl) return false;
          const txt = (nameEl.textContent || '').toUpperCase();
          if (txt.includes('–')) {
            const parts = txt.split('–');
            const sig = (parts[1] || '').trim();
            if (sig && sig.toUpperCase() === upperToken) return true;
          }
          return txt.includes(upperToken);
        });
        if (match) {
          match.scrollIntoView({ behavior: 'smooth', block: 'start' });
          match.classList.add('highlight-glossary-target');
          setTimeout(() => match.classList.remove('highlight-glossary-target'), 1500);
        }
      } catch (e) {
        console.warn('Erro ao rolar glossário até termo', e);
      }
    }, 80);
  }

  document.addEventListener('click', function(ev) {
    const target = ev.target.closest('.glossary-inline');
    if (!target) return;
    const token = target.getAttribute('data-glossary-token');
    if (!token) return;
    ev.preventDefault();
    openGlossaryAtToken(token);
  });




  // Ao passar o mouse sobre um termo destacado, adiciona tooltip com a descrição do glossário
  document.addEventListener('mouseover', function(ev) {
    const target = ev.target.closest('.glossary-inline');
    if (!target) return;
    if (target.getAttribute('title')) return;
    const token = (target.getAttribute('data-glossary-token') || '').toUpperCase();
    if (!token) return;

    let desc = '';
    for (let i = 0; i < glossaryItems.length; i++) {
      const item = glossaryItems[i];
      const rawTerm = (item.termo || '').trim();
      const upperTerm = rawTerm.toUpperCase();
      if (upperTerm.includes(token)) {
        desc = item.descricao || '';
        break;
      }
      const parts = rawTerm.split('–');
      if (parts.length === 2) {
        const sigla = (parts[1] || '').trim().toUpperCase();
        if (sigla === token) {
          desc = item.descricao || '';
          break;
        }
      }
      const chave = (item.chave || '').toUpperCase();
      if (chave && chave === token) {
        desc = item.descricao || '';
        break;
      }
    }

    if (desc) {
      target.setAttribute('title', desc);
    }
  });

  document.addEventListener('DOMContentLoaded', function() {
    const glossaryPanel = document.getElementById('glossary-panel');
    const glossaryBackdrop = document.getElementById('glossary-backdrop');
    const glossaryToggle = document.getElementById('glossary-toggle');
    const glossaryClose = document.getElementById('glossary-close');
    const glossaryList = document.getElementById('glossary-list');
    const glossarySearchInput = document.getElementById('glossary-search-input');

    function renderGlossaryList(filterTerm = "") {
      if (!glossaryList) return;
      const normalizedFilter = filterTerm.toLowerCase().trim();
      glossaryList.innerHTML = "";
      glossaryItems
        .filter(item => {
          if (!normalizedFilter) return true;
          const haystack = (item.termo + " " + item.descricao).toLowerCase();
          return haystack.includes(normalizedFilter);
        })
        .forEach(item => {
          const li = document.createElement('li');
          li.className = 'glossary-item';
          let linksHtml = "";
          if (item.links && item.links.length) {
            linksHtml = '<div class="glossary-term-links">' +
              item.links.map(l => `<a href="${l.url}" target="_blank" rel="noopener">${l.rotulo}</a>`).join(" · ") +
              '</div>';
          }
          li.innerHTML = `
            <div class="glossary-term-name">${item.termo}</div>
            <div class="glossary-term-desc">${item.descricao}</div>
            ${linksHtml}
          `;
          glossaryList.appendChild(li);
        });
    }

    function openGlossary() {
      if (!glossaryPanel || !glossaryBackdrop) return;
      glossaryPanel.classList.add('open');
      glossaryBackdrop.classList.add('open');
      renderGlossaryList(glossarySearchInput ? glossarySearchInput.value : "");
    }

    function closeGlossary() {
      if (!glossaryPanel || !glossaryBackdrop) return;
      glossaryPanel.classList.remove('open');
      glossaryBackdrop.classList.remove('open');
    }

    if (glossaryToggle) {
      glossaryToggle.addEventListener('click', openGlossary);
    }
    if (glossaryClose) {
      glossaryClose.addEventListener('click', closeGlossary);
    }
    if (glossaryBackdrop) {
      glossaryBackdrop.addEventListener('click', closeGlossary);
    }
    if (glossarySearchInput) {
      glossarySearchInput.addEventListener('input', (e) => {
        renderGlossaryList(e.target.value || "");
      });
    }

    // Função global opcional para abrir termo específico no glossário
    window.openGlossaryTerm = function(termKey) {
      openGlossary();
      if (!glossaryList) return;
      const key = (termKey || "").toLowerCase();
      if (!key) return;
      const items = glossaryList.querySelectorAll('.glossary-item');
      items.forEach(item => {
        if (item.textContent.toLowerCase().includes(key)) {
          item.scrollIntoView({ behavior: 'smooth', block: 'start' });
        }
      });
    };
  });
</script>

</body>
</html>
