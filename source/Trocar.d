module Trocar;

void Troca(ref int x, ref int y)
{
	int aux = x;
    x = y;
    y = aux;

}
