phrases <- function(language = "EN"){
  if(language == "EN"){
    list(
      extra_answer_text = "I didn't expect the call {this_line} in your answer. Please remove it and resubmit your work.",
      missing_answer_text = "I expected another call after {this_prior_line}. Did you forget to write one?",
      bad_argument_name_text = stringr::str_c("{intro}{this_call} accepts more than one argument name that begins ",
                                        "with `{this_name}`. As a result, R cannot figure out which ",
                                        "argument you want to pass {this} to. Check how you spelled ",
                                        "`{this_name}`, or write out the full argument name."),
      duplicate_name_text = stringr::str_c("You passed multiple arguments named {this_name} ",
                                            "to {this_call}, which will cause an error. ",
                                            "Check your spelling, or remove one of the arguments."),
      missing_argument_text = stringr::str_c(
        "{intro}{your_char}our call to {this_call} should include {that_name} ",
                                             "You may have misspelled an argument name, ",
                                             "or left out an important argument."),
      surplus_text = stringr::str_c(
        "{intro}I did not expect your call to {this_call} to ",
        "include {this}. You ",
        "may have included an unnecessary argument, or you ",
        "may have left out or misspelled an important ",
        "argument name."),
      pmatches_argument_name_text = stringr::str_c(
        "This code seems correct, but please write using full argument(s) names:\n\n",
        "{paste0('- Where you wrote {this}, please use the full formal name {correct_name}.', collapse = '\n')}"
      ),
      too_many_matches_text = stringr::str_c(
        "{intro}{this_call} accepts an argument named {that_name}. ",
        "More than one of your argument names in {this_call} will ",
        "be matched to {that_name}, which will cause an error. Try ",
        "writing out the full argument names."
      ),
      wrong_call_text = list(
        action1 = "assign something to something else with",
        action2 = "call",
        text = "{intro}I expected you to {action} {that} where you called {this}."),
      wrong_value = list(
        expected = "expected",
        unexpected = "didn't expect",
        where = " where you wrote ",
        action1 = "you to assign something to something else with ",
        action2 = "you to call ",
        text = "{intro}I {expected} {action}{that}{where}{this}."
      )
    )
  } else if(language == "PT-BR"){
    list(
      extra_answer_text = "Eu não esperava que você usasse {this_line} na sua resposta. Remova essa parte e entregue novamente a sua solução.",
      missing_answer_text = "Eu esperava mais uma parte depois de {this_prior_line}. Você esqueceu de continuar?",
      bad_argument_name_text = stringr::str_c("{intro}{this_call} aceita mais de um argumento que começa ",
                                              "com `{this_name}`. Como resultado, R não conseguiu descobrir qual ",
                                              "argumento você queria passar {this} para. Verifique como você escreveu ",
                                              "`{this_name}`, ou escreva o nome completo do argumento."),
      duplicate_name_text = stringr::str_c("Você passou vários argumentos chamados {this_name} ",
                                           "para {this_call}, o que causa um erro. ",
                                           "Verifique se escreveu corretamente, ou remova alguns argumentos."),
      missing_argument_text = stringr::str_c(
        "{intro} {this_call} deveria incluir {that_name} ",
        "Você pode ter escrito o nome de algum argumento incorretamente, ",
        "ou deixado de fora algum argumento importante."),
      surplus_text = stringr::str_c(
        "{intro}Uma chamada à {this_call} ",
        "deve incluir {this}. Você ",
        "pode ter incluído um argumento a mais, ou você ",
        "pode ter deixado algum arugmento de fora ou você ",
        "pode ter escrito o nome de algum argumento incorretamente."),
      pmatches_argument_name_text = stringr::str_c(
        "Esse código parece correto, mas por favor escreva o(s) nome(s) completo(s) dos argumento(s):\n\n",
        "{paste0('- Onde você escreveu {this}, por favor escreva o nome {correct_name}.', collapse = '\n')}"
      ),
      too_many_matches_text = stringr::str_c(
        "{intro}{this_call} aceita um argumento chamado {that_name}. ",
        "Um ou mais argumentos da chamada à {this_call} podem ",
        "corresponder a {that_name}, o que casa um erro. Tente ",
        "escrever o nome completo dos argumentos."
      ),
      wrong_call_text = list(
        action1 = "atribuísse algo a outra coisa com",
        action2 = "chamasse",
        text = "{intro}Eu esperava que você {action} {that} onde você chamou {this}."),
      wrong_value = list(
        expected = "esperava",
        unexpected = "não esperava",
        where = " onde você escreveu ",
        action1 = "que você atribuísse algo a outra coisa com",
        action2 = "que você chamasse",
        text = "{intro}Eu {expected} {action}{that}{where}{this}."
      )
    )
  }
}
