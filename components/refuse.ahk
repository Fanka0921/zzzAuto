﻿/**
 * - step 2
 * - 拒绝好意
 */
refuse() {
  activateZZZ()
  debugLog("【step2】拒绝好意")
  RandomSleep()
  ; 开局铭徽(如果有)
  MingHui(true)
  ; 对话
  Press("Space", 10)
  ; 拒绝
  pixelSearchAndClick(1400, 670, 1520, 690, 1662, 676, 0xffffff)
  ; 对话
  Press("Space", 10)
  ; 加载动画
  RandomSleep(5000, 5200)
}