#include <stdio.h>
int main()
{
    int row, col, count = 0;
    printf("enter your matrix dimension(x, y): ");
    scanf("%d %d", &row, &col);

    int a[row][col];
    printf("enter your matrix elements:\n");
    for (int i = 0; i < row; i++)
    {
        for (int j = 0; j < col; j++)
        {
            scanf("%d", &a[i][j]);
        }
    }

    printf("here is your matrix:\n");
    for (int i = 0; i < row; i++)
    {
        for (int j = 0; j < col; j++)
        {
            printf("%d ", a[i][j]);
        }
        printf("\n");
    }
    return 0;
}