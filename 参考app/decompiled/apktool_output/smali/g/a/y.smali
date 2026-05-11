.class public abstract Lg/a/y;
.super Lg/a/z;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/y$a;,
        Lg/a/y$b;
    }
.end annotation


# static fields
.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _delayed:Ljava/lang/Object;

.field public volatile synthetic _isCompleted:I

.field public volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lg/a/y;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lg/a/y;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/a/y;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/a/z;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/a/y;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lg/a/y;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lg/a/y;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lg/a/y;->D(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lg/a/z;->A()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p1, :cond_1

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lg/a/r;->k:Lg/a/r;

    invoke-virtual {v0, p1}, Lg/a/y;->C(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final D(Ljava/lang/Runnable;)Z
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/a/y;->_queue:Ljava/lang/Object;

    .line 1
    iget v1, p0, Lg/a/y;->_isCompleted:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lg/a/y;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_2
    instance-of v3, v0, Lg/a/z0/j;

    if-eqz v3, :cond_6

    move-object v3, v0

    check-cast v3, Lg/a/z0/j;

    invoke-virtual {v3, p1}, Lg/a/z0/j;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    sget-object v1, Lg/a/y;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lg/a/z0/j;->d()Lg/a/z0/j;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    .line 3
    :cond_6
    sget-object v3, Lg/a/a0;->b:Lg/a/z0/o;

    if-ne v0, v3, :cond_7

    return v2

    .line 4
    :cond_7
    new-instance v2, Lg/a/z0/j;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lg/a/z0/j;-><init>(IZ)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lg/a/z0/j;->a(Ljava/lang/Object;)I

    invoke-virtual {v2, p1}, Lg/a/z0/j;->a(Ljava/lang/Object;)I

    sget-object v3, Lg/a/y;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method public E()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lg/a/x;->h:Lg/a/z0/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v3, v0, Lg/a/z0/a;->b:I

    iget v0, v0, Lg/a/z0/a;->c:I

    if-ne v3, v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 3
    :cond_2
    iget-object v0, p0, Lg/a/y;->_delayed:Ljava/lang/Object;

    check-cast v0, Lg/a/y$b;

    if-eqz v0, :cond_4

    .line 4
    iget v0, v0, Lg/a/z0/r;->_size:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v0, p0, Lg/a/y;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    instance-of v3, v0, Lg/a/z0/j;

    if-eqz v3, :cond_6

    check-cast v0, Lg/a/z0/j;

    invoke-virtual {v0}, Lg/a/z0/j;->c()Z

    move-result v1

    goto :goto_3

    .line 6
    :cond_6
    sget-object v3, Lg/a/a0;->b:Lg/a/z0/o;

    if-ne v0, v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public F()J
    .locals 12

    invoke-virtual {p0}, Lg/a/x;->z()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lg/a/y;->_delayed:Ljava/lang/Object;

    check-cast v0, Lg/a/y$b;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    .line 1
    iget v6, v0, Lg/a/z0/r;->_size:I

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_7

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    :cond_2
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lg/a/z0/r;->b()Lg/a/z0/s;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_3

    monitor-exit v0

    move-object v8, v3

    goto :goto_4

    :cond_3
    :try_start_1
    check-cast v8, Lg/a/y$a;

    .line 3
    iget-wide v9, v8, Lg/a/y$a;->e:J

    sub-long v9, v6, v9

    cmp-long v11, v9, v1

    if-ltz v11, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_5

    .line 4
    invoke-virtual {p0, v8}, Lg/a/y;->D(Ljava/lang/Runnable;)Z

    move-result v8

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_6

    invoke-virtual {v0, v5}, Lg/a/z0/r;->c(I)Lg/a/z0/s;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_6
    move-object v8, v3

    :goto_3
    monitor-exit v0

    :goto_4
    check-cast v8, Lg/a/y$a;

    if-nez v8, :cond_2

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 5
    :cond_7
    :goto_5
    iget-object v0, p0, Lg/a/y;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    instance-of v6, v0, Lg/a/z0/j;

    if-eqz v6, :cond_a

    move-object v6, v0

    check-cast v6, Lg/a/z0/j;

    invoke-virtual {v6}, Lg/a/z0/j;->e()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lg/a/z0/j;->h:Lg/a/z0/o;

    if-eq v7, v8, :cond_9

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_7

    :cond_9
    sget-object v7, Lg/a/y;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6}, Lg/a/z0/j;->d()Lg/a/z0/j;

    move-result-object v6

    invoke-virtual {v7, p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    .line 6
    :cond_a
    sget-object v6, Lg/a/a0;->b:Lg/a/z0/o;

    if-ne v0, v6, :cond_b

    :goto_6
    move-object v7, v3

    goto :goto_7

    .line 7
    :cond_b
    sget-object v6, Lg/a/y;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v7, v0

    check-cast v7, Ljava/lang/Runnable;

    :goto_7
    if-eqz v7, :cond_c

    .line 8
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-wide v1

    .line 9
    :cond_c
    iget-object v0, p0, Lg/a/x;->h:Lg/a/z0/a;

    const-wide v6, 0x7fffffffffffffffL

    if-nez v0, :cond_d

    goto :goto_9

    .line 10
    :cond_d
    iget v8, v0, Lg/a/z0/a;->b:I

    iget v0, v0, Lg/a/z0/a;->c:I

    if-ne v8, v0, :cond_e

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_f

    :goto_9
    move-wide v4, v6

    goto :goto_a

    :cond_f
    move-wide v4, v1

    :goto_a
    cmp-long v0, v4, v1

    if-nez v0, :cond_10

    goto :goto_e

    .line 11
    :cond_10
    iget-object v0, p0, Lg/a/y;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_11

    goto :goto_b

    :cond_11
    instance-of v4, v0, Lg/a/z0/j;

    if-eqz v4, :cond_16

    check-cast v0, Lg/a/z0/j;

    invoke-virtual {v0}, Lg/a/z0/j;->c()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_e

    :cond_12
    :goto_b
    iget-object v0, p0, Lg/a/y;->_delayed:Ljava/lang/Object;

    check-cast v0, Lg/a/y$b;

    if-nez v0, :cond_13

    goto :goto_c

    .line 12
    :cond_13
    monitor-enter v0

    :try_start_2
    invoke-virtual {v0}, Lg/a/z0/r;->b()Lg/a/z0/s;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    .line 13
    check-cast v3, Lg/a/y$a;

    :goto_c
    if-nez v3, :cond_14

    goto :goto_d

    :cond_14
    iget-wide v3, v3, Lg/a/y$a;->e:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_15

    goto :goto_e

    :cond_15
    move-wide v1, v3

    goto :goto_e

    :catchall_1
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1

    .line 15
    :cond_16
    sget-object v3, Lg/a/a0;->b:Lg/a/z0/o;

    if-ne v0, v3, :cond_17

    :goto_d
    move-wide v1, v6

    :cond_17
    :goto_e
    return-wide v1
.end method

.method public final s(Lf/k/f;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lg/a/y;->C(Ljava/lang/Runnable;)V

    return-void
.end method
