#include "lcd.h"

int main() {
  lcd_init();
  lcd_print("Howdy");

  while (1) {
    // Infinite loop - keep the program running
  }

  return 0;
}