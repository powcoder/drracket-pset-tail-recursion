;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |pset-10-starter (1)|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require spd/tags)

(@problem 1)
;;
;; Complete the design of the function called count-of-unique,
;; which produces the number of unique strings in a list of strings.
;; You can assume that the list is sorted alphabetically and that every
;; string has at least 1 character.
;;
;; For instance:
;; (count-of-unique (list "bat" "cat" "cat" "cat" "dog" "goat" "monk" "monk"))
;; should produce 5
;;
;; Your function MUST BE TAIL-RECURSIVE.
;;

(@htdf count-of-unique)
(@signature (listof String) -> Natural)
;; produce the count of unique strings in los

(define (count-of-unique los) 0)




(@problem 2)
;;
;; Complete the design of the function called widest-image,
;; which produces the widest image in a list of images.
;; You can assume the list contains at least one image and that
;; every image has a width greater than 0. 
;;
;; Your function MUST BE TAIL-RECURSIVE.
;;
;; Please note the following:
;;  - if multiple images tie for the widest, produce the
;;    image that appeared first in the list.
;;  - Note the wider? helper function that you may wish to use
;;

(@htdf widest-image)
(@signature (listof Image) -> Image)
;; produce the widest image in loi

(define (widest-image loi) empty-image)





(@htdf wider?)
(@signature Image Image -> Boolean)
;; produce true if img1 is wider than img2

(check-expect (wider? (rectangle 10 50 "solid" "red")
                      (rectangle 10 30 "solid" "red"))
              false)
(check-expect (wider? (rectangle 15 30 "solid" "red")
                      (rectangle 10 40 "solid" "red"))
              true)
(check-expect (wider? (rectangle 15 25 "solid" "red")
                      (rectangle 20 20 "solid" "red"))
              false)

(@template Image)

(define (wider? img1 img2)
  (> (image-width img1) (image-width img2)))




(@problem 3)
;;
;; Complete the design of the function called largest-range,
;; which produces the largest range between adjacent numbers
;; You can assume the list contains at least one number.
;; Range is the difference between the adjacent numbers. To calculate
;; the range subtract the smaller number from the larger one.
;;
;; For instance:
;;  (largest-range (list 1 3 5 9 11))  should produce 4
;;
;; Your function MUST BE TAIL-RECURSIVE.
;;


(@htdf largest-range)
(@signature (listof Natural) -> Natural)
;; produce the largest range between adjacent values in lon

(define (largest-range lon) 0)



;;
;; PART 2
;;
;; Please read over the data definition for a Patient provided below, which you
;; have used multiple times this semester.
;;

(@htdd Patient)
(define-struct patient (name age vac? symptoms transmits))
;; Patient is (make-patient String Natural Boolean (listof String)
;;                         (listof Patient))
;; interp. a patient with a name,
;;         their age restricted to [1, 120]
;;         vac? is true if patient has recieved the flu vaccine for 2019
;;         list of symptoms
;;         list of people they are known to have infected

(define LOS1 (list "Fever"))
(define LOS2 (list "Fever" "Fatigue" "Diarrhea"))
(define LOS3 (list "Fatigue" "Diarrhea" "Vomiting"))
(define LOS4 (list "Diarrhea" "Stomach pain"))
(define LOS5 (list "Vomiting" "Stomach pain"))
(define LOS6 (list "Fever" "Fatigue" "Stomach pain" "Vomiting"))

(define P1  (make-patient "Hu"    12 false  LOS6 empty))
(define P2  (make-patient "Mandy"  6 true  LOS2 empty))
(define P3  (make-patient "Tom"   65 false LOS4 empty))
(define P4  (make-patient "Akemi" 44 true LOS5 empty))
(define P5  (make-patient "Chung"  5 true  LOS4 (list P1 P2 P3)))
(define P6  (make-patient "Neda"  26 false LOS2 empty))
(define P7  (make-patient "Jill"  57 true LOS3 empty))
(define P8  (make-patient "Paul"  11 true  LOS2 (list P6 P7)))
(define P9  (make-patient "Simran" 5 true  LOS1 (list P5 P4)))
(define P10 (make-patient "Kathy"  6 false  empty (list P8 P9)))

#;
(define (fn-for-patient p0)
  (local [(define (fn-for-patient p)
            (... (patient-name p)
                 (patient-age p)
                 (patient-vac? p)
                 (fn-for-los (patient-symptoms p))
                 (fn-for-lop (patient-transmits p))))
                 
          (define (fn-for-lop lop)
            (cond [(empty? lop) (...)]
                  [else
                   (... (fn-for-patient (first lop))
                        (fn-for-lop (rest lop)))]))

          (define (fn-for-los los)
            (cond [(empty? los) (...)]
                  [else
                   (... (first los)
                        (fn-for-los (rest los)))]))]

    (fn-for-patient p0)))


(@problem 4)
;;
;; Design a function that consumes two natural numbers and a patient and
;; produces the number of patients that fall between two given ages
;; (inclusively).
;;
;; Your function MUST BE TAIL-RECURSIVE.
;;

(@htdf count-patient-in-age-range)
(@signature Natural Natural Patient -> Natural)
;; produce the number of patients that fall between the ages l-age and h-age
(define (count-patient-in-age-range l-age h-age p) 0)



(@problem 5)
;;
;; Design a function that consumes a natural number and a patient and produces
;; a list of names of all patients in the given patient's tree who have been
;; vaccinated and have at least the given number of symptoms. 
;;
;; Your function MUST BE TAIL-RECURSIVE.
;;

(@signature Natural Patient -> (listof String))
;; produce a list of names of vaccinated patients who have at least n symptoms

(define (all-names-crit n p) empty)
