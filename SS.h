#ifndef SS_H
#define SS_H
#include <QObject>


class DefNumber1: public QObject{
Q_OBJECT
    Q_PROPERTY(std::string Number1 READ getNumber1 WRITE setNumber1 NOTIFY Number1Changed)

public:
    explicit DefNumber1(QObject *parent=nullptr): QObject(parent), m_DefNumber1(){}

    std::string getDefNumber1() const {
        return m_DefNumber1;
    }

    void setDefNumber1 (std::string Number1) {
        if (m_DefNumber1!=Number1){
            m_DefNumber1=Number1;
            emit Number1Changed(m_DefNumber1);
        };
    }

signals:
    void Number1Changed(std::string);

private:
    std::string m_DefNumber1;



};

class OperandV: public QObject{
    Q_OBJECT
    Q_PROPERTY(int OpV READ getOpV WRITE setOpV NOTIFY OpVChanged)

public:
    explicit OperandV(QObject *parent=nullptr): QObject(parent), m_OpV(0){}

    int getOpV() const {
        return m_OpV;
    }

    void setOpv (int OpV) {
        if (m_OpV!=OpV){
            m_OpV=OpV;
            emit OpVChanged(m_OpV);
        };
    }

signals:
    void OpVChanged(int);

private:
    int m_OpV;



};
#endif // SS_H
