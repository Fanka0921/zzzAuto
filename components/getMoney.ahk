﻿/**
 * - step6
 * - 获得零号业绩
 */
getMoney() {
  activateZZZ()
  debugLog("【step6】获得零号业绩")
  ; 进入零号业绩格子
  Press('d')
  Press('w', 2)
  Press('d', 2)
  RandomSleep(2200, 2500)
  Press('Space', 8)
  RandomSleep(2200, 2500)
  Press('d')
  ; 获得零号业绩（如果有）
  Press('w')
  ; 加载动画
  RandomSleep(1600, 1800)
  X := 1800, Y := 800
  preprocess(&X, &Y)
  ; 点击确定（如果有）
  SimulateClick(X, Y, 2)
  RandomSleep(700, 800)
}