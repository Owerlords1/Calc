#include "mathlogic.h"
#include <QDebug>

MathLogic::MathLogic(QObject *parent)
    : QObject{parent}
{}

void MathLogic::getNumFromQML(QString Num1, QString Num2, QString Operand, QString Result)
{
    MathLogic::m_Num1=Num1.toInt();
    MathLogic::m_Num2=Num2.toInt();
    qDebug() << Num1;
    qDebug() <<Num2;
    qDebug() << Operand;
    int Res=0;
    if(Operand=="+"){
        Res=m_Num1+m_Num2;
    }
    if(Operand=="-"){
        Res=m_Num1-m_Num2;
    }
    if(Operand=="*"){
        Res=m_Num1*m_Num2;
    }
    if(Operand=="/"){
        Res=m_Num1/m_Num2;
    }
    m_Result=QString::number(Res);
    Result = m_Result;
    qDebug() << m_Result;
    emit setNumToQML(Result);
}

