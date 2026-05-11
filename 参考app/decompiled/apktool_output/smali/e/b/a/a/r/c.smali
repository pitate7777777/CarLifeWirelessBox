.class public final Le/b/a/a/r/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:[B

.field public final d:Ljava/lang/Object;

.field public volatile e:I

.field public volatile f:I

.field public volatile g:I

.field public h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/b/a/a/r/c;->a:I

    iput-boolean p2, p0, Le/b/a/a/r/c;->b:Z

    new-array p1, p1, [B

    iput-object p1, p0, Le/b/a/a/r/c;->c:[B

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/b/a/a/r/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic i(Le/b/a/a/r/c;[BIIJI)I
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x0

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/r/c;->h([BIIJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Le/b/a/a/r/c;->a:I

    iget v1, p0, Le/b/a/a/r/c;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b(IJ)I
    .locals 9

    iget-object v0, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 1
    :cond_0
    :goto_0
    iget v3, p0, Le/b/a/a/r/c;->g:I

    if-ge v3, p1, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-eqz v5, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-gez v8, :cond_3

    :cond_1
    if-nez v5, :cond_2

    iget-object v3, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v1, v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    iget-object v3, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 3
    :cond_3
    iget p1, p0, Le/b/a/a/r/c;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c([BII)I
    .locals 3

    iget v0, p0, Le/b/a/a/r/c;->g:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Le/b/a/a/r/c;->e:I

    iget v1, p0, Le/b/a/a/r/c;->f:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Le/b/a/a/r/c;->g:I

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    iget-object v0, p0, Le/b/a/a/r/c;->c:[B

    iget v1, p0, Le/b/a/a/r/c;->e:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Le/b/a/a/r/c;->g:I

    sub-int/2addr p1, p3

    iput p1, p0, Le/b/a/a/r/c;->g:I

    iget p1, p0, Le/b/a/a/r/c;->e:I

    add-int/2addr p1, p3

    iget p2, p0, Le/b/a/a/r/c;->a:I

    rem-int/2addr p1, p2

    iput p1, p0, Le/b/a/a/r/c;->e:I

    return p3

    :cond_2
    iget v0, p0, Le/b/a/a/r/c;->a:I

    iget v1, p0, Le/b/a/a/r/c;->e:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, p3

    :goto_0
    iget-object v1, p0, Le/b/a/a/r/c;->c:[B

    iget v2, p0, Le/b/a/a/r/c;->e:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Le/b/a/a/r/c;->e:I

    add-int/2addr v1, v0

    iget v2, p0, Le/b/a/a/r/c;->a:I

    rem-int/2addr v1, v2

    iput v1, p0, Le/b/a/a/r/c;->e:I

    iget v1, p0, Le/b/a/a/r/c;->g:I

    sub-int/2addr v1, v0

    iput v1, p0, Le/b/a/a/r/c;->g:I

    iget v1, p0, Le/b/a/a/r/c;->g:I

    if-lez v1, :cond_5

    if-ge v0, p3, :cond_5

    sub-int/2addr p3, v0

    iget v1, p0, Le/b/a/a/r/c;->g:I

    if-le p3, v1, :cond_4

    move p3, v1

    :cond_4
    iget-object v1, p0, Le/b/a/a/r/c;->c:[B

    iget v2, p0, Le/b/a/a/r/c;->e:I

    add-int/2addr p2, v0

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p3

    iget p1, p0, Le/b/a/a/r/c;->e:I

    add-int/2addr p1, p3

    iget p2, p0, Le/b/a/a/r/c;->a:I

    rem-int/2addr p1, p2

    iput p1, p0, Le/b/a/a/r/c;->e:I

    iget p1, p0, Le/b/a/a/r/c;->g:I

    sub-int/2addr p1, p3

    iput p1, p0, Le/b/a/a/r/c;->g:I

    :cond_5
    return v0
.end method

.method public final d([BII)I
    .locals 4

    invoke-virtual {p0}, Le/b/a/a/r/c;->a()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Le/b/a/a/r/c;->f:I

    iget v2, p0, Le/b/a/a/r/c;->e:I

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Le/b/a/a/r/c;->a()I

    move-result v0

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    iget-object v0, p0, Le/b/a/a/r/c;->c:[B

    iget v1, p0, Le/b/a/a/r/c;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Le/b/a/a/r/c;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Le/b/a/a/r/c;->f:I

    iget p1, p0, Le/b/a/a/r/c;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Le/b/a/a/r/c;->g:I

    return p3

    :cond_2
    iget v0, p0, Le/b/a/a/r/c;->a:I

    iget v2, p0, Le/b/a/a/r/c;->f:I

    sub-int/2addr v0, v2

    if-le p3, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, p3

    :goto_0
    iget-object v2, p0, Le/b/a/a/r/c;->c:[B

    iget v3, p0, Le/b/a/a/r/c;->f:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v0, p3, :cond_4

    iget p1, p0, Le/b/a/a/r/c;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Le/b/a/a/r/c;->f:I

    goto :goto_1

    :cond_4
    sub-int/2addr p3, v0

    iget v2, p0, Le/b/a/a/r/c;->e:I

    if-le p3, v2, :cond_5

    move p3, v2

    :cond_5
    add-int/2addr p2, v0

    iget-object v2, p0, Le/b/a/a/r/c;->c:[B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p3

    iput p3, p0, Le/b/a/a/r/c;->f:I

    :goto_1
    iget p1, p0, Le/b/a/a/r/c;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Le/b/a/a/r/c;->g:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Le/b/a/a/r/c;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Le/b/a/a/r/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final g([BIIJ)I
    .locals 10

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Le/b/a/a/r/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/b/a/a/r/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    monitor-exit v0

    return p1

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p4

    move v3, p3

    :cond_1
    :goto_0
    if-lez v3, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v6, p4, v4

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-gez v9, :cond_6

    :cond_2
    add-int v7, p2, p3

    sub-int v8, v7, v3

    invoke-virtual {p0, p1, v8, v3}, Le/b/a/a/r/c;->c([BII)I

    move-result v8

    sub-int/2addr v3, v8

    if-lez v3, :cond_1

    iget-object v8, p0, Le/b/a/a/r/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    iget-object v4, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v1, v8

    cmp-long v6, v8, v4

    if-lez v6, :cond_5

    iget-object v4, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/Object;->wait(J)V

    :cond_5
    :goto_1
    sub-int/2addr v7, v3

    invoke-virtual {p0, p1, v7, v3}, Le/b/a/a/r/c;->c([BII)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_6
    :goto_2
    iget-object p1, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr p3, v3

    monitor-exit v0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final h([BIIJ)I
    .locals 10

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/b/a/a/r/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    const/4 p3, 0x0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p4

    iget-boolean v1, p0, Le/b/a/a/r/c;->b:Z

    if-nez v1, :cond_4

    move v1, p3

    :goto_0
    if-lez v1, :cond_7

    const-wide/16 v5, 0x0

    cmp-long v2, p4, v5

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-gez v9, :cond_7

    :cond_1
    invoke-virtual {p0}, Le/b/a/a/r/c;->a()I

    move-result v7

    if-nez v7, :cond_3

    if-nez v2, :cond_2

    iget-object v2, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v3, v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_3

    iget-object v2, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Object;->wait(J)V

    :cond_3
    :goto_1
    sub-int v2, p3, v1

    add-int/2addr v2, p2

    invoke-virtual {p0, p1, v2, v1}, Le/b/a/a/r/c;->d([BII)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 1
    :cond_4
    iget p4, p0, Le/b/a/a/r/c;->a:I

    if-lt p3, p4, :cond_5

    iget p4, p0, Le/b/a/a/r/c;->a:I

    sub-int p4, p3, p4

    add-int/2addr p4, p2

    .line 2
    iget-object p2, p0, Le/b/a/a/r/c;->c:[B

    .line 3
    iget p5, p0, Le/b/a/a/r/c;->a:I

    .line 4
    invoke-static {p1, p4, p2, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Le/b/a/a/r/c;->e:I

    iput v2, p0, Le/b/a/a/r/c;->f:I

    .line 5
    iget p1, p0, Le/b/a/a/r/c;->a:I

    .line 6
    iput p1, p0, Le/b/a/a/r/c;->g:I

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Le/b/a/a/r/c;->a()I

    move-result p4

    sub-int p4, p3, p4

    if-lez p4, :cond_6

    iget p5, p0, Le/b/a/a/r/c;->e:I

    add-int/2addr p5, p4

    .line 7
    iget v1, p0, Le/b/a/a/r/c;->a:I

    .line 8
    rem-int/2addr p5, v1

    iput p5, p0, Le/b/a/a/r/c;->e:I

    .line 9
    iget p5, p0, Le/b/a/a/r/c;->g:I

    sub-int/2addr p5, p4

    .line 10
    iput p5, p0, Le/b/a/a/r/c;->g:I

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Le/b/a/a/r/c;->d([BII)I

    :cond_7
    :goto_2
    iget-object p1, p0, Le/b/a/a/r/c;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
