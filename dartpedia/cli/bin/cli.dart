const version = '0.0.1' ;
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version'){
    print ('Dartpedia CLI version $version');
  } else {
    printUsage();
  }
}

void printUsage() {
  print ('The following command are valid: "help", "version", "search <ARTICLE-TITLE>"');
}

