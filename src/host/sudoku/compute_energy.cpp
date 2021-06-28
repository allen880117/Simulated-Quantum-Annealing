#include <fstream>
#include <iostream>
#include <vector>
#include <sstream>
#include <vector>

using namespace std;

#define NSPIN 729
#define NTROT 2
#define NSTEP 1000

float Jcoup[NSPIN][NSPIN];
float h[NSPIN];
bool trottersList[NTROT * NSTEP][NSPIN];

void readJ() {
    std::ifstream J_fp("./J.in");
    std::string line;
    float tmp;
    int i = 0, j = 0;
    while (std::getline(J_fp, line)) {
        std::istringstream ss(line);
        while (ss >> tmp) {
            Jcoup[i][j] = tmp;
            j++;
        }
        i++;
        j = 0;
    }
    J_fp.close();
}

void readH() {
    std::ifstream h_fp("./h.in");
    std::string line;
    float tmp;
    int i = 0;
    while (std::getline(h_fp, line)) {
        std::istringstream ss(line);
        while (ss >> tmp) {
            h[i] = tmp;
            i++;
        }
    }
    h_fp.close();
}

void readTrottersList() {
    std::ifstream h_fp("./trottersList.txt");
    std::string line;
    bool tmp;
    int i = 0, j = 0;
    while (std::getline(h_fp, line)) {
        std::istringstream ss(line);
        while (ss >> tmp) {
            trottersList[i][j] = tmp;
            j++;
        }
        i++;
        j = 0;
    }
    h_fp.close();
}

float compute_trotter_energy(bool trotter[729]) {
    float H = 0;
    for (int i = 0; i < 729; i++) {
        for (int j = 0; j < 729; j++) {
            if (trotter[i] == trotter[j]) {
                H += Jcoup[i][j];
            } else{
                H -= Jcoup[i][j];
            }
        }
        if (trotter[i]) {
            H += h[i];
        } else {
            H -= h[i];
        }
    }
    return -H;
}

int main() {
    readJ();
    readH();
    readTrottersList();

    int bestE = 1e9;
    int bestStep = 0;
    int bestTrotter = 0;
    vector<float> Ehist;
    for (int i = 0; i < NSTEP; i++) {
        float sumE = 0;
        for (int m = 0; m < NTROT; m++) {
            float E = compute_trotter_energy(trottersList[i * NTROT + m]);
            if (E < bestE) {
                bestE = E;
                bestStep = i;
                bestTrotter = m;
            }
            sumE += E;
        }
        Ehist.push_back(sumE);
    }

    cout << bestE << " " << bestStep << " " << bestTrotter << endl;

    ofstream out("Ehist.txt");
    for (auto e : Ehist) {
        out << e << " ";
    }
}

