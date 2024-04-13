#ifndef MATHCALCULATOR_H
#define MATHCALCULATOR_H

#include <QObject>

class MathCalculator : public QObject
{
    Q_OBJECT
public:
    explicit MathCalculator(QObject *parent = nullptr);

public slots:

    void getExpressionFromQml(QString expression);

private:

    void parseExpression();

    int calculate();

private:

    QString m_Expression;

signals:

    void setExpessionToQml(QString result);
};

#endif // MATHCALCULATOR_H
