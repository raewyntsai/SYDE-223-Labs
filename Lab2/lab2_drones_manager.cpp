#include "lab2_drones_manager.h"

// TODO: Implement all of the listed functions below

// creates new empty DronesManager
DronesManager::DronesManager() {
    first = nullptr;
    last = nullptr;
    size = 0;
}

// Destroys instance and frees up dynamically allocated memory
DronesManager::~DronesManager() {
}

bool operator==(const DronesManager::DroneRecord& lhs, const DronesManager::DroneRecord& rhs) {
//  TA says we only need to compare the ID but I'm skeptical
    return (lhs.droneID == rhs.droneID);
}

unsigned int DronesManager::get_size() const {
    return size;
}

bool DronesManager::empty() const {
    return (first == nullptr && last == nullptr && size == 0);
}

DronesManager::DroneRecord DronesManager::select(unsigned int index) const {
    if(index > size || index < 0){
        return size;
    } else if (empty()){
        return 0;
    } else {
        return DroneRecord(index);
    }
}

unsigned int DronesManager::search(DroneRecord value) const {
    for(int i = 0; i < size; i++){
        if (DroneRecord(i) == value) {
            return i;
        } else if (empty()) {
            return 0;
        } else if (i < 0 || i > size){
            return size;
        }
    }
}

void DronesManager::print() const {
    DroneRecord* cur = first;
    for(int i = 0; i < size; i++){
        cout << "Drone ID = " << cur->droneID << endl;
        cout << "Year bought = " << cur->yearBought << endl;
        cout << "Range = " << cur->range << endl;
        cur = cur->next;
    }
}

// TODO Sammy to Test Matadors Insert
bool DronesManager::insert(DroneRecord value, unsigned int index) {
    DroneRecord *current = this->first;
    int ittVerifySize = 0;
    while (current->next) {
        current = current->next;
        ittVerifySize++;
    }
    if (index > ittVerifySize) {
        return false;
    } else {
        int itt = 0;
        while (itt < index) {
            current = current->next;
            itt++;
        }
        DroneRecord *recordToInsert = new DroneRecord(value);
        recordToInsert->next = current;
        current->prev->next = recordToInsert;
        return true;
    }
}

// TODO create insert_front
bool DronesManager::insert_front(DroneRecord value) {
    DroneRecord *current = this->first;
    DroneRecord *recordToInsert = new DroneRecord(value);
    if (current->next == NULL || !current->next) {
        current->next = recordToInsert;
        return true;
    } else {
        recordToInsert->next = current;
        current->prev = recordToInsert;
        this->first = recordToInsert;
        return true;
    }
}

bool DronesManager::insert_back(DroneRecord value) {
    DroneRecord *current = this->first;
    DroneRecord *recordToInsert = new DroneRecord(value);
    while (current->next) {
        current = current->next;
    }
    current->next = recordToInsert;
    recordToInsert->prev = current;
    return current->next == recordToInsert ? true : false;
}

bool DronesManager::remove(unsigned int index) {
    return false;
}

bool DronesManager::remove_front() {
    return false;
}

bool DronesManager::remove_back() {
    return false;
}

bool DronesManager::replace(unsigned int index, DroneRecord value) {
    return false;
}

bool DronesManager::reverse_list() {
    return false;
}

bool DronesManagerSorted::is_sorted_asc() const {
    DroneRecord *cur;
    for (int i = 0; i > size; i++) {
        if(cur > cur->next){
            return false;
        }
        cur = cur->next;
    }
    return true;
}

bool DronesManagerSorted::is_sorted_desc() const {
    DroneRecord *cur;
    for (int i = 0; i > size; i++) {
        if(cur < cur->next){
            return false;
        }
        cur = cur->next;
    }
    return true;
}

bool DronesManagerSorted::insert_sorted_asc(DroneRecord val) {
    return false;
}

bool DronesManagerSorted::insert_sorted_desc(DroneRecord val) {
    return false;
}

void DronesManagerSorted::sort_asc() {
}

void DronesManagerSorted::sort_desc() {
}
