#include "MathCalculator.h"
#include <QDebug>
MathCalculator::MathCalculator(QObject *parent)
    : QObject{parent}
{}

void MathCalculator::getExpressionFromQml(QString expression)
{
    qDebug() << "Ура, блеать!! "<< expression;

    emit setExpessionToQml("100");
}
