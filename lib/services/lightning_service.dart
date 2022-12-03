import 'package:ldk_flutter/ldk_flutter.dart';

class Lightning {
  static final ln = LdkFlutter();

  static Future<String> getDir() async {
    final res =
        await ln.getDirPath(DirectoryType.ApplicationDocumentsDirectory);
    print("Get dir: $res");
    return res;
  }

  static startLdk() async {
    final dir = await getDir();

    print('awaiting startLdk');

    await ln.ldkInit(
        host: "127.0.0.1",
        port: 18443,
        username: "polaruser",
        password: "polarpass",
        network: Network.REGTEST,
        path: dir);

    final res = await ln.getNodeInfo();

    print("Local Balance ${res.localBalanceMsat}");
    print("Node Pub Key ${res.nodePubKey}");
    print("No:of channels ${res.numChannels}");
    print("No:of usable channels ${res.numUsableChannels}");
    print("No:of peers ${res.numPeers}");
  }
}
