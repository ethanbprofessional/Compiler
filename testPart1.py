import os
import pexpect
import sys 
import subprocess

exe = "parse"

def prRed(skk): print("\033[91m{}\033[00m" .format(skk))

def prGreen(skk): print("\033[92m{}\033[00m" .format(skk))

def runFilesParse(folder):
    total = 0;
    correct = 0;

    for filename in filter(lambda f: f.endswith(".tig"), os.listdir(folder)):
        total += 1;

        print(filename)
        
        try:
            res = subprocess.run(["sml", "@SMLload=./" + exe, folder + filename], timeout = 2, capture_output = True)
            out = res.stdout.decode('utf-8')

            if out.strip() == "":
                correct += 1;
                prGreen("\tCorrect");
            else:
                prRed("\tIncorrect");
        except pexpect.TIMEOUT:
                        prRed("\tTimeout");
    return (correct, total)

def runFilesNoParse(folder):
    total = 0;
    correct = 0;

    for filename in filter(lambda f: f.endswith(".tig"), os.listdir(folder)):
        total += 1;

        print(filename)
        
        try:
            res = subprocess.run(["sml", "@SMLload=./" + exe, folder + filename], timeout = 2, capture_output = True)
            out = res.stdout.decode('utf-8')

            if "Error" in out or "error" in out:
                correct += 1;
                prGreen("\tCorrect");
            else:
                prRed("\tIncorrect");
        except pexpect.TIMEOUT:
                        prRed("\tTimeout");
    return (correct, total)

subprocess.run(["ml-build", "sources.cm", "Main.parse", exe])
(c1, t1) = runFilesParse("./testcases_part2/parse/");
(c2, t2) = runFilesNoParse("./testcases_part2/noparse/");

print(str(c1 + c2) + "/" + str(t1 + t2))
