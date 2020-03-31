# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

subjects = ([
    {description: 'Computador e Sociedade', code: '2302', ideal_year:'1'},
    {description: 'Geometria Analítica de Vetores', code: '2303', ideal_year:'1'},
    {description: 'Introdução à Ciência da Computação I', code: '2304', ideal_year:'1'},
    {description: 'Lógica para Computação', code: '2305', ideal_year:'1'},
    {description: 'Organização de Computadores', code: '2306', ideal_year:'1'},
    {description: 'Pré-Cálculo', code: '2307', ideal_year:'1'},
    {description: 'Programação de Coputadores I', code: '2308', ideal_year:'1'},
    {description: 'Álgebra Linear', code: '2309', ideal_year:'1'},
    {description: 'Calculo I', code: '2310', ideal_year:'1'},
    {description: 'Fundamentos Matemáticos para Computação', code: '2311', ideal_year:'1'},
    {description: 'Introdução à Ciência da Computação II', code: '2312', ideal_year:'1'},
    {description: 'Lógica Digital', code: '2313', ideal_year:'1'},
    {description: 'Programação de Coputadores II', code: '2314', ideal_year:'1'},
    {description: 'Sistemas de Informação', code: '2315', ideal_year:'1'},

    {description: 'Algoritmos e Estrututas de Dados I', code: '2316', ideal_year:'2'},
    {description: 'Arquitetura de Computadores', code: '2317', ideal_year:'2'},
    {description: 'Banco de Dados I', code: '2318', ideal_year:'2'},
    {description: 'Cálculo II', code: '2319', ideal_year:'2'},
    {description: 'Engenharia de Software I', code: '2320', ideal_year:'2'},
    {description: 'Metodologia Científica para Computação', code: '2321', ideal_year:'2'},
    {description: 'Probabilidade e Estatística', code: '2322', ideal_year:'2'},
    {description: 'Programação Orientada a Objetos I', code: '2323', ideal_year:'2'},
    {description: 'Algoritmos e Estrututas de Dados II', code: '2324', ideal_year:'2'},
    {description: 'Banco de Dados II', code: '2325', ideal_year:'2'},
    {description: 'Cálculo Numérico', code: '2326', ideal_year:'2'},
    {description: 'Engenharia de Software II', code: '2327', ideal_year:'2'},
    {description: 'Linguagens Formais e Autômatos', code: '2328', ideal_year:'2'},
    {description: 'Programação Orientada a Objetos II', code: '2329', ideal_year:'2'},
    {description: 'Redes de Computadores I', code: '2330', ideal_year:'2'},
    {description: 'Sistemas Operacionais I', code: '2331', ideal_year:'2'},

    {description: 'ALgoritmos em Grafos', code: '2332', ideal_year:'3'},
    {description: 'Bando de Dados III', code: '2333', ideal_year:'3'},
    {description: 'Engemahria de Software III', code: '2334', ideal_year:'3'},
    {description: 'Inteligência Artificial', code: '2335', ideal_year:'3'},
    {description: 'Interação Humano-Computador', code: '2336', ideal_year:'3'},
    {description: 'Programação Orientada a Objetos III', code: '2337', ideal_year:'3'},
    {description: 'Redes de Computadores II', code: '2338', ideal_year:'3'},
    {description: 'Sistemas Operacionais II', code: '2339', ideal_year:'3'},
    {description: 'Análise e Complexidade ed Algoritmos', code: '2340', ideal_year:'3'},
    {description: 'Computação Natural', code: '2341', ideal_year:'3'},
    {description: 'Empreendedorismo', code: '2342', ideal_year:'3'},
    {description: 'Paradigmas em Linguagem de Programação', code: '2343', ideal_year:'3'},
    {description: 'Sistemas Distribuídos', code: '2345', ideal_year:'3'},
    {description: 'Teoria da Computação', code: '2346', ideal_year:'3'},
    {description: 'Tópicos Especiais em Ciência da Computação', code: '2347', ideal_year:'3'},

    {description: 'Compiladores', code: '2348', ideal_year:'4'},
    {description: 'Computação Gráfica e Processamento Digital de Imagens', code: '2349', ideal_year:'4'},
    {description: 'Pesquisa Operacional', code: '2350', ideal_year:'4'},
    {description: 'Programação Paralela', code: '2351', ideal_year:'4'},
    {description: 'Tópicos Especial em Ciência da Computação II', code: '2352', ideal_year:'4'},
    {description: 'Trabalho de Conclusão de Curso', code: '2353', ideal_year:'4'},
    {description: 'Estágio Supervisionado', code: '2354', ideal_year:'4'},

    {description: 'Computação e Meio Ambiente', code: '2785'},
    {description: 'Computação Móvel', code: '2772'},
    {description: 'Desenvolvimento de Sistemas Web', code: '2776'},
    {description: 'Design de Hardware', code: '2771'},
    {description: 'Design de Integração Humano-Computador', code: '2782'},
    {description: 'Geometria Computacional', code: '2781'},
    {description: 'Inglês Instrumental', code: '2775'},
    {description: 'Língua Brasileira de Sinais - LIBRAS', code: '2774'},
    {description: 'Métodos e Técnicas de Extração do Conhecimento', code: '2777'},
    {description: 'Práticas Esportivas Individuais e Coletivas', code: '3313'},
    {description: 'Projeto de Desenvolvimento de Software', code: '2779'},
    {description: 'Segurança em Redes', code: '2783'},
    {description: 'Sistemas Embarcados', code: '2773'},
    {description: 'Sistemas Nebulosos', code: '2780'},
    {description: 'Técnicas de Comunicação Oral e Escrita', code: '2784'},
    {description: 'Web Semântica', code: '2778'},
])


spinner = TTY::Spinner.new("[:spinner] Seeding db...")
spinner.auto_spin

subjects.each do |subject|
    Subject.find_or_create_by!(subject)
end

spinner.success("(Done!)")
