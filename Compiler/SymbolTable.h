#ifndef SYMBOLTABLE_H_INCLUDED
#define SYMBOLTABLE_H_INCLUDED
#include <iostream>
#include <map>
#include <string>
#include "global.h"
#include "TableItem.h"
using namespace std;

class TableItem;
class SymbolTable {
public:
    TableItem* Insert(string name, TableItemType type, int value);
    TableItem* GetItem(string name);
    vector<TableItem*> temp;
    map<string, TableItem*> table;
    SymbolTable();
    ~SymbolTable();
    void HasReturnedSth(){returnsth++;} // got: return sth;
    void HasReturnedNth(){returnnth++;} // got: return;

    bool funcWithRetValid(){return returnsth && !returnnth;}
    bool funcWithoutRetValid(){return !returnsth;}
private:
    int returnsth;
    int returnnth;
};

#endif // SYMBOLTABLE_H_INCLUDED
