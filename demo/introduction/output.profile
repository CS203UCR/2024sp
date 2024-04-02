Flat profile:

Each sample counts as 0.01 seconds.
  %   cumulative   self              self     total           
 time   seconds   seconds    calls  us/call  us/call  name    
100.24      1.34     1.34    10000   134.32   134.32  calculate_sum(int*, unsigned int, int)
  0.00      1.34     0.00  4683071     0.00     0.00  bool __gnu_cxx::__ops::_Iter_less_iter::operator()<int*, int*>(int*, int*) const
  0.00      1.34     0.00  4001120     0.00     0.00  std::remove_reference<int&>::type&& std::move<int&>(int&)
  0.00      1.34     0.00   967532     0.00     0.00  bool __gnu_cxx::__ops::_Val_less_iter::operator()<int, int*>(int&, int*) const
  0.00      1.34     0.00   923813     0.00     0.00  std::enable_if<std::__and_<std::__not_<std::__is_tuple_like<int> >, std::is_move_constructible<int>, std::is_move_assignable<int> >::value, void>::type std::swap<int>(int&, int&)
  0.00      1.34     0.00   923813     0.00     0.00  void std::iter_swap<int*, int*>(int*, int*)
  0.00      1.34     0.00   262137     0.00     0.00  __gnu_cxx::__ops::__val_comp_iter(__gnu_cxx::__ops::_Iter_less_iter)
  0.00      1.34     0.00   262137     0.00     0.00  void std::__unguarded_linear_insert<int*, __gnu_cxx::__ops::_Val_less_iter>(int*, __gnu_cxx::__ops::_Val_less_iter)
  0.00      1.34     0.00    27272     0.00     0.00  int* std::__unguarded_partition<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter)
  0.00      1.34     0.00    27272     0.00     0.00  void std::__move_median_to_first<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter)
  0.00      1.34     0.00    27272     0.00     0.00  int* std::__unguarded_partition_pivot<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter)
  0.00      1.34     0.00       18     0.00     0.00  int* std::__niter_base<int*>(int*)
  0.00      1.34     0.00       12     0.00     0.00  int* std::__miter_base<int*>(int*)
  0.00      1.34     0.00        6     0.00     0.00  int* std::__copy_move_backward<true, true, std::random_access_iterator_tag>::__copy_move_b<int>(int const*, int const*, int*)
  0.00      1.34     0.00        6     0.00     0.00  int* std::__niter_wrap<int*>(int* const&, int*)
  0.00      1.34     0.00        6     0.00     0.00  int* std::move_backward<int*, int*>(int*, int*, int*)
  0.00      1.34     0.00        6     0.00     0.00  int* std::__copy_move_backward_a<true, int*, int*>(int*, int*, int*)
  0.00      1.34     0.00        6     0.00     0.00  int* std::__copy_move_backward_a2<true, int*, int*>(int*, int*, int*)
  0.00      1.34     0.00        1     0.00     0.00  _GLOBAL__sub_I_main
  0.00      1.34     0.00        1     0.00     0.00  __static_initialization_and_destruction_0(int, int)
  0.00      1.34     0.00        1     0.00     0.00  __gnu_cxx::__ops::__iter_less_iter()
  0.00      1.34     0.00        1     0.00     0.00  void std::__insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter)
  0.00      1.34     0.00        1     0.00     0.00  void std::__introsort_loop<int*, long, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, long, __gnu_cxx::__ops::_Iter_less_iter)
  0.00      1.34     0.00        1     0.00     0.00  void std::__final_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter)
  0.00      1.34     0.00        1     0.00     0.00  void std::__unguarded_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter)
  0.00      1.34     0.00        1     0.00     0.00  std::__lg(long)
  0.00      1.34     0.00        1     0.00     0.00  void std::sort<int*>(int*, int*)
  0.00      1.34     0.00        1     0.00     0.00  void std::__sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter)

 %         the percentage of the total running time of the
time       program used by this function.

cumulative a running sum of the number of seconds accounted
 seconds   for by this function and those listed above it.

 self      the number of seconds accounted for by this
seconds    function alone.  This is the major sort for this
           listing.

calls      the number of times this function was invoked, if
           this function is profiled, else blank.

 self      the average number of milliseconds spent in this
ms/call    function per call, if this function is profiled,
	   else blank.

 total     the average number of milliseconds spent in this
