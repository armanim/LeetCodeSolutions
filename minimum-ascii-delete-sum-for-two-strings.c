/**
 *  Solution for Minimum ASCII Delete Sum for Two Strings
 *  URL: https://leetcode.com/problems/minimum-ascii-delete-sum-for-two-strings/
 */

int arr[1000][1000];

int min(int a, int b)
{
    return a > b ? b : a;
}

int sSum(char *s, int len)
{
    int r = 0;
    for (--len; len >= 0; len--)
    {
        r += s[len];
    }
    return r;
}

int mds(char * s1, char * s2, int i, int j)
{
    if (i < 0 && j < 0) return 0;
    
    else if (i < 0) {
        return sSum(s2, j + 1);
    }
    
    else if (j < 0) {
        return sSum(s1, i + 1);
    }
    
    if (arr[i][j] != -1) return arr[i][j];
    
    if (s1[i] == s2[j])
    {
        arr[i][j] = mds(s1, s2, i - 1, j - 1);
        return arr[i][j];
    }
    
    else
    {
        arr[i][j] = min(mds(s1, s2, i - 1, j) + s1[i], mds(s1, s2, i, j - 1) + s2[j]);
        return arr[i][j];
    }
}

int charSize(char* s)
{
    int size = 0;
    while (s[size] != '\0')
    {
        size++;
    }
    
    return size;
}

int minimumDeleteSum(char * s1, char * s2){
    for (int i = 0; i < 1000; i++)
    {
        for (int j = 0; j < 1000; j++)
        {
            arr[i][j] = -1;
        }
    }
    
    int size1 = charSize(s1), size2 = charSize(s2);
    return mds(s1, s2, size1 - 1, size2 - 1);
}