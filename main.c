#include "main.h"


static void GPIO_InitTypeDef, GPIO_InitStruct;

int main(void)
{
	HAL_Init();
	SystemClock_Config();
	LED2_GPIO_CLK_ENABLE();
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
	GPIO_InitStruct.Pin = LED2_5;
	HAL_GPIO_Init(LED2_GPIO_PORT, &GPIO_InitStruct);

	while(1)
	{
		HAL_GPIO_TooglePin(LED2_GPIO_PORT, LED2_PIN);
		HAL_Delay(100);
	}


}
