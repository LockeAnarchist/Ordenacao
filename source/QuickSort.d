module QuickSort;
import Trocar;

void quickSort(int[] vet,int inicio, int fim){
	int pivo;
	if(inicio < fim)
	{
		pivo = Particao(vet, inicio, fim);
		quickSort(vet, inicio, pivo-1);
		quickSort(vet, pivo+1, fim);
	}

}
int Particao(int[] vet, int inicio, int fim){
	int pivo = vet[inicio];
	int i = inicio +1;
	int j = fim;

	while(i <= j)
	{
		while(i <= j && vet[i]<=pivo)
			i++;
		while(vet[j] > pivo)
			j--;
		if(i <= j)
		{
			Troca(vet[i],vet[j]);
			i++;
			j--;
		}
	}
	Troca(vet[inicio], vet[j]);
	return j;
}
