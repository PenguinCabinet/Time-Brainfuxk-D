module measure;
import std.stdio,std.process,std.datetime.date,std.datetime.stopwatch;

void measure_time(string v1,string v2){
    executeShell(v1);
    writeln(v1);
    float time;
    auto sw = StopWatch(AutoStart.yes);
    sw.start();
    foreach (i; 0..10)
    {
        executeShell(v2);
    }
    auto t1 = sw.peek();
    auto temp=t1;
    auto temp2=temp.total!"seconds"/10;
    writefln("time:%d Second",temp2);
    //writeln(executeShell(v).output);
}

void main(){
    measure_time("dmd Brainfuxk-D/source/app.d","app Brainfuxk-D/test/Correct-Cases/mandelbrot.bf");
    measure_time("dmd -O -release -inline Brainfuxk-D/source/app.d","app Brainfuxk-D/test/Correct-Cases/mandelbrot.bf");
    measure_time("ldc2 Brainfuxk-D/source/app.d","app Brainfuxk-D/test/Correct-Cases/mandelbrot.bf");
    measure_time("ldc2 -O3 Brainfuxk-D/source/app.d","app Brainfuxk-D/test/Correct-Cases/mandelbrot.bf");
    measure_time("x86_64-unknown-linux-gnu-gdc Brainfuxk-D/source/app.d","app Brainfuxk-D/test/Correct-Cases/mandelbrot.bf");
    measure_time("x86_64-unknown-linux-gnu-gdc -O3 Brainfuxk-D/source/app.d","app Brainfuxk-D/test/Correct-Cases/mandelbrot.bf");

}