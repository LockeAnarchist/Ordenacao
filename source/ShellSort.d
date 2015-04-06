module ShellSort;

void shellSort(int[] vet)
{
    int j, h, i, pivo;
    h = 1;
    while (h < vet.length)
        h=3*h+1;
    do
    {
        h=h/3;
        for(i=h; i < vet.length; i++)
        {
            pivo = vet[i];
            j = i-h;
            while(j >= 0 && vet[j]>pivo)
            {
                vet[j+h] = vet[j];
                j = j-h;
            }
            vet[j+h] = pivo;
        }
    }while(h > 1);
}
