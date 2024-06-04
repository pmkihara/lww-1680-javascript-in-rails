if @monument.persisted?
  # o que acontece se o monumento foi salvo
  # retornar novo monumento para adicionar na lista
  json.inserted_item render(partial: 'monuments/monument', formats: :html, locals: { monument: @monument })
  # retornar um formulário em branco
  json.form render(partial: 'monuments/form', formats: :html, locals: { monument: Monument.new })
else
  # o que acontece se o monumento não foi salvo por erro de validação
  # retornar o formulário com os erros de validação
  json.form render(partial: 'monuments/form', formats: :html, locals: { monument: @monument })
end
