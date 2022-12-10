BEGIN {
    score = 0; 
}
{
    if( $2 == "X" ) { # need to lose
        if( $1 == "A" ) score += 0 + 3; # rock - scissors
        if( $1 == "B" ) score += 0 + 1; # paper - rock
        if( $1 == "C" ) score += 0 + 2; # scissors - paper
    } else if( $2 == "Y" ) { # draw
        if( $1 == "A" ) score += 3 + 1;
        if( $1 == "B" ) score += 3 + 2;
        if( $1 == "C" ) score += 3 + 3;
    } else { # need to win
        if( $1 == "A" ) score += 6 + 2; # rock - paper
        if( $1 == "B" ) score += 6 + 3; # paper - scissors
        if( $1 == "C" ) score += 6 + 1; # scissors - rock 
    }
}
END {
    print score;
}
