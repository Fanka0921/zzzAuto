﻿/**
 * - 战斗
 */
fight(step := 4) {
  activateZZZ()
  stepLog("【step" step "】战斗")

  ; 进入战斗
  Press("1", 3)

  /** 通过三个特殊定位点判断所处界面 */
  patterns := [
    c.空洞.1.战斗.计时,
    c.空洞.1.战斗.确定键,
    c.空洞.1.战斗.确定绿勾
  ]

  ; 加载动画
  Sleep(10000)
  while (!PixelSearchPre(&X, &Y, c.空洞.1.战斗.开始*)) {
    if (A_Index > 251) {
      if (!setting.errHandler) {
        throw Error('识别战斗开始画面失败')
      }
      break
    }
    Sleep(100)
  }
  ; 战斗循环，约8s一循环
  loop (10) {
    if (A_Index != 1) {
      Press("Shift") ; 闪避
    }
    Send("{w Down}") ; 向前
    RandomSleep(300, 320)
    Click("Right Down") ; 右键蓄力，进入快蓄
    RandomSleep(580, 600)
    Click("Right Up") ; 快蓄完毕，释放右键
    RandomSleep()
    Click("Left Down") ; 普攻蓄力
    if (fightIsOver(patterns)) {
      return true
    }
    RandomSleep(1500, 1800)
    Click("Left Up") ; 完成蓄力普攻
    Send("{w Up}") ; 停止移动
    RandomSleep()
    ; 战斗动作
    loop (2) {
      Press("e") ; 使用技能
      SimulateClick(, , 4) ; 普攻
      Press("e") ; 使用技能
      SimulateClick(, , 8) ; 普攻
      Press("Shift") ; 闪避
      if (fightIsOver(patterns)) {
        return true
      }
    }
  }
  ; 如果战斗时长超过设置好的循环次数，可能是因为周上限提示需要点击确定，尝试使用Esc退出确认窗口，否则可以暂停战斗
  Press('Escape')
  RandomSleep(800, 1000)
  return fightIsOver(patterns)

  /** 判断战斗是否结束 */
  static fightIsOver(patterns) {
    judge() {
      loop (10) {
        for (pattern in patterns) {
          if (!PixelSearchPre(&FoundX, &FoundY, pattern*)) {
            return false
          }
        }
        Sleep(10)
      }
      return true
    }
    FoundX := 0, FoundY := 0
    if (!judge()) {
      return false
    }
    stepLog("【战斗】战斗结束")
    ; 点击确定
    SimulateClick(FoundX, FoundY, 2)
    RandomSleep(500, 600)
    ; 选择铭徽
    MingHui()
    ; 加载动画
    RandomSleep(7500, 8000)
    return true
  }
}