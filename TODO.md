TODO
=====

* debug option
* mod:fun/number_of_args εκτός από lid
* remove ets tables (maybe)
* στο πρώτο λάθος που θα βρούμε να σταματάμε, δηλαδή στο
  ./test.sh 6 δεν χρειάζεται να συνεχίζει με δεύτερο interleaving
* καλό θα ήταν να αποφεύγαμε το πρώτο yield του process P1,
  γιατί και δεν είναι ωραίο στο debug mode και δεν υπάρχει
  λόγος να γίνεται
* το &lt;TODO> του receive
* και άλλο ένα &lt;TODO> στο exit, στις περιπτώσεις που το
  αποτέλεσμα ενός process είναι προφανές, όπως για παράδειγμα
  όταν τελειώνει με receive που ξέρουμε τι επιστρέφει
* η internal να πετάει κάποιου είδους exception (erlang:exit) --
  να μην τυπώνει και να συνεχίζεται η εκτέλεση, γιατί κρασάρει.
* add sender to receive log message