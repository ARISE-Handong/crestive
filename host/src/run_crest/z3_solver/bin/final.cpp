#include<vector>
#include"z3++.h"
#include<fstream>
#include<iostream>
#include<string>
std::string h = "";
using namespace z3;

namespace patch
{
    template < typename T > std::string to_string( const T& n )
    {
        std::ostringstream stm ;
        stm << n ;
        return stm.str() ;
    }
}

static void parse_string_solve(const char* line) { //text file을 인자로 받음

    std::cout << "parse string\n";
    z3::context c;
    z3::solver s(c);
    s.from_string(line); //받은 text file parsing
    std::cout << s.check() << "\n";

    bool success = (s.check() == sat);

    model m = s.get_model();
    std::cout << "m:" << m << "\n";

        if(success){

            int num_constants = m.num_consts();
            for (int i = 0; i < num_constants; i++) {
                func_decl fd = m.get_const_decl(i);
                z3::expr r = m.get_const_interp(fd);
                int out;
                Z3_get_numeral_int(c, r, &out);
                std::string final_out = patch::to_string(out);
                //std::cout << fd.name() << "," << r << "\n"; //결과 찍은 순서대로는 나옴
                h = fd.name().str() + "," + final_out ;
                std::cout << h << "\n";
                //writeFile << fd.name() << "," << r << "\n";

            }//for
        }//if

        else{
            h = "unsat\n";
        }
}

int main() {


    std::ifstream in("lia.txt");
    std::string s;

    if (in.is_open()) {
        // 위치 지정자를 파일 끝으로 옮긴다.
        in.seekg(0, std::ios::end);

        // 그리고 그 위치를 읽는다. (파일의 크기)
        int size = in.tellg();

        // 그 크기의 문자열을 할당한다.
        s.resize(size);

        // 위치 지정자를 다시 파일 맨 앞으로 옮긴다.
        in.seekg(0, std::ios::beg);

        // 파일 전체 내용을 읽어서 문자열에 저장한다.
        in.read(&s[0], size);
        std::cout << s << std::endl;
    } else {
        std::cout << "파일을 찾을 수 없습니다!" << std::endl;
    }

    const char *line = s.c_str(); //string을 char 배열로 변환

    try {
        parse_string_solve(line); //인자로 넘김
        std::cout << "\n";
    }
    catch (exception & ex) {
        std::cout << "unexpected error: " << ex << "\n";
    }
    return 0;
}


//s.from_string("(declare-fun x0 () Int) (declare-fun x2 () Int) (assert (>= x0 -128)) (assert (<= x0 127)) (assert (>= x2 -2147483648)) (assert (<= x2 2147483647)) (assert (= (+ (- 3) (* x0 1) (* x2 1)) 0))");
