module SelectionSort;
import Trocar;

void selectionSort(int[] vet)
{
    int min, aux;
    for (int i = 0; i < vet.length -1; i++)
    {
        min = i;
        for(int j = i+1; j < vet.length; j++)
        {
            if(vet[j] < vet[min])
                min = j;
        }
      	Troca(vet[min],vet[i]);
    }

}
