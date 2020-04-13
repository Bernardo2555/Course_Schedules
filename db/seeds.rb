# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

show_spinner("Seeding courses to db...") do

  courses = ([
      {description: 'Computador e Sociedade', code_c: '2302', ideal_year: '1'},
      {description: 'Geometria Analítica de Vetores', code_c: '2303', ideal_year: '1'},
      {description: 'Introdução à Ciência da Computação I', code_c: '2304', ideal_year: '1'},
      {description: 'Lógica para Computação', code_c: '2305', ideal_year: '1'},
      {description: 'Organização de Computadores', code_c: '2306', ideal_year: '1'},
      {description: 'Pré-Cálculo', code_c: '2307', ideal_year: '1'},
      {description: 'Programação de Coputadores I', code_c: '2308', ideal_year: '1'},
      {description: 'Álgebra Linear', code_c: '2309', ideal_year: '1'},
      {description: 'Calculo I', code_c: '2310', ideal_year: '1'},
      {description: 'Fundamentos Matemáticos para Computação', code_c: '2311', ideal_year: '1'},
      {description: 'Introdução à Ciência da Computação II', code_c: '2312', ideal_year: '1'},
      {description: 'Lógica Digital', code_c: '2313', ideal_year: '1'},
      {description: 'Programação de Coputadores II', code_c: '2314', ideal_year: '1'},
      {description: 'Sistemas de Informação', code_c: '2315', ideal_year: '1'},

      {description: 'Algoritmos e Estrututas de Dados I', code_c: '2316', ideal_year: '2'},
      {description: 'Arquitetura de Computadores', code_c: '2317', ideal_year: '2'},
      {description: 'Banco de Dados I', code_c: '2318', ideal_year: '2'},
      {description: 'Cálculo II', code_c: '2319', ideal_year: '2'},
      {description: 'Engenharia de Software I', code_c: '2320', ideal_year: '2'},
      {description: 'Metodologia Científica para Computação', code_c: '2321', ideal_year: '2'},
      {description: 'Probabilidade e Estatística', code_c: '2322', ideal_year: '2'},
      {description: 'Programação Orientada a Objetos I', code_c: '2323', ideal_year: '2'},
      {description: 'Algoritmos e Estrututas de Dados II', code_c: '2324', ideal_year: '2'},
      {description: 'Banco de Dados II', code_c: '2325', ideal_year: '2'},
      {description: 'Cálculo Numérico', code_c: '2326', ideal_year: '2'},
      {description: 'Engenharia de Software II', code_c: '2327', ideal_year: '2'},
      {description: 'Linguagens Formais e Autômatos', code_c: '2328', ideal_year: '2'},
      {description: 'Programação Orientada a Objetos II', code_c: '2329', ideal_year: '2'},
      {description: 'Redes de Computadores I', code_c: '2330', ideal_year: '2'},
      {description: 'Sistemas Operacionais I', code_c: '2331', ideal_year: '2'},

      {description: 'Algoritmos em Grafos', code_c: '2332', ideal_year: '3'},
      {description: 'Bando de Dados III', code_c: '2333', ideal_year: '3'},
      {description: 'Engenharia de Software III', code_c: '2334', ideal_year: '3'},
      {description: 'Inteligência Artificial', code_c: '2335', ideal_year: '3'},
      {description: 'Interação Humano-Computador', code_c: '2336', ideal_year: '3'},
      {description: 'Programação Orientada a Objetos III', code_c: '2337', ideal_year: '3'},
      {description: 'Redes de Computadores II', code_c: '2338', ideal_year: '3'},
      {description: 'Sistemas Operacionais II', code_c: '2339', ideal_year: '3'},
      {description: 'Análise e Complexidade de Algoritmos', code_c: '2340', ideal_year: '3'},
      {description: 'Computação Natural', code_c: '2341', ideal_year: '3'},
      {description: 'Empreendedorismo', code_c: '2342', ideal_year: '3'},
      {description: 'Paradigmas em Linguagem de Programação', code_c: '2343', ideal_year: '3'},
      {description: 'Sistemas Distribuídos', code_c: '2345', ideal_year: '3'},
      {description: 'Teoria da Computação', code_c: '2346', ideal_year: '3'},
      {description: 'Tópicos Especiais em Ciência da Computação', code_c: '2347', ideal_year: '3'},

      {description: 'Compiladores', code_c: '2348', ideal_year: '4'},
      {description: 'Computação Gráfica e Processamento Digital de Imagens', code_c: '2349', ideal_year: '4'},
      {description: 'Pesquisa Operacional', code_c: '2350', ideal_year: '4'},
      {description: 'Programação Paralela', code_c: '2351', ideal_year: '4'},
      {description: 'Tópicos Especial em Ciência da Computação II', code_c: '2352', ideal_year: '4'},
      {description: 'Trabalho de Conclusão de Curso', code_c: '2353', ideal_year: '4'},
      {description: 'Estágio Supervisionado', code_c: '2354', ideal_year: '4'},

      {description: 'Computação e Meio Ambiente', code_c: '2785'},
      {description: 'Computação Móvel', code_c: '2772'},
      {description: 'Desenvolvimento de Sistemas Web', code_c: '2776'},
      {description: 'Design de Hardware', code_c: '2771'},
      {description: 'Design de Integração Humano-Computador', code_c: '2782'},
      {description: 'Geometria Computacional', code_c: '2781'},
      {description: 'Inglês Instrumental', code_c: '2775'},
      {description: 'Língua Brasileira de Sinais - LIBRAS', code_c: '2774'},
      {description: 'Métodos e Técnicas de Extração do Conhecimento', code_c: '2777'},
      {description: 'Práticas Esportivas Individuais e Coletivas', code_c: '3313'},
      {description: 'Projeto de Desenvolvimento de Software', code_c: '2779'},
      {description: 'Segurança em Redes', code_c: '2783'},
      {description: 'Sistemas Embarcados', code_c: '2773'},
      {description: 'Sistemas Nebulosos', code_c: '2780'},
      {description: 'Técnicas de Comunicação Oral e Escrita', code_c: '2784'},
      {description: 'Web Semântica', code_c: '2778'},
  ])

  courses.each do |course|
    Course.find_or_create_by!(course)
  end
end

show_spinner("Seeding professors to db...") do

  professors = ([
      {ar: '1', description: 'Marcos Quinaia'},
      {ar: '2', description: 'Maria Luisa'},
      {ar: '3', description: 'Mauro Miazaqui'},
      {ar: '4', description: 'Ana Elisa'},
  ])

  professors.each do |professor|
    Professor.find_or_create_by!(professor)
  end
end

show_spinner("Seeding student to db...") do

  students = ([
      {ar: '12', description: 'Bernardo Pereira'},
      {ar: '13', description: 'Luiddy Souza'},
      {ar: '14', description: 'Milena Botelho'},
      {ar: '15', description: 'Abel Castro'},
  ])

  students.each do |student|
    Student.find_or_create_by!(student)
  end
end

private

def show_spinner(msg_start, msg_end = "Done!")
  spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
  spinner.auto_spin
  yield
  spinner.success("(#{msg_end})")
end

