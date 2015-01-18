;;; packages.el --- clang-format Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar clang-format-packages
  '(
    clang-format
    projectile
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar clang-format-excluded-packages '()
  "List of packages to exclude.")

;; For each package, define a function clang-format/init-<package-clang-format>
;;
(defun clang-format/init-clang-format ()
  "Initialize my package"
  (use-package clang-format
    :defer t
    :init
    (evil-leader/set-key
      "of" 'clang-format-region
      "oF" 'clang-format-buffer))
  (use-package projectile
    :defer t
    :init
    (progn
      (autoload 'projectile-find-other-file "projectile")
      (evil-leader/set-key
        "oo" 'projectile-find-other-file))))
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
