.class public final Le/b/a/a/r/i/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/r/i/a;


# instance fields
.field public final a:Landroid/net/wifi/p2p/WifiP2pManager;

.field public final b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 1

    const-string v0, "wifiP2pManager"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/r/i/c/b;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p2, p0, Le/b/a/a/r/i/c/b;->b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/r/i/c/b;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Le/b/a/a/r/i/c/b;->b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Le/b/a/a/r/i/c/b$a;

    invoke-direct {v2, p1}, Le/b/a/a/r/i/c/b$a;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method
