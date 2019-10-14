/**
 *  Solution for Next Greater Element III
 *  URL: https://leetcode.com/problems/next-greater-element-iii/
 */

int compare(int* arr1, int size1, int* arr2, int size2)
{
    if (size1 - size2 != 0)
    {
        return size1 - size2;
    }
    
    while (size1-- >= 0)
    {
        if (arr1[size1] - arr2[size1] != 0)
        {
            return arr1[size1] - arr2[size1];
        }
    }
    
    return 0;
}

int int2array(int n, int *array)
{
    int i = 0;
    while (n > 0) {
        array[i] = n % 10;
        n /= 10;
        i++;
    }

    return i;
}

int array2int(int *array, int size)
{
    int max_int[10] = {7, 4, 5, 3, 8, 4, 7, 4 ,1 ,2};
    if (compare(array, size, max_int, 10) > 0) return -1;
    int result = 0;
    int base = 1;

    for (int i = 0; i < size; i++)
    {
        result += array[i] * base;
        base *= 10;
    }

    return result;
}

int indexOfNextMin(int *array, int start, int length, int number)
{
    int min = -1;
    for (int i = start; i < start + length; i++)
    {
        if (array[i] > number && (min == -1 || array[i] < array[min]))
        {
            min = i;
        }
    }

    return min;
}

void sort(int* array, int start, int length)
{
    int i = start + 1;
    while (i - start < length)
    {
        int j = i;
        while (j > start)
        {
            if (array[j] > array[j - 1])
            {
                int buff = array[j];
                array[j] = array[j - 1];
                array[j - 1] = buff;
            }
            j--;
        }
        i++;
    }
}

int nextGreaterElement(int n)
{
    int array[10];

    int size = int2array(n, array);
    for (int i = 1; i < size; i++)
    {
        int index = indexOfNextMin(array, 0, i, array[i]);
        if (index != -1) {
            int buff = array[i];
            array[i] = array[index];
            array[index] = buff;

            sort(array, 0, i);
            return array2int(array, size);
        }
    }

    return -1;
}