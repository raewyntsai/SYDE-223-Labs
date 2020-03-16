#include "priority_queue.h"
#include <iostream>
using namespace std;

// PURPOSE: Parametric constructor
// initializes heap to an array of (n_capacity + 1) elements
PriorityQueue::PriorityQueue(unsigned int n_capacity) {
    heap = new TaskItem*[n_capacity + 1];
    capacity = n_capacity;
    size = 0;
}

// PURPOSE: Explicit destructor of the class PriorityQueue
PriorityQueue::~PriorityQueue() {
}

// PURPOSE: Returns the number of elements in the priority queue
unsigned int PriorityQueue::get_size() const {
    return size;
}

// PURPOSE: Returns true if the priority queue is empty; false, otherwise
bool PriorityQueue::empty() const {
    return size == 0;
}

// PURPOSE: Returns true if the priority queue is full; false, otherwise
bool PriorityQueue::full() const {
    return size == capacity;
}

// PURPOSE: Prints the contents of the priority queue; format not specified
void PriorityQueue::print() const {
    if (size == 0) {
        cerr << "Tree empty, nothing to print." << endl;
        return;
    }
    for ( int i = 1; i <= size; i++) {
        cerr << heap[i]->priority << "  ";
    }
    cout << endl;
}

// PURPOSE: Returns the max element of the priority queue without removing it
// if the priority queue is empty, it returns (-1, "N/A")
PriorityQueue::TaskItem PriorityQueue::max() const {
    if(get_size() == 0){
        return TaskItem(-1, "N/A");
    }else{
        /*
         * since it is a priority max queue we can
         * simply return the first value in the heap array
         * */
        return *heap[1];
    }
}

// PURPOSE: Inserts the given value into the priority queue
// re-arranges the elements back into a heap
// returns true if successful and false otherwise
// priority queue does not change in capacity
bool PriorityQueue::enqueue( TaskItem val ) {
    if (size >= capacity) {
        return false;
    }
    if (size == 0) {
        heap[1] = new TaskItem(val);
    } else {
        int i = size + 1;
        heap[i] = new TaskItem(val);
        while ( i > 1 && heap[i/2]->priority < heap[i]->priority){
            TaskItem* temp = heap[i];
            heap[i] = heap[i/2];
            heap[i/2] = temp;
            i /= 2;
        }
    }
    size++;
    return true;
}

// PURPOSE: Removes the top element with the maximum priority
// re-arranges the remaining elements back into a heap
// returns true if successful and false otherwise
// priority queue does not change in capacity
bool PriorityQueue::dequeue() {
    if (size == 0 ) {
        cerr << "Nothing to dequeue, tree empty.";
        return false;
    }
    if (size == 1) {
        TaskItem* temp = heap[1];
        delete temp;
        size--;
    } else {
        TaskItem* temp = heap[size];
        heap[1] = temp;
        delete heap[size];
        heap[size] = nullptr;
        int i = 1;
        size--;
        while ( i < size - 1) {
            TaskItem* rightChild = heap[i*2+1];
            TaskItem* leftChild = heap[i*2];
            if (leftChild->priority < rightChild->priority) {
                cerr << endl<< "right child " <<  rightChild->priority << endl;
                heap[i*2+1] = heap[i];
                heap[i] = rightChild;
                i=i*2+1;
            } else {
                cerr << endl << "left child  " << leftChild->priority << endl;
                heap[i*2] = heap[i];
                heap[i] = leftChild;
                i = i*2;
            }
        }
    }
    return true;
}
