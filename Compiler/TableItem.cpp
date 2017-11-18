#include "TableItem.h"

TableItem::TableItem(string name, TableItemType type, int value):
    _name(name), _type(type), _value(value), _paramCount(-1), _funcField(NULL), _arrayLen(-1){}

string TableItem::name()
{
    return _name;
}
TableItemType TableItem::type()
{
    return _type;
}
int TableItem::value()
{
    return _value;
}
int TableItem::paramCount()
{
    return _paramCount;
}
SymbolTable* TableItem::funcField()
{
    return _funcField;
}
int TableItem::length()
{
    return _arrayLen;
}
void TableItem::SetField(SymbolTable *f)
{
    _funcField = f;
}
void TableItem::SetLength(int len)
{
    _arrayLen = len;
}
void TableItem::SetParamCount(int cot)
{
    _paramCount = cot;
}
void TableItem::SetValue(int value)
{
    _value = value;
}