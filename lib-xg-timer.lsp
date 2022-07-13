;;;; ��ʱ������
;;;; 
;;;; created at 2021/11/15 16:46:31
;;;; last modified at 2022/07/13 20:14:21
;;;; 
;;;; copyright (c) 2021 - 2022 Jack Hsu


(defun xg/timer-record () 
  ;; ���ص�ǰʱ�̵�ʱ��ֵ������ֵ��
  (* 0.001 (getvar "millisecs")))

(defun xg/timer-start () 
  ;; ������ʱ�������ص�ǰʱ�̵�ʱ��ֵ������ֵ��
  (xg/timer-record))

(defun xg/timer2 (x) 
  ;; ��xʱ�̵���ǰʱ�̵�ʱ��������ֵ����λΪ�롣
  (- (xg/timer-record) x))

(defun xg/timer (x / odz ret) 
  ;; ��xʱ�̵���ǰʱ�̵�ʱ�����ַ�������λΪ�롣
  (setq ret (xg/timer2 x))
  (if (/= 1 (setq odz (getvar "dimzin"))) 
    (setvar "dimzin" 1))
  (setq ret (rtos ret 2 3))
  (if (/= odz (getvar "dimzin")) 
    (setvar "dimzin" odz))
  ret)

(princ)