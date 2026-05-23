import 'dart:io';

const version = '0.0.1' ;
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version'){
    print ('Dartpedia CLI version $version');
  } else if(arguments.first == 'search'){
    final inputArgs = arguments.length >1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}
void searchWikipedia(List<String>? arguments){
  final String articleTitle;

  if(arguments == null || arguments.isEmpty){
    print('Please provide an article title');
    articleTitle =stdin.readLineSync() ?? '';
  } else{
    articleTitle = arguments.join(' ');
  }
  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go');
  print('(Pretend this is an article title about $articleTitle)');
}

void printUsage() {
  print ('The following command are valid: "help", "version", "search <ARTICLE-TITLE>"');
}



