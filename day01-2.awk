BEGIN {
    n=0;
    count=0;
    maxi=0;
} 
{
    if(NF==0) {
        arr[++n] = count;
        count = 0;
    } else {
        count += $1;
    }
}  

END {
    arr[++n] =count;
    n = asort(arr);
    print arr[n]+arr[n-1]+arr[n-2];
}
