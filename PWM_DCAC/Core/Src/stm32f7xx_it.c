/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    stm32f7xx_it.c
  * @brief   Interrupt Service Routines.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f7xx_it.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */

/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
uint16_t step = 0;
uint8_t  phase = 0;

uint16_t stbl[480] =
		{0,	 7,	  13,	 20,  26,  33,  39,  46,  52,  59,  66,  72,  79,  85,  92,  98,
		105, 111, 118, 124, 131, 137, 144, 150, 157, 163, 170, 176, 183, 189, 195, 202,
		208, 215, 221, 228, 234, 240, 247, 253, 259, 266, 272, 278, 285, 291, 297, 303,
		310, 316, 322, 328, 334, 341, 347, 353, 359, 365, 371, 377, 383, 389, 396, 402,
		408, 414, 419, 425, 431, 437, 443, 449, 455, 461, 467, 472, 478, 484, 490, 495,
		501, 507, 512, 518, 523, 529, 535, 540, 546, 551, 557, 562, 567, 573, 578, 584,
		589, 594, 599, 605, 610, 615, 620, 625, 630, 636, 641, 646, 651, 656, 660, 665,
		670, 675, 680, 685, 690, 694, 699, 704, 708, 713, 717, 722, 727, 731, 735, 740,
		744, 749, 753, 757, 762, 766, 770, 774, 778, 782, 786, 791, 795, 798, 802, 806,
		810, 814, 818, 822, 825, 829, 833, 836, 840, 843, 847, 850, 854, 857, 861, 864,
		867, 870, 874, 877, 880, 883, 886, 889, 892, 895, 898, 901, 904, 906, 909, 912,
		915, 917, 920, 922, 925, 927, 930, 932, 934, 937, 939, 941, 943, 946, 948, 950,
		952, 954, 956, 958, 960, 961, 963, 965, 967, 968, 970, 971, 973, 975, 976, 977,
		979, 980, 981, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 993, 994,
		995, 995, 996, 997, 997, 998, 998, 998, 999, 999, 999, 1000,1000,1000,1000,1000,
		1000,1000,1000,1000,1000,999, 999, 999, 998, 998, 998, 997, 997, 996, 995, 995,
		994, 993, 993, 992, 991, 990, 989, 988, 987, 986, 985, 984, 983, 981, 980, 979,
		977, 976, 975, 973, 971, 970, 968, 967, 965, 963, 961, 960, 958, 956, 954, 952,
		950, 948, 946, 943, 941, 939, 937, 934, 932, 930, 927, 925, 922, 920, 917, 915,
		912, 909, 906, 904, 901, 898, 895, 892, 889, 886, 883, 880, 877, 874, 870, 867,
		864, 861, 857, 854, 850, 847, 843, 840, 836, 833, 829, 825, 822, 818, 814, 810,
		806, 802, 798, 795, 791, 786, 782, 778, 774, 770, 766, 762, 757, 753, 749, 744,
		740, 735, 731, 727, 722, 717, 713, 708, 704, 699, 694, 690, 685, 680, 675, 670,
		665, 660, 656, 651, 646, 641, 636, 630, 625, 620, 615, 610, 605, 599, 594, 589,
		584, 578, 573, 567, 562, 557, 551, 546, 540, 535, 529, 523, 518, 512, 507, 501,
		495, 490, 484, 478, 472, 467, 461, 455, 449, 443, 437, 431, 425, 419, 414, 408,
		402, 396, 389, 383, 377, 371, 365, 359, 353, 347, 341, 334, 328, 322, 316, 310,
		303, 297, 291, 285, 278, 272, 266, 259, 253, 247, 240, 234, 228, 221, 215, 208,
		202, 195, 189, 183, 176, 170, 163, 157, 150, 144, 137, 131, 124, 118, 111, 105,
		98,  92,  85,  79,  72,  66,  59,  52,  46,  39,  33,  26,  20,  13,  7,   0};
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/* External variables --------------------------------------------------------*/
extern TIM_HandleTypeDef htim6;
/* USER CODE BEGIN EV */