ms/call    function and its descendents per call, if this
	   function is profiled, else blank.

name       the name of the function.  This is the minor sort
           for this listing. The index shows the location of
	   the function in the gprof listing. If the index is
	   in parenthesis it shows where it would appear in
	   the gprof listing if it were to be printed.

Copyright (C) 2012-2020 Free Software Foundation, Inc.

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.

		     Call graph (explanation follows)


granularity: each sample hit covers 2 byte(s) for 0.74% of 1.34 seconds

index % time    self  children    called     name
                                                 <spontaneous>
[1]    100.0    0.00    1.34                 main [1]
                1.34    0.00   10000/10000       calculate_sum(int*, unsigned int, int) [2]
                0.00    0.00       1/1           void std::sort<int*>(int*, int*) [34]
-----------------------------------------------
                1.34    0.00   10000/10000       main [1]
[2]    100.0    1.34    0.00   10000         calculate_sum(int*, unsigned int, int) [2]
-----------------------------------------------
                0.00    0.00      15/4683071     void std::__insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [29]
                0.00    0.00   69196/4683071     void std::__move_median_to_first<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [17]
                0.00    0.00 4613860/4683071     int* std::__unguarded_partition<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [16]
[9]      0.0    0.00    0.00 4683071         bool __gnu_cxx::__ops::_Iter_less_iter::operator()<int*, int*>(int*, int*) const [9]
-----------------------------------------------
                0.00    0.00      12/4001120     void std::__insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [29]
                0.00    0.00 1229669/4001120     void std::__unguarded_linear_insert<int*, __gnu_cxx::__ops::_Val_less_iter>(int*, __gnu_cxx::__ops::_Val_less_iter) [15]
                0.00    0.00 2771439/4001120     std::enable_if<std::__and_<std::__not_<std::__is_tuple_like<int> >, std::is_move_constructible<int>, std::is_move_assignable<int> >::value, void>::type std::swap<int>(int&, int&) [12]
[10]     0.0    0.00    0.00 4001120         std::remove_reference<int&>::type&& std::move<int&>(int&) [10]
-----------------------------------------------
                0.00    0.00  967532/967532      void std::__unguarded_linear_insert<int*, __gnu_cxx::__ops::_Val_less_iter>(int*, __gnu_cxx::__ops::_Val_less_iter) [15]
[11]     0.0    0.00    0.00  967532         bool __gnu_cxx::__ops::_Val_less_iter::operator()<int, int*>(int&, int*) const [11]
-----------------------------------------------
                0.00    0.00  923813/923813      void std::iter_swap<int*, int*>(int*, int*) [13]
[12]     0.0    0.00    0.00  923813         std::enable_if<std::__and_<std::__not_<std::__is_tuple_like<int> >, std::is_move_constructible<int>, std::is_move_assignable<int> >::value, void>::type std::swap<int>(int&, int&) [12]
                0.00    0.00 2771439/4001120     std::remove_reference<int&>::type&& std::move<int&>(int&) [10]
-----------------------------------------------
                0.00    0.00   27272/923813      void std::__move_median_to_first<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [17]
                0.00    0.00  896541/923813      int* std::__unguarded_partition<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [16]
[13]     0.0    0.00    0.00  923813         void std::iter_swap<int*, int*>(int*, int*) [13]
                0.00    0.00  923813/923813      std::enable_if<std::__and_<std::__not_<std::__is_tuple_like<int> >, std::is_move_constructible<int>, std::is_move_assignable<int> >::value, void>::type std::swap<int>(int&, int&) [12]
-----------------------------------------------
                0.00    0.00       9/262137      void std::__insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [29]
                0.00    0.00  262128/262137      void std::__unguarded_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [32]
[14]     0.0    0.00    0.00  262137         __gnu_cxx::__ops::__val_comp_iter(__gnu_cxx::__ops::_Iter_less_iter) [14]
-----------------------------------------------
                0.00    0.00       9/262137      void std::__insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [29]
                0.00    0.00  262128/262137      void std::__unguarded_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [32]
[15]     0.0    0.00    0.00  262137         void std::__unguarded_linear_insert<int*, __gnu_cxx::__ops::_Val_less_iter>(int*, __gnu_cxx::__ops::_Val_less_iter) [15]
                0.00    0.00 1229669/4001120     std::remove_reference<int&>::type&& std::move<int&>(int&) [10]
                0.00    0.00  967532/967532      bool __gnu_cxx::__ops::_Val_less_iter::operator()<int, int*>(int&, int*) const [11]
