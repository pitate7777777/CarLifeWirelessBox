.class public final Le/b/a/a/p/o/d/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field public final a:Landroid/net/wifi/p2p/WifiP2pManager;

.field public final b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final c:Le/b/a/a/r/i/b;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 4

    const-string v0, "wifiP2pManager"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/d/i;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p2, p0, Le/b/a/a/p/o/d/i;->b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v0, Le/b/a/a/r/i/b;

    invoke-direct {v0, p0}, Le/b/a/a/r/i/b;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iput-object v0, p0, Le/b/a/a/p/o/d/i;->c:Le/b/a/a/r/i/b;

    new-instance v1, Le/b/a/a/r/i/c/b;

    invoke-direct {v1, p1, p2}, Le/b/a/a/r/i/c/b;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    const-string v2, "operation"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Le/b/a/a/r/i/b;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance v1, Le/b/a/a/r/i/c/a;

    invoke-direct {v1, p1, p2}, Le/b/a/a/r/i/c/a;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, Le/b/a/a/r/i/b;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Le/b/a/a/p/o/d/c;

    invoke-direct {p1, p0}, Le/b/a/a/p/o/d/c;-><init>(Le/b/a/a/p/o/d/i;)V

    iput-object p1, p0, Le/b/a/a/p/o/d/i;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static final a(Le/b/a/a/p/o/d/i;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WifiDirectDiscoverableTask DiscoverPeers"

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object p0, p0, Le/b/a/a/p/o/d/i;->c:Le/b/a/a/r/i/b;

    invoke-virtual {p0}, Le/b/a/a/r/i/b;->a()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WifiDirectDiscoverableTask onFailure "

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
    sget-object v3, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object v4, p0, Le/b/a/a/p/o/d/i;->d:Ljava/lang/Runnable;

    const-wide/16 v5, 0x7d0

    const-wide/16 v7, 0x7d0

    invoke-virtual/range {v3 .. v8}, Le/b/a/a/r/h;->a(Ljava/lang/Runnable;JJ)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WifiDirectDiscoverableTask onSuccess"

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object v0, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object v1, p0, Le/b/a/a/p/o/d/i;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Le/b/a/a/r/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method
