import random
from receiver import Receiver

# tests the receiver
a = []
e = []

rec = Receiver()

for i in range(25):
	for j in range(10):
		a.append(random.randint(1, 100))
		e.append(random.randint(1, 100))
	print "sending: %r" % i
	rec.receiveIdeal(e, a)
	e = []
	a = []

rec.hangUp()

