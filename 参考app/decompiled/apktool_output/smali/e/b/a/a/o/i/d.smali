.class public final Le/b/a/a/o/i/d;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final e:Le/b/a/a/c;

.field public final f:Le/b/a/a/o/i/e;

.field public g:Landroid/os/Handler;

.field public final h:Landroid/os/HandlerThread;

.field public final i:Le/b/a/a/r/f;

.field public j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/o/i/e;ZI)V
    .locals 4

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "transport"

    invoke-static {p2, p4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/i/d;->e:Le/b/a/a/c;

    iput-object p2, p0, Le/b/a/a/o/i/d;->f:Le/b/a/a/o/i/e;

    new-instance p1, Landroid/os/HandlerThread;

    const/4 p2, -0x2

    const-string p4, "CarLife_MesssageSender"

    invoke-direct {p1, p4, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Le/b/a/a/o/i/d;->h:Landroid/os/HandlerThread;

    new-instance p2, Le/b/a/a/r/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    const-string v1, "getMainLooper()"

    invoke-static {p4, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/b/a/a/o/i/c;

    invoke-direct {v1, p0}, Le/b/a/a/o/i/c;-><init>(Le/b/a/a/o/i/d;)V

    const-wide/16 v2, 0xbb8

    invoke-direct {p2, p4, v2, v3, v1}, Le/b/a/a/r/f;-><init>(Landroid/os/Looper;JLf/m/a/a;)V

    iput-object p2, p0, Le/b/a/a/o/i/d;->i:Le/b/a/a/r/f;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Le/b/a/a/o/i/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p4, "CarLife_MessageDispatcher"

    invoke-virtual {p0, p4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p4, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p4, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p4, p0, Le/b/a/a/o/i/d;->g:Landroid/os/Handler;

    if-eqz p3, :cond_1

    .line 2
    iget-object p1, p2, Le/b/a/a/r/f;->f:Landroid/os/Handler;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Le/b/a/a/o/i/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/b/a/a/o/i/d;->i:Le/b/a/a/r/f;

    .line 1
    iput-boolean v1, v0, Le/b/a/a/r/f;->c:Z

    iget-object v0, v0, Le/b/a/a/r/f;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Le/b/a/a/o/i/d;->f:Le/b/a/a/o/i/e;

    invoke-virtual {v0}, Le/b/a/a/o/i/e;->g()V

    iget-object v0, p0, Le/b/a/a/o/i/d;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "MessageDispatcher terminate"

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 3
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Le/b/a/a/o/h/a;)V
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Le/b/a/a/o/i/d;->i:Le/b/a/a/r/f;

    .line 1
    iget-object v1, v0, Le/b/a/a/r/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Le/b/a/a/r/f;->d:Z

    .line 2
    invoke-virtual {p1}, Le/b/a/a/o/h/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/b/a/a/o/i/d;->e:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Le/b/a/a/o/i/d;->e:Le/b/a/a/c;

    invoke-interface {v0, p1}, Le/b/a/a/c;->V0(Le/b/a/a/o/h/a;)Le/b/a/a/o/h/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Le/b/a/a/o/i/d;->f:Le/b/a/a/o/i/e;

    invoke-virtual {v1, v0}, Le/b/a/a/o/i/e;->b(Le/b/a/a/o/h/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Le/b/a/a/o/h/a;->w()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->w()V

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    iget-object v0, p0, Le/b/a/a/o/i/d;->f:Le/b/a/a/o/i/e;

    invoke-virtual {v0, p1}, Le/b/a/a/o/i/e;->b(Le/b/a/a/o/h/a;)V

    :goto_0
    iget-object v0, p0, Le/b/a/a/o/i/d;->i:Le/b/a/a/r/f;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/b/a/a/r/f;->d:Z

    iget-object v0, v0, Le/b/a/a/r/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    iget-object v0, p0, Le/b/a/a/o/i/d;->e:Le/b/a/a/c;

    invoke-interface {v0, v0, p1}, Le/b/a/a/o/i/b;->T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Le/b/a/a/o/i/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v1, :cond_1

    const-string v1, "CarLife_SDK"

    const-string v2, "MessageDispatcher handleMessage exception: "

    :try_start_6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Le/b/a/a/o/i/d;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Le/b/a/a/o/h/a;->w()V

    return-void

    :goto_2
    invoke-virtual {p1}, Le/b/a/a/o/h/a;->w()V

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Le/b/a/a/o/h/a;

    invoke-virtual {p0, p1}, Le/b/a/a/o/i/d;->b(Le/b/a/a/o/h/a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.baidu.carlife.sdk.internal.protocol.CarLifeMessage"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 11

    :goto_0
    :try_start_0
    iget-object v0, p0, Le/b/a/a/o/i/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Le/b/a/a/o/i/d;->f:Le/b/a/a/o/i/e;

    invoke-virtual {v0}, Le/b/a/a/o/i/e;->e()Le/b/a/a/o/h/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Le/b/a/a/o/h/a;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/b/a/a/o/i/d;->e:Le/b/a/a/c;

    invoke-interface {v1}, Le/b/a/a/c;->J0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/b/a/a/o/i/d;->e:Le/b/a/a/c;

    invoke-interface {v1, v0}, Le/b/a/a/c;->c0(Le/b/a/a/o/h/a;)Le/b/a/a/o/h/a;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Le/b/a/a/o/i/d;->e:Le/b/a/a/c;

    invoke-interface {v2, v2, v1}, Le/b/a/a/o/i/b;->N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v1, v0, :cond_2

    :try_start_3
    invoke-virtual {v1}, Le/b/a/a/o/h/a;->w()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eq v1, v0, :cond_0

    invoke-virtual {v1}, Le/b/a/a/o/h/a;->w()V

    :cond_0
    throw v2

    :cond_1
    iget-object v1, p0, Le/b/a/a/o/i/d;->e:Le/b/a/a/c;

    invoke-interface {v1, v1, v0}, Le/b/a/a/o/i/b;->N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Le/b/a/a/o/h/a;->w()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->w()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Le/b/a/a/o/i/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x6

    const-string v3, "args"

    const-string v4, "tag"

    const-string v5, "CarLife_SDK"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v1, :cond_4

    new-array v1, v8, [Ljava/lang/Object;

    const-string v9, "MessageDispatcher run exception0: "

    aput-object v9, v1, v7

    aput-object v0, v1, v6

    .line 1
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v9, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v9, :cond_3

    goto :goto_2

    .line 3
    :cond_3
    array-length v10, v1

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v2, v5, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    new-array v1, v8, [Ljava/lang/Object;

    const-string v8, "MessageDispatcher run exception1: "

    aput-object v8, v1, v7

    aput-object v0, v1, v6

    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_5

    goto :goto_3

    .line 5
    :cond_5
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v5, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_6
    :goto_3
    invoke-virtual {p0}, Le/b/a/a/o/i/d;->a()V

    return-void
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
