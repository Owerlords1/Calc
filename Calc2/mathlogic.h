#ifndef MATHLOGIC_H
#define MATHLOGIC_H

#include <QObject>

class MathLogic : public QObject
{
    Q_OBJECT
public:
    explicit MathLogic(QObject *parent = nullptr);
     QString m_Result;

public slots:
   void getNumFromQML (QString Num1, QString Num2, QString Operand, QString Result);

signals:
   void setNumToQML (QString Res);


private:
   float m_Num1;
   float m_Num2;



};

#endif // MATHLOGIC_H
