.class public abstract Lg/a/z;
.super Lg/a/x;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A()Ljava/lang/Thread;
.end method

.method public final B(JLg/a/y$a;)V
    .locals 16

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    sget-object v3, Lg/a/r;->k:Lg/a/r;

    .line 1
    iget v4, v3, Lg/a/y;->_isCompleted:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    .line 2
    :cond_0
    iget-object v4, v3, Lg/a/y;->_delayed:Ljava/lang/Object;

    check-cast v4, Lg/a/y$b;

    if-nez v4, :cond_1

    sget-object v4, Lg/a/y;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v9, Lg/a/y$b;

    invoke-direct {v9, v0, v1}, Lg/a/y$b;-><init>(J)V

    invoke-virtual {v4, v3, v5, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v4, v3, Lg/a/y;->_delayed:Ljava/lang/Object;

    check-cast v4, Lg/a/y$b;

    invoke-static {v4}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 3
    :cond_1
    monitor-enter p3

    :try_start_0
    iget-object v9, v2, Lg/a/y$a;->f:Ljava/lang/Object;

    .line 4
    sget-object v10, Lg/a/a0;->a:Lg/a/z0/o;

    if-ne v9, v10, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    .line 5
    :cond_2
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4}, Lg/a/z0/r;->b()Lg/a/z0/s;

    move-result-object v9

    check-cast v9, Lg/a/y$a;

    .line 6
    iget v10, v3, Lg/a/y;->_isCompleted:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v10, :cond_3

    .line 7
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v10, 0x0

    if-nez v9, :cond_4

    move-wide v12, v0

    goto :goto_0

    :cond_4
    :try_start_3
    iget-wide v12, v9, Lg/a/y$a;->e:J

    sub-long v14, v12, v0

    cmp-long v9, v14, v10

    if-ltz v9, :cond_5

    move-wide v12, v0

    :cond_5
    iget-wide v14, v4, Lg/a/y$b;->b:J

    sub-long v14, v12, v14

    cmp-long v9, v14, v10

    if-lez v9, :cond_6

    :goto_0
    iput-wide v12, v4, Lg/a/y$b;->b:J

    :cond_6
    iget-wide v12, v2, Lg/a/y$a;->e:J

    iget-wide v14, v4, Lg/a/y$b;->b:J

    sub-long/2addr v12, v14

    cmp-long v9, v12, v10

    if-gez v9, :cond_7

    iget-wide v9, v4, Lg/a/y$b;->b:J

    iput-wide v9, v2, Lg/a/y$a;->e:J

    :cond_7
    invoke-virtual {v4, v2}, Lg/a/z0/r;->a(Lg/a/z0/s;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, 0x0

    :goto_1
    monitor-exit p3

    :goto_2
    if-eqz v4, :cond_a

    if-eq v4, v8, :cond_9

    if-ne v4, v6, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "unexpected result"

    .line 8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-virtual {v3, v0, v1, v2}, Lg/a/z;->B(JLg/a/y$a;)V

    goto :goto_4

    .line 9
    :cond_a
    iget-object v0, v3, Lg/a/y;->_delayed:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/a/y$b;

    if-nez v1, :cond_b

    goto :goto_3

    .line 10
    :cond_b
    monitor-enter v1

    :try_start_5
    invoke-virtual {v1}, Lg/a/z0/r;->b()Lg/a/z0/s;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v1

    .line 11
    move-object v5, v0

    check-cast v5, Lg/a/y$a;

    :goto_3
    if-ne v5, v2, :cond_c

    const/4 v7, 0x1

    :cond_c
    if-eqz v7, :cond_d

    .line 12
    invoke-virtual {v3}, Lg/a/z;->A()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_d

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_d
    :goto_4
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 13
    monitor-exit v1

    throw v2

    :catchall_1
    move-exception v0

    .line 14
    :try_start_6
    monitor-exit v4

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p3

    throw v0
.end method
