#!python
from threading import *
from collections import deque
import copy

class Receiver():
	def __init__(self, makethread=True, lookback=False, debug=False):
		self.threaded = makethread
		self.lookback = lookback
		self.debug = debug
		self.output = []

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
		if self.debug:
			print "starting the receiver thread"
		while(running):
			self.dataReady.acquire()
			while not self.newError and not self.newA and self.receiverOn:
				if self.debug:
					print "waiting"
				self.dataReady.wait(2)
				
			if self.newError and self.newA:
				#get the new input
				self.error = self.newError.popleft()
				self.a = self.newA.popleft()
				self.dataReady.release()
			
				if self.debug:
					print "receiving %r" % i
				i = i + 1

				if self.debug:
					print "length error %r" % len(self.error)
					print "length a %r" % len(self.a)

				#check that output has enough past data, ie: at least len(A)
				self.padding = 0
				while len(self.a) - 1 > len(self.output):
					#zero extend
					self.output.insert(0,0)
					self.padding += 1

				# synthesize new output
				self.synthesize()

				# pop any padded on zeros
				for j in range(self.padding):
					self.output.pop(0)


			elif not self.receiverOn:
				running = False
				self.dataReady.release()
			else:
				self.dataReady.release()

		#do end of thread stuff
		if self.debug:
			print "hung up receiver"


	def receiveIdeal(self, error, A):
		self.dataReady.acquire()
		self.newError.append(copy.copy(error))
		self.newA.append(copy.copy(A))
		self.dataReady.notify()
		self.lock.release()

		#start thread if not started
		if not self.receiverThread.isAlive():
			if self.debug:
				print "picking up"
			self.receiverOn = True
			try:
				self.receiverThread.start()
			except RuntimeError:
				# thread was already run, make new one
				self.receiverThread = Thread(target=self.receiverThread, args=())

	def hangUp(self):
		if self.debug:
			print "hanging up"
		self.dataReady.acquire()
		self.receiverOn = False
		self.dataReady.notify()
		self.dataReady.release()

		self.receiverThread.join()
		if self.debug:
			print "confirmed receiver hung up"

	def synthesize(self):
		for i in range(len(self.error)):
			approx = 0
			for j in range(1,len(self.a)):
				if (i-j) >= 0 or self.lookback:
					approx += self.a[j]*self.output[-j]
			#error[i] = x[i]-approx
			approx += self.error[i]
			self.output.append(approx)
	

