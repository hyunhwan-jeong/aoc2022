BEGIN {
    score = 0; 
}
{
    if( $2 == "X" ) { # rock
        if( $1 == "A" ) score += 3 + 1;
        if( $1 == "B" ) score += 0 + 1;
        if( $1 == "C" ) score += 6 + 1;
    } else if( $2 == "Y" ) { # paper
        if( $1 == "A" ) score += 6 + 2;
        if( $1 == "B" ) score += 3 + 2;
        if( $1 == "C" ) score += 0 + 2;
    } else { # scissors
        if( $1 == "A" ) score += 0 + 3;
        if( $1 == "B" ) score += 6 + 3;
        if( $1 == "C" ) score += 3 + 3;
    }
}
END {
    print score;
}
