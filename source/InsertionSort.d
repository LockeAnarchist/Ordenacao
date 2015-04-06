module InsertionSort;

void insertionSort(int[] vet)
{
    int pivo, j;
    for(int i = 1; i <= vet.length -1; i++)
    {
        pivo = vet[i];
        j = i - 1;
        while( j >= 0 && vet[j] > pivo)
        {
            vet[j+1] = vet[j];
            j = j - 1;
        }
        vet[j+1] = pivo;
    }

}
