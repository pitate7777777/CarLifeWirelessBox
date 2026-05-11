.class public final Le/b/a/a/p/o/d/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/p/o/d/j;-><init>(Le/b/a/a/c;Le/b/a/a/p/o/d/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/b/a/a/p/o/d/j;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/d/j;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/p/o/d/j$a;->a:Le/b/a/a/p/o/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelDisconnected()V
    .locals 4

    iget-object v0, p0, Le/b/a/a/p/o/d/j$a;->a:Le/b/a/a/p/o/d/j;

    .line 1
    iget-object v1, v0, Le/b/a/a/p/o/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 2
    iget-object v2, v0, Le/b/a/a/p/o/d/j;->a:Le/b/a/a/c;

    .line 3
    invoke-interface {v2}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    const-string v2, "wifiP2pManager.initialize(\n                        context.applicationContext,\n                        Looper.getMainLooper(),\n                        this\n                    )"

    invoke-static {v1, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object v1, v0, Le/b/a/a/p/o/d/j;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method
