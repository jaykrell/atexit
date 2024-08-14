struct A
{
  A();
  ~A();
};

extern A a;

__declspec(dllexport) void f1() {  }
__declspec(dllexport) void f2() { static A a; }
