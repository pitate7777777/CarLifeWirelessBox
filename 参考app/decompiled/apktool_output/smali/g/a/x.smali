.class public abstract Lg/a/x;
.super Lg/a/o;
.source ""


# instance fields
.field public f:J

.field public g:Z

.field public h:Lg/a/z0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/z0/a<",
            "Lg/a/t<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final u(Z)V
    .locals 7

    iget-wide v0, p0, Lg/a/x;->f:J

    invoke-virtual {p0, p1}, Lg/a/x;->v(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lg/a/x;->f:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lg/a/x;->g:Z

    if-eqz p1, :cond_9

    move-object p1, p0

    check-cast p1, Lg/a/y;

    .line 1
    sget-object v0, Lg/a/t0;->a:Lg/a/t0;

    .line 2
    sget-object v0, Lg/a/t0;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 3
    iput v0, p1, Lg/a/y;->_isCompleted:I

    .line 4
    :cond_1
    iget-object v4, p1, Lg/a/y;->_queue:Ljava/lang/Object;

    if-nez v4, :cond_2

    sget-object v4, Lg/a/y;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 5
    sget-object v5, Lg/a/a0;->b:Lg/a/z0/o;

    .line 6
    invoke-virtual {v4, p1, v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    instance-of v5, v4, Lg/a/z0/j;

    if-eqz v5, :cond_3

    check-cast v4, Lg/a/z0/j;

    invoke-virtual {v4}, Lg/a/z0/j;->b()Z

    goto :goto_0

    .line 7
    :cond_3
    sget-object v5, Lg/a/a0;->b:Lg/a/z0/o;

    if-ne v4, v5, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    new-instance v5, Lg/a/z0/j;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v0}, Lg/a/z0/j;-><init>(IZ)V

    move-object v6, v4

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lg/a/z0/j;->a(Ljava/lang/Object;)I

    sget-object v6, Lg/a/y;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p1, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    :goto_0
    invoke-virtual {p1}, Lg/a/y;->F()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gtz v0, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_1
    iget-object v0, p1, Lg/a/y;->_delayed:Ljava/lang/Object;

    check-cast v0, Lg/a/y$b;

    if-nez v0, :cond_6

    move-object v4, v1

    goto :goto_3

    .line 11
    :cond_6
    monitor-enter v0

    .line 12
    :try_start_0
    iget v4, v0, Lg/a/z0/r;->_size:I

    if-lez v4, :cond_7

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v0, v4}, Lg/a/z0/r;->c(I)Lg/a/z0/s;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_7
    move-object v4, v1

    :goto_2
    monitor-exit v0

    .line 14
    check-cast v4, Lg/a/y$a;

    :goto_3
    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v2, v3, v4}, Lg/a/z;->B(JLg/a/y$a;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0

    throw p1

    :cond_9
    :goto_4
    return-void
.end method

.method public final v(Z)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public final w(Lg/a/t;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/t<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lg/a/x;->h:Lg/a/z0/a;

    if-nez v0, :cond_0

    new-instance v0, Lg/a/z0/a;

    invoke-direct {v0}, Lg/a/z0/a;-><init>()V

    iput-object v0, p0, Lg/a/x;->h:Lg/a/z0/a;

    .line 1
    :cond_0
    iget-object v1, v0, Lg/a/z0/a;->a:[Ljava/lang/Object;

    iget v2, v0, Lg/a/z0/a;->c:I

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v2

    iput p1, v0, Lg/a/z0/a;->c:I

    iget v4, v0, Lg/a/z0/a;->b:I

    if-ne p1, v4, :cond_1

    .line 2
    array-length p1, v1

    shl-int/lit8 v2, p1, 0x1

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Ld/b/k/m$i;->x([Ljava/lang/Object;[Ljava/lang/Object;IIII)[Ljava/lang/Object;

    iget-object v5, v0, Lg/a/z0/a;->a:[Ljava/lang/Object;

    array-length v1, v5

    iget v9, v0, Lg/a/z0/a;->b:I

    sub-int v7, v1, v9

    const/4 v8, 0x0

    const/4 v10, 0x4

    move-object v6, v11

    invoke-static/range {v5 .. v10}, Ld/b/k/m$i;->x([Ljava/lang/Object;[Ljava/lang/Object;IIII)[Ljava/lang/Object;

    iput-object v11, v0, Lg/a/z0/a;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lg/a/z0/a;->b:I

    iput p1, v0, Lg/a/z0/a;->c:I

    :cond_1
    return-void
.end method

.method public final x(Z)V
    .locals 4

    iget-wide v0, p0, Lg/a/x;->f:J

    invoke-virtual {p0, p1}, Lg/a/x;->v(Z)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lg/a/x;->f:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/a/x;->g:Z

    :cond_0
    return-void
.end method

.method public final y()Z
    .locals 6

    iget-wide v0, p0, Lg/a/x;->f:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lg/a/x;->v(Z)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final z()Z
    .locals 7

    iget-object v0, p0, Lg/a/x;->h:Lg/a/z0/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget v2, v0, Lg/a/z0/a;->b:I

    iget v3, v0, Lg/a/z0/a;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lg/a/z0/a;->a:[Ljava/lang/Object;

    aget-object v6, v3, v2

    aput-object v4, v3, v2

    add-int/2addr v2, v5

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, v0, Lg/a/z0/a;->b:I

    if-eqz v6, :cond_3

    move-object v4, v6

    .line 2
    :goto_0
    check-cast v4, Lg/a/t;

    if-nez v4, :cond_2

    return v1

    :cond_2
    invoke-virtual {v4}, Lg/a/t;->run()V

    return v5

    .line 3
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
