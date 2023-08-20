(defparameter *projects*
  '((#p"/home/kpa/code/ALEX/" . :alex)))

(defun load-systems ()
  (dolist (project *projects*)
    (destructuring-bind (path . system-name) project
      (pushnew (uiop:ensure-absolute-pathname path) asdf:*central-registry*)
      (asdf:load-system system-name))))

(load-systems)
