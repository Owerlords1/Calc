#include "SS.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    float num1=0;
    float num2=0;
    std::string result;
    bool equalButtonPressed = false;
    int Operand=0;
    DefNumber1 DefNumber1;
    OperandV OperandV;


#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
        const QUrl url(QStringLiteral("qrc:/main.qml"));
        engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

        //Здесь должно быть взаимодействие кнопки +-итд и операционной переменной


        QObject* window = engine.rootObjects().first();
        QObject* object1 = window->findChild<QObject*>("num1");
        QObject* object2 = window->findChild<QObject*>("num2");
        QObject* objectEq = window->findChild<QObject*>("Eq");

        //получаем числа из калькулятора, считаем, возвращаем назад
        if (equalButtonPressed&&Operand!=0){

        num1 = std::stof(object1->property("text").toString().toStdString());
        num2 = std::stof(object2->property("text").toString().toStdString());
        float res=0;
        switch (Operand)
            {
             case 1:
                 (res=num1+num2);
             case 2:
                 (res=num1-num2);
             case 3:
                 (res=num1*num2);
             case 4:
                 (res=num1/num2);

          return res;
        }

        Operand=0;
        equalButtonPressed = false;
        result = std::to_string(res);


        }


        engine.rootContext()->setContextProperty("DefNumber1", &DefNumber1);
        engine.rootContext()->setContextProperty("OperandV", &OperandV);

    //передача результата в калькулятор




    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