-----------------------------------------------
                0.00    0.00   27272/27272       int* std::__unguarded_partition_pivot<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [18]
[16]     0.0    0.00    0.00   27272         int* std::__unguarded_partition<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [16]
                0.00    0.00 4613860/4683071     bool __gnu_cxx::__ops::_Iter_less_iter::operator()<int*, int*>(int*, int*) const [9]
                0.00    0.00  896541/923813      void std::iter_swap<int*, int*>(int*, int*) [13]
-----------------------------------------------
                0.00    0.00   27272/27272       int* std::__unguarded_partition_pivot<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [18]
[17]     0.0    0.00    0.00   27272         void std::__move_median_to_first<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [17]
                0.00    0.00   69196/4683071     bool __gnu_cxx::__ops::_Iter_less_iter::operator()<int*, int*>(int*, int*) const [9]
                0.00    0.00   27272/923813      void std::iter_swap<int*, int*>(int*, int*) [13]
-----------------------------------------------
                0.00    0.00   27272/27272       void std::__introsort_loop<int*, long, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, long, __gnu_cxx::__ops::_Iter_less_iter) [30]
[18]     0.0    0.00    0.00   27272         int* std::__unguarded_partition_pivot<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [18]
                0.00    0.00   27272/27272       void std::__move_median_to_first<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [17]
                0.00    0.00   27272/27272       int* std::__unguarded_partition<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [16]
-----------------------------------------------
                0.00    0.00      18/18          int* std::__copy_move_backward_a2<true, int*, int*>(int*, int*, int*) [25]
[19]     0.0    0.00    0.00      18         int* std::__niter_base<int*>(int*) [19]
-----------------------------------------------
                0.00    0.00      12/12          int* std::move_backward<int*, int*>(int*, int*, int*) [23]
[20]     0.0    0.00    0.00      12         int* std::__miter_base<int*>(int*) [20]
-----------------------------------------------
                0.00    0.00       6/6           int* std::__copy_move_backward_a<true, int*, int*>(int*, int*, int*) [24]
[21]     0.0    0.00    0.00       6         int* std::__copy_move_backward<true, true, std::random_access_iterator_tag>::__copy_move_b<int>(int const*, int const*, int*) [21]
-----------------------------------------------
                0.00    0.00       6/6           int* std::__copy_move_backward_a2<true, int*, int*>(int*, int*, int*) [25]
[22]     0.0    0.00    0.00       6         int* std::__niter_wrap<int*>(int* const&, int*) [22]
-----------------------------------------------
                0.00    0.00       6/6           void std::__insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [29]
[23]     0.0    0.00    0.00       6         int* std::move_backward<int*, int*>(int*, int*, int*) [23]
                0.00    0.00      12/12          int* std::__miter_base<int*>(int*) [20]
                0.00    0.00       6/6           int* std::__copy_move_backward_a2<true, int*, int*>(int*, int*, int*) [25]
-----------------------------------------------
                0.00    0.00       6/6           int* std::__copy_move_backward_a2<true, int*, int*>(int*, int*, int*) [25]
[24]     0.0    0.00    0.00       6         int* std::__copy_move_backward_a<true, int*, int*>(int*, int*, int*) [24]
                0.00    0.00       6/6           int* std::__copy_move_backward<true, true, std::random_access_iterator_tag>::__copy_move_b<int>(int const*, int const*, int*) [21]
-----------------------------------------------
                0.00    0.00       6/6           int* std::move_backward<int*, int*>(int*, int*, int*) [23]
[25]     0.0    0.00    0.00       6         int* std::__copy_move_backward_a2<true, int*, int*>(int*, int*, int*) [25]
                0.00    0.00      18/18          int* std::__niter_base<int*>(int*) [19]
                0.00    0.00       6/6           int* std::__copy_move_backward_a<true, int*, int*>(int*, int*, int*) [24]
                0.00    0.00       6/6           int* std::__niter_wrap<int*>(int* const&, int*) [22]
-----------------------------------------------
                0.00    0.00       1/1           __libc_csu_init [49]
[26]     0.0    0.00    0.00       1         _GLOBAL__sub_I_main [26]
                0.00    0.00       1/1           __static_initialization_and_destruction_0(int, int) [27]
