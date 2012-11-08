#!python
from threading import *
from collections import deque
import copy

class Receiver():
	def __init__(self, n=100, p=50, makethread=True):
		self.numN = n
		self.numP = p
		self.threaded = makethread

		self.n = []
		self.p = []

		self.newError = deque()
		self.newA = deque()
		
		if self.threaded == True :
			self.receiverOn = True
			self.lock = RLock()
			self.dataReady = Condition(self.lock)
			self.receiverThread = Thread(target=self.receiverThread, args=())

	
	def receiverThread(self):
		i = 0
		running = True
		print "starting the receiver thread"
		while(running):
			self.dataReady.acquire()
			while not self.newError and not self.newA and self.receiverOn:
				print "waiting"
				self.dataReady.wait(2)
				
			if self.newError and self.newA:
				#get the new input
				self.error = self.newError.popleft()
				self.A = self.newA.popleft()
				self.dataReady.release()
			
				#calculate the new output
				print "receiving %r" % i
				i = i + 1

				#write out the new output

			elif not self.receiverOn:
				running = False
				self.dataReady.release()
			else:
				self.dataReady.release()

		#do end of thread stuff
		print "hung up receiver"


	def receiveIdeal(self, error, A):
		self.dataReady.acquire()
		self.newError.append(copy.copy(error))
		self.newA.append(copy.copy(A))
		self.dataReady.notify()
		self.lock.release()

		#start thread if not started
		if not self.receiverThread.isAlive():
			print "picking up"
			self.receiverOn = True
			self.receiverThread.start()

	def hangUp(self):
		print "hanging up"
		self.dataReady.acquire()
		self.receiverOn = False
		self.dataReady.notify()
		self.dataReady.release()

		self.receiverThread.join()
		print "confirmed receiver hung up"




