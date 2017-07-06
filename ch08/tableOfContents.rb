tbc = [['Table of Contents'],['Chapter 1: Getting Started', 'page  1'],['Chapter 2: Numbers        ', 'page  9'],['Chapter 3: Letters        ', 'page 13']]
width = 40
hwidth = width/2
puts tbc[0][0].center(width)
puts tbc[1][0].ljust(hwidth)+tbc[1][1].rjust(hwidth)
puts tbc[2][0].ljust(hwidth)+tbc[2][1].rjust(hwidth)
puts tbc[3][0].ljust(hwidth)+tbc[3][1].rjust(hwidth)
