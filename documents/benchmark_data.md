### Arduino Benchmarks, based off 16 MHz clock frequency

| Test                  | Max<br/>Frequency | Usage (Cycles)   | Usage (%)  |
| --------------------- | ----------------- | ---------------- | ---------- |
| Interrupts            | 66 Hz             | 4090 Cycles      | 0.03%      |
| Servo                 | 60 Hz             | 93k Cycles       | 0.58%      |
| **Total**             | **---**           | **97k Cycles**   | **0.61%**  |
| Millisecond<br/>Timer | ~1k Hz            | 100k-200k Cycles | 0.62-1.25% |

**Calculated Cycles Per Interrupt:** 58

**Predicted Cycles Per Interrupt:** 61

- 3 cycle difference likely due to clock interrupt

<br/>

<br/>

![](/home/user/.config/marktext/images/2025-03-03-21-18-36-image.png)

<br/>

![](/home/user/.config/marktext/images/2025-03-03-21-28-32-image.png)
