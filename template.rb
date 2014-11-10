# encoding: utf-8

class RelatorioTemplate
  def imprime
    imprime_cabecalho
    imprime_conteudo
    imprime_rodape
  end

  def imprime_cabecalho
    raise_fail
  end

  def imprime_conteudo
    raise_fail
  end

  def imprime_rodape
    raise_fail
  end

  def raise_fail
    fail 'Este método não foi implementado'
  end
end

class RelatorioHtml < RelatorioTemplate
  def imprime_cabecalho
    puts <<EOF
<html>
  <head>
    <title>MyClass < Template</title>
  </head>
  <body>
EOF
  end

  def imprime_conteudo
    puts '<h1>Dados do relatório</h1>'
  end

  def imprime_rodape
    puts <<EOF
  </body>
</html>
EOF
  end
end

class RelatorioTexto < RelatorioTemplate
  def imprime_cabecalho
    puts '******'
  end

  def imprime_conteudo
    puts 'Dados do relatório'
  end

  def imprime_rodape
    puts '******'
  end
end