-----------------------------------------------
                0.00    0.00       1/1           _GLOBAL__sub_I_main [26]
[27]     0.0    0.00    0.00       1         __static_initialization_and_destruction_0(int, int) [27]
-----------------------------------------------
                0.00    0.00       1/1           void std::sort<int*>(int*, int*) [34]
[28]     0.0    0.00    0.00       1         __gnu_cxx::__ops::__iter_less_iter() [28]
-----------------------------------------------
                0.00    0.00       1/1           void std::__final_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [31]
[29]     0.0    0.00    0.00       1         void std::__insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [29]
                0.00    0.00      15/4683071     bool __gnu_cxx::__ops::_Iter_less_iter::operator()<int*, int*>(int*, int*) const [9]
                0.00    0.00      12/4001120     std::remove_reference<int&>::type&& std::move<int&>(int&) [10]
                0.00    0.00       9/262137      __gnu_cxx::__ops::__val_comp_iter(__gnu_cxx::__ops::_Iter_less_iter) [14]
                0.00    0.00       9/262137      void std::__unguarded_linear_insert<int*, __gnu_cxx::__ops::_Val_less_iter>(int*, __gnu_cxx::__ops::_Val_less_iter) [15]
                0.00    0.00       6/6           int* std::move_backward<int*, int*>(int*, int*, int*) [23]
-----------------------------------------------
                               27272             void std::__introsort_loop<int*, long, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, long, __gnu_cxx::__ops::_Iter_less_iter) [30]
                0.00    0.00       1/1           void std::__sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [35]
[30]     0.0    0.00    0.00       1+27272   void std::__introsort_loop<int*, long, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, long, __gnu_cxx::__ops::_Iter_less_iter) [30]
                0.00    0.00   27272/27272       int* std::__unguarded_partition_pivot<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [18]
                               27272             void std::__introsort_loop<int*, long, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, long, __gnu_cxx::__ops::_Iter_less_iter) [30]
-----------------------------------------------
                0.00    0.00       1/1           void std::__sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [35]
[31]     0.0    0.00    0.00       1         void std::__final_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [31]
                0.00    0.00       1/1           void std::__insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [29]
                0.00    0.00       1/1           void std::__unguarded_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [32]
-----------------------------------------------
                0.00    0.00       1/1           void std::__final_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [31]
[32]     0.0    0.00    0.00       1         void std::__unguarded_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [32]
                0.00    0.00  262128/262137      void std::__unguarded_linear_insert<int*, __gnu_cxx::__ops::_Val_less_iter>(int*, __gnu_cxx::__ops::_Val_less_iter) [15]
                0.00    0.00  262128/262137      __gnu_cxx::__ops::__val_comp_iter(__gnu_cxx::__ops::_Iter_less_iter) [14]
-----------------------------------------------
                0.00    0.00       1/1           void std::__sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [35]
[33]     0.0    0.00    0.00       1         std::__lg(long) [33]
-----------------------------------------------
                0.00    0.00       1/1           main [1]
[34]     0.0    0.00    0.00       1         void std::sort<int*>(int*, int*) [34]
                0.00    0.00       1/1           __gnu_cxx::__ops::__iter_less_iter() [28]
                0.00    0.00       1/1           void std::__sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [35]
-----------------------------------------------
                0.00    0.00       1/1           void std::sort<int*>(int*, int*) [34]
[35]     0.0    0.00    0.00       1         void std::__sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [35]
                0.00    0.00       1/1           std::__lg(long) [33]
                0.00    0.00       1/1           void std::__introsort_loop<int*, long, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, long, __gnu_cxx::__ops::_Iter_less_iter) [30]
                0.00    0.00       1/1           void std::__final_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [31]
