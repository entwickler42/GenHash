#include <vcl.h>
#pragma hdrstop

#include "main.h"

#pragma package(smart_init)
#pragma resource "*.dfm"

TInterface *Interface;

extern "C" unsigned long genhash(char* text); 

//---------------------------------------------------------------------------
__fastcall TInterface::TInterface(TComponent* Owner) : TForm(Owner)
{}

//---------------------------------------------------------------------------
void __fastcall TInterface::GenHashClick(TObject *Sender)
{
    AnsiString buf;
    unsigned long hash = genhash(Text->Text.c_str());
    buf.sprintf("0x%X",hash);
    Hash->Text = buf;
}
//---------------------------------------------------------------------------
