.class public final Le/b/a/a/p/o/c/a;
.super Le/b/a/a/o/i/e;
.source ""


# instance fields
.field public b:Le/b/a/a/o/i/f/b;

.field public final c:Le/b/a/a/p/o/c/c;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionListener"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Le/b/a/a/o/i/e;-><init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V

    new-instance p2, Le/b/a/a/p/o/c/c;

    new-instance v0, Le/b/a/a/p/o/c/a$a;

    invoke-direct {v0, p0}, Le/b/a/a/p/o/c/a$a;-><init>(Le/b/a/a/p/o/c/a;)V

    invoke-direct {p2, p1, v0}, Le/b/a/a/p/o/c/c;-><init>(Le/b/a/a/c;Lf/m/a/b;)V

    iput-object p2, p0, Le/b/a/a/p/o/c/a;->c:Le/b/a/a/p/o/c/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AOAProtocolTransport connect"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/b/a/a/p/o/c/a;->c:Le/b/a/a/p/o/c/c;

    .line 5
    iget-object v1, v0, Le/b/a/a/p/o/c/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Le/b/a/a/p/o/c/c;->e:Le/b/a/a/c;

    invoke-interface {v1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    iget-object v2, v0, Le/b/a/a/p/o/c/c;->k:Lf/a;

    invoke-interface {v2}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 7
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, v0, Le/b/a/a/p/o/c/c;->e:Le/b/a/a/c;

    invoke-interface {v1}, Le/b/a/a/c;->B0()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Le/b/a/a/o/h/a;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/p/o/c/a;->b:Le/b/a/a/o/i/f/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Le/b/a/a/o/i/f/b;->a(Le/b/a/a/o/h/a;)V

    :goto_0
    return-void
.end method

.method public e()Le/b/a/a/o/h/a;
    .locals 2

    iget-object v0, p0, Le/b/a/a/p/o/c/a;->b:Le/b/a/a/o/i/f/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Le/b/a/a/o/i/f/b;->b()Le/b/a/a/o/h/a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read from unattached transport"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AOAProtocolTransport ready"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/b/a/a/p/o/c/a;->c:Le/b/a/a/p/o/c/c;

    .line 5
    iget-object v0, v0, Le/b/a/a/p/o/c/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Le/b/a/a/p/o/c/a;->c:Le/b/a/a/p/o/c/c;

    .line 1
    iget-object v1, v0, Le/b/a/a/p/o/c/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, v0, Le/b/a/a/p/o/c/c;->e:Le/b/a/a/c;

    invoke-interface {v1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    iget-object v1, v0, Le/b/a/a/p/o/c/c;->e:Le/b/a/a/c;

    invoke-interface {v1}, Le/b/a/a/c;->Z0()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Le/b/a/a/p/o/c/c;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/b/a/a/p/o/c/a;->b:Le/b/a/a/o/i/f/b;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Le/b/a/a/o/i/f/b;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/a/a/p/o/c/a;->b:Le/b/a/a/o/i/f/b;

    invoke-virtual {p0}, Le/b/a/a/o/i/e;->d()V

    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AOAProtocolTransport terminate"

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 3
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
