;;;; 计时器函数
;;;; 
;;;; created at 2021/11/15 16:46:31
;;;; last modified at 2022/07/13 20:14:21
;;;; 
;;;; copyright (c) 2021 - 2022 Jack Hsu


(defun xg/timer-record () 
  ;; 返回当前时刻的时间值，浮点值。
  (* 0.001 (getvar "millisecs")))

(defun xg/timer-start () 
  ;; 启动计时器，返回当前时刻的时间值，浮点值。
  (xg/timer-record))

(defun xg/timer2 (x) 
  ;; 自x时刻到当前时刻的时长，浮点值，单位为秒。
  (- (xg/timer-record) x))

(defun xg/timer (x / odz ret) 
  ;; 自x时刻到当前时刻的时长，字符串，单位为秒。
  (setq ret (xg/timer2 x))
  (if (/= 1 (setq odz (getvar "dimzin"))) 
    (setvar "dimzin" 1))
  (setq ret (rtos ret 2 3))
  (if (/= odz (getvar "dimzin")) 
    (setvar "dimzin" odz))
  ret)

(princ)