QT       += core gui widgets network

TARGET = alephzero
TEMPLATE = app

CONFIG(debug, debug|release): DEFINES += ETH_DEBUG

QMAKE_CXXFLAGS += -std=c++11

INCLUDEPATH += ..
QMAKE_LIBDIR += ../build/libethereum ../build/secp256k1
CONFIG(debug, debug|release): LIBS += -Wl,-rpath,../build/libethereum
LIBS += -lethereum -lsecp256k1 -lminiupnpc -lleveldb -lgmp -lboost_filesystem -lboost_system -lcryptopp

SOURCES  += main.cpp MainWin.cpp
HEADERS  += MainWin.h
FORMS    += Main.ui
