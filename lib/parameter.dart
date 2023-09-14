import 'Spots.dart';

const double MAXTIME = 5.0;
const double EVOLTAGE = 5.0;

Spots spots0 = Spots(
    //厳密解->true //オイラー法->false
    true,
    //E 電源の電圧
    EVOLTAGE,
    //deltaT
    0.1,
    //抵抗
    1,
    //容量
    1);

Spots spots1 = Spots(
    //厳密解->true //オイラー法->false
    false,
    //E 電源の電圧
    EVOLTAGE,
    //deltaT
    0.1,
    //抵抗
    1,
    //容量
    1);

Spots spots2 = Spots(
    //厳密解->true //オイラー法->false
    false,
    //E 電源の電圧
    EVOLTAGE,
    //deltaT
    0.3,
    //抵抗
    1,
    //容量
    1);
