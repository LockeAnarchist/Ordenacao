module BubbleFlag;
import Trocar;

void bubbleFlag(int[] vet)
{
	int aux;
	bool troca = true;
	while(troca)
	{
		
		for(int i = 0; i <= vet.length - 1 ; i++)
		{
			troca = false;
			for(int j = i+1; j <= vet.length - 1 - i; j++)
			{
				if (vet[j] < vet[i]){
					Troca(vet[j], vet[i]);
					troca = true;
				}
			
			}
		}
	}

}
