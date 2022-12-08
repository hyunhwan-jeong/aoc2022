BEGIN {
    count=0;
    maxi=0;
} 
{
    if(NF==0) {
        if(maxi<count) maxi = count;
        count = 0;
    } else {
        count += $1;
    }
}  

END {
    if(maxi<count) maxi = count;
    print maxi;
}