/* USER CODE END EV */

/******************************************************************************/
/*           Cortex-M7 Processor Interruption and Exception Handlers          */
/******************************************************************************/
/**
  * @brief This function handles Non maskable interrupt.
  */
void NMI_Handler(void)
{
  /* USER CODE BEGIN NonMaskableInt_IRQn 0 */

  /* USER CODE END NonMaskableInt_IRQn 0 */
  /* USER CODE BEGIN NonMaskableInt_IRQn 1 */
   while (1)
  {
  }
  /* USER CODE END NonMaskableInt_IRQn 1 */
}

/**
  * @brief This function handles Hard fault interrupt.
  */
void HardFault_Handler(void)
{
  /* USER CODE BEGIN HardFault_IRQn 0 */

  /* USER CODE END HardFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_HardFault_IRQn 0 */
    /* USER CODE END W1_HardFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Memory management fault.
  */
void MemManage_Handler(void)
{
  /* USER CODE BEGIN MemoryManagement_IRQn 0 */

  /* USER CODE END MemoryManagement_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_MemoryManagement_IRQn 0 */
    /* USER CODE END W1_MemoryManagement_IRQn 0 */
  }
}

/**
  * @brief This function handles Pre-fetch fault, memory access fault.
  */
void BusFault_Handler(void)
{
  /* USER CODE BEGIN BusFault_IRQn 0 */

  /* USER CODE END BusFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_BusFault_IRQn 0 */
    /* USER CODE END W1_BusFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Undefined instruction or illegal state.
  */
void UsageFault_Handler(void)
{
  /* USER CODE BEGIN UsageFault_IRQn 0 */

  /* USER CODE END UsageFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_UsageFault_IRQn 0 */
    /* USER CODE END W1_UsageFault_IRQn 0 */
  }
}

/**
  * @brief This function handles System service call via SWI instruction.
  */
void SVC_Handler(void)
{
  /* USER CODE BEGIN SVCall_IRQn 0 */

  /* USER CODE END SVCall_IRQn 0 */
  /* USER CODE BEGIN SVCall_IRQn 1 */

  /* USER CODE END SVCall_IRQn 1 */
}

/**
  * @brief This function handles Debug monitor.
  */
void DebugMon_Handler(void)
{
  /* USER CODE BEGIN DebugMonitor_IRQn 0 */

  /* USER CODE END DebugMonitor_IRQn 0 */
  /* USER CODE BEGIN DebugMonitor_IRQn 1 */

  /* USER CODE END DebugMonitor_IRQn 1 */
}

/**
  * @brief This function handles Pendable request for system service.
  */
void PendSV_Handler(void)
{
  /* USER CODE BEGIN PendSV_IRQn 0 */

  /* USER CODE END PendSV_IRQn 0 */
  /* USER CODE BEGIN PendSV_IRQn 1 */

  /* USER CODE END PendSV_IRQn 1 */
}

/**
  * @brief This function handles System tick timer.
  */
void SysTick_Handler(void)
{
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}

/******************************************************************************/
/* STM32F7xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32f7xx.s).                    */
/******************************************************************************/

/**
  * @brief This function handles TIM6 global interrupt, DAC1 and DAC2 underrun error interrupts.
  */
void TIM6_DAC_IRQHandler(void)
{
  /* USER CODE BEGIN TIM6_DAC_IRQn 0 */
	if (phase == 0) TIM2->CCR1 = stbl[step];
	if (phase == 1) TIM2->CCR2 = stbl[step];

	step++;

	if (step >= 480)
	{
		step = 0;
		phase = phase ? 0 : 1;
	}
  /* USER CODE END TIM6_DAC_IRQn 0 */
  HAL_TIM_IRQHandler(&htim6);
  /* USER CODE BEGIN TIM6_DAC_IRQn 1 */

  /* USER CODE END TIM6_DAC_IRQn 1 */
}

/* USER CODE BEGIN 1 */

/* USER CODE END 1 */
