import os
import pexpect
import sys 
import subprocess

exe = "parse"

def prRed(skk): print("\033[91m{}\033[00m" .format(skk))

def prGreen(skk): print("\033[92m{}\033[00m" .format(skk))

def runFilesParse(folder, expected):
    total = 0;
    corr = 0;

    for filename in filter(lambda f: f.endswith(".tig"), os.listdir(folder)):
        total += 1;

        print(filename)

        res = subprocess.run(["sml", "@SMLload=./" + exe, folder + filename], timeout = 2, capture_output = True)
        out = res.stdout.decode('utf-8')

        try:
            out_filename = "out_part2/" + filename.replace(".tig", ".txt");
            if len(sys.argv) >= 2 and sys.argv[1] == "--out":
                with open(out_filename, "w") as out_file:
                    out_file.write(out);
            else:
                with open(out_filename, "r") as out_file:
                    correct = out_file.read();
                    if correct.strip() == out.strip():
                        corr += 1;
                        prGreen("\tCorrect");
                    else:
                        prRed("\tIncorrect");
        except pexpect.TIMEOUT:
                        prRed("\tTimeout");
    return (corr, total)

def runFilesNoParse(folder, expected):
    total = 0;
    corr = 0;

    for filename in filter(lambda f: f.endswith(".tig"), os.listdir(folder)):
        total += 1;

        print(filename)

        res = subprocess.run(["sml", "@SMLload=./" + exe, folder + filename], timeout = 2, capture_output = True)
        out = res.stdout.decode('utf-8')

        if "Error" in out or "error" in out:
            corr += 1;
            prGreen("\tCorrect");
        else:
            prRed("\tIncorrect");
    return (corr, total)

subprocess.run(["ml-build", "sources.cm", "Main.parse", exe])
(c1, t1) = runFilesParse("./testcases_part2/parse/", [2]);
(c2, t2) = runFilesNoParse("./testcases_part2/noparse/", [0, 1]);

print(str(c1 + c2) + "/" + str(t1 + t2))