-----------------------------------------------

 This table describes the call tree of the program, and was sorted by
 the total amount of time spent in each function and its children.

 Each entry in this table consists of several lines.  The line with the
 index number at the left hand margin lists the current function.
 The lines above it list the functions that called this function,
 and the lines below it list the functions this one called.
 This line lists:
     index	A unique number given to each element of the table.
		Index numbers are sorted numerically.
		The index number is printed next to every function name so
		it is easier to look up where the function is in the table.

     % time	This is the percentage of the `total' time that was spent
		in this function and its children.  Note that due to
		different viewpoints, functions excluded by options, etc,
		these numbers will NOT add up to 100%.

     self	This is the total amount of time spent in this function.

     children	This is the total amount of time propagated into this
		function by its children.

     called	This is the number of times the function was called.
		If the function called itself recursively, the number
		only includes non-recursive calls, and is followed by
		a `+' and the number of recursive calls.

     name	The name of the current function.  The index number is
		printed after it.  If the function is a member of a
		cycle, the cycle number is printed between the
		function's name and the index number.


 For the function's parents, the fields have the following meanings:

     self	This is the amount of time that was propagated directly
		from the function into this parent.

     children	This is the amount of time that was propagated from
		the function's children into this parent.

     called	This is the number of times this parent called the
		function `/' the total number of times the function
		was called.  Recursive calls to the function are not
		included in the number after the `/'.

     name	This is the name of the parent.  The parent's index
		number is printed after it.  If the parent is a
		member of a cycle, the cycle number is printed between
		the name and the index number.

 If the parents of the function cannot be determined, the word
 `<spontaneous>' is printed in the `name' field, and all the other
 fields are blank.

 For the function's children, the fields have the following meanings:

     self	This is the amount of time that was propagated directly
		from the child into the function.

     children	This is the amount of time that was propagated from the
		child's children to the function.

     called	This is the number of times the function called
		this child `/' the total number of times the child
		was called.  Recursive calls by the child are not
		listed in the number after the `/'.

     name	This is the name of the child.  The child's index
		number is printed after it.  If the child is a
		member of a cycle, the cycle number is printed
		between the name and the index number.

 If there are any cycles (circles) in the call graph, there is an
 entry for the cycle-as-a-whole.  This entry shows who called the
 cycle (as parents) and the members of the cycle (as children.)
 The `+' recursive calls entry shows the number of function calls that
 were internal to the cycle, and the calls entry for each member shows,
 for that member, how many times it was called from other members of
 the cycle.

Copyright (C) 2012-2020 Free Software Foundation, Inc.

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.

Index by function name

  [26] _GLOBAL__sub_I_main    [22] int* std::__niter_wrap<int*>(int* const&, int*) [32] void std::__unguarded_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter)
   [2] calculate_sum(int*, unsigned int, int) [23] int* std::move_backward<int*, int*>(int*, int*, int*) [18] int* std::__unguarded_partition_pivot<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter)
  [27] __static_initialization_and_destruction_0(int, int) [29] void std::__insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [33] std::__lg(long)
  [14] __gnu_cxx::__ops::__val_comp_iter(__gnu_cxx::__ops::_Iter_less_iter) [30] void std::__introsort_loop<int*, long, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, long, __gnu_cxx::__ops::_Iter_less_iter) [10] std::remove_reference<int&>::type&& std::move<int&>(int&)
  [28] __gnu_cxx::__ops::__iter_less_iter() [16] int* std::__unguarded_partition<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [34] void std::sort<int*>(int*, int*)
  [11] bool __gnu_cxx::__ops::_Val_less_iter::operator()<int, int*>(int&, int*) const [24] int* std::__copy_move_backward_a<true, int*, int*>(int*, int*, int*) [12] std::enable_if<std::__and_<std::__not_<std::__is_tuple_like<int> >, std::is_move_constructible<int>, std::is_move_assignable<int> >::value, void>::type std::swap<int>(int&, int&)
   [9] bool __gnu_cxx::__ops::_Iter_less_iter::operator()<int*, int*>(int*, int*) const [31] void std::__final_insertion_sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [35] void std::__sort<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, __gnu_cxx::__ops::_Iter_less_iter)
  [21] int* std::__copy_move_backward<true, true, std::random_access_iterator_tag>::__copy_move_b<int>(int const*, int const*, int*) [17] void std::__move_median_to_first<int*, __gnu_cxx::__ops::_Iter_less_iter>(int*, int*, int*, int*, __gnu_cxx::__ops::_Iter_less_iter) [13] void std::iter_swap<int*, int*>(int*, int*)
  [20] int* std::__miter_base<int*>(int*) [25] int* std::__copy_move_backward_a2<true, int*, int*>(int*, int*, int*)
  [19] int* std::__niter_base<int*>(int*) [15] void std::__unguarded_linear_insert<int*, __gnu_cxx::__ops::_Val_less_iter>(int*, __gnu_cxx::__ops::_Val_less_iter)
