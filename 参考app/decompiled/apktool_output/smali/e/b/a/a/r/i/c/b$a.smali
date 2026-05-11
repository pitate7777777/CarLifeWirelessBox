.class public final Le/b/a/a/r/i/c/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/r/i/c/b;->a(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/r/i/c/b$a;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "StopPeerDiscoverOperation onFailure "

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "CarLife_SDK"

    const-string v1, "tag"

    .line 1
    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object p1, p0, Le/b/a/a/r/i/c/b$a;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Le/b/a/a/r/i/c/b$a;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    return-void
.end method
