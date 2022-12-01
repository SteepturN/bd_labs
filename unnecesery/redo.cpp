#include <iostream>
#include <string>
#include <cctype>
int main(){
    std::string cur;
    char ch;
    bool last_is_end = true;
    std::getline( std::cin, cur );
    while( std::cin ) {

        if( cur.starts_with( "#+title:" ) ) {
            std::cout << "\\section{" << &( cur[ 8 ] ) << " }\n\n";
            std::cout << "\\begin{enumerate}\n";
        } else if( cur.starts_with( "#+BEGIN_SRC" ) ) {
            std::cout << "\\begin{scriptsize}\n\\begin{verbatim}\n";
        } else if( cur.starts_with( "#+END_SRC" ) ) {
            std::cout << "\\end{verbatim}\n\\end{scriptsize}\n";
            last_is_end = true;
        } else if( last_is_end ) {
            for( auto ch = 0; ch < cur.size(); ++ch ) {
                if( !std::isspace( cur[ ch ] ) && ( cur[ ch ] >= '0' ) && ( cur[ ch ] <= '9' ) ) {
                    std::cout << "\\item " << &( cur[ ch + 3 ] ) << '\n';
                    last_is_end = false;
                    break;
                } else if( !std::isspace( cur[ ch ] ) ) {
                    break;
                }
            }

        } else if( cur.starts_with( "#" ) ) {

        } else {
            std::cout << cur << '\n';
        }
        std::getline( std::cin, cur );
    }
    std::cout << "\\end{enumerate}\n";
    return 0;
}
