.class public final Le/b/a/a/p/o/e/b;
.super Le/b/a/a/o/i/e;
.source ""


# instance fields
.field public final b:Le/b/a/a/c;

.field public final c:Lf/a;

.field public final d:Lf/a;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V
    .locals 1

    const-string v0, "mCarLifeContext"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Le/b/a/a/o/i/e;-><init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V

    iput-object p1, p0, Le/b/a/a/p/o/e/b;->b:Le/b/a/a/c;

    sget-object p1, Le/b/a/a/p/o/e/b$b;->e:Le/b/a/a/p/o/e/b$b;

    invoke-static {p1}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/p/o/e/b;->c:Lf/a;

    new-instance p1, Le/b/a/a/p/o/e/b$a;

    invoke-direct {p1, p0}, Le/b/a/a/p/o/e/b$a;-><init>(Le/b/a/a/p/o/e/b;)V

    invoke-static {p1}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/p/o/e/b;->d:Lf/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "InstantProtocolTransport connect"

    aput-object v3, v1, v2

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v1, p0, Le/b/a/a/p/o/e/b;->d:Lf/a;

    invoke-interface {v1}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/p/o/d/e;

    .line 5
    iget-object v1, v1, Le/b/a/a/p/o/d/e;->h:Lf/a;

    invoke-interface {v1}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/p/o/d/d;

    .line 6
    iput-boolean v0, v1, Le/b/a/a/p/o/d/d;->j:Z

    iget-object v0, v1, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    iget-object v2, v1, Le/b/a/a/p/o/d/d;->k:Lf/a;

    invoke-interface {v2}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->Z0()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v1, Le/b/a/a/p/o/d/d;->l:Le/b/a/a/p/o/d/d$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Le/b/a/a/o/h/a;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le/b/a/a/p/o/e/b;->h()Le/b/a/a/p/o/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/b/a/a/p/o/e/c;->a(Le/b/a/a/o/h/a;)V

    return-void
.end method

.method public e()Le/b/a/a/o/h/a;
    .locals 1

    invoke-virtual {p0}, Le/b/a/a/p/o/e/b;->h()Le/b/a/a/p/o/e/c;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/p/o/e/c;->b()Le/b/a/a/o/h/a;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/b/a/a/p/o/e/b;->d:Lf/a;

    invoke-interface {v0}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/o/d/e;

    .line 2
    iget-object v1, v0, Le/b/a/a/p/o/d/e;->h:Lf/a;

    invoke-interface {v1}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/p/o/d/d;

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v1, Le/b/a/a/p/o/d/d;->j:Z

    iget-object v1, v1, Le/b/a/a/p/o/d/d;->i:Le/b/a/a/o/i/f/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Le/b/a/a/o/i/f/a;->c()V

    .line 4
    :goto_0
    iget-object v0, v0, Le/b/a/a/p/o/d/e;->c:Le/b/a/a/p/o/d/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "WifiP2pManager terminate"

    aput-object v5, v4, v2

    const-string v5, "CarLife_SDK"

    const-string v6, "tag"

    .line 5
    invoke-static {v5, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "args"

    invoke-static {v4, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v8, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v9, 0x3

    if-nez v8, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v9, v5, v4}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_1
    iget-object v0, v0, Le/b/a/a/p/o/d/j;->e:Le/b/a/a/p/o/d/i;

    if-eqz v0, :cond_3

    .line 9
    sget-object v1, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object v4, v0, Le/b/a/a/p/o/d/i;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Le/b/a/a/r/h;->b(Ljava/lang/Runnable;)V

    .line 10
    iget-object v1, v0, Le/b/a/a/p/o/d/i;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, v0, Le/b/a/a/p/o/d/i;->b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Le/b/a/a/p/o/d/h;

    invoke-direct {v4}, Le/b/a/a/p/o/d/h;-><init>()V

    invoke-virtual {v1, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 11
    invoke-virtual {p0}, Le/b/a/a/p/o/e/b;->h()Le/b/a/a/p/o/e/c;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/p/o/e/c;->c()V

    invoke-virtual {p0}, Le/b/a/a/o/i/e;->d()V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "InstantProtocolTransport terminate"

    aput-object v1, v0, v2

    .line 12
    invoke-static {v5, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v9, v5, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 15
    :cond_3
    throw v1

    .line 16
    :cond_4
    throw v1
.end method

.method public final h()Le/b/a/a/p/o/e/c;
    .locals 1

    iget-object v0, p0, Le/b/a/a/p/o/e/b;->c:Lf/a;

    invoke-interface {v0}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/o/e/c;

    return-object v0
.end method
