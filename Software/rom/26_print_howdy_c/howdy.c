#include "lcd.h"

int main() {
  // Initialize LCD
  lcd_init();
  
  // Try to clear the screen first
  lcd_clear();
  
  // Print our message
  lcd_print("Howdy");

  while (1) {
    // Infinite loop - keep the program running
  }

  return 0;
}