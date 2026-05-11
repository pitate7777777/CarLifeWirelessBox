.class public final Le/b/a/a/p/j/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/e/c/a/b;


# instance fields
.field public final e:Le/b/a/a/c;

.field public final f:Le/b/a/a/o/e/c/a/a;

.field public final g:Le/b/a/a/r/c;

.field public final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Le/b/a/a/o/h/a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public final j:I


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/o/e/c/a/a;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/j/b;->e:Le/b/a/a/c;

    iput-object p2, p0, Le/b/a/a/p/j/b;->f:Le/b/a/a/o/e/c/a/a;

    new-instance p1, Le/b/a/a/r/c;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Le/b/a/a/r/c;-><init>(IZ)V

    iput-object p1, p0, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/j/b;->h:Ljava/util/LinkedList;

    const/4 p1, 0x3

    iput p1, p0, Le/b/a/a/p/j/b;->j:I

    return-void
.end method

.method public static final h(Le/b/a/a/p/j/b;)V
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Le/b/a/a/p/j/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/o/h/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    invoke-virtual {v1}, Le/b/a/a/r/c;->a()I

    move-result v1

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->i()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    .line 2
    iget-object v4, v0, Le/b/a/a/o/h/a;->i:[B

    .line 3
    invoke-virtual {v0}, Le/b/a/a/o/h/a;->h()I

    move-result v5

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->i()I

    move-result v6

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    invoke-static/range {v3 .. v9}, Le/b/a/a/r/c;->i(Le/b/a/a/r/c;[BIIJI)I

    iget-object v1, p0, Le/b/a/a/p/j/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Le/b/a/a/p/j/b;->j:I

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized c(Le/b/a/a/o/h/a;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/b/a/a/o/h/a;->i()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Le/b/a/a/p/j/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    invoke-virtual {v0}, Le/b/a/a/r/c;->a()I

    move-result v0

    invoke-virtual {p1}, Le/b/a/a/o/h/a;->i()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v2, p0, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    .line 1
    iget-object v3, p1, Le/b/a/a/o/h/a;->i:[B

    .line 2
    invoke-virtual {p1}, Le/b/a/a/o/h/a;->h()I

    move-result v4

    invoke-virtual {p1}, Le/b/a/a/o/h/a;->i()I

    move-result v5

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    invoke-static/range {v2 .. v8}, Le/b/a/a/r/c;->i(Le/b/a/a/r/c;[BIIJI)I

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p1, Le/b/a/a/o/h/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    iget-object v0, p0, Le/b/a/a/p/j/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/b/a/a/p/j/b;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/b/a/a/p/j/b;->i:Z

    iget-object v0, p0, Le/b/a/a/p/j/b;->h:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/o/h/a;

    invoke-virtual {v1}, Le/b/a/a/o/h/a;->w()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/p/j/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Le/b/a/a/o/e/c/a/a;
    .locals 4

    iget-object v0, p0, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    .line 1
    iget v1, v0, Le/b/a/a/r/c;->a:I

    .line 2
    div-int/lit8 v1, v1, 0x2

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Le/b/a/a/r/c;->b(IJ)I

    .line 4
    iget-object v0, p0, Le/b/a/a/p/j/b;->f:Le/b/a/a/o/e/c/a/a;

    return-object v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/p/j/b;->i:Z

    return v0
.end method

.method public p(Le/b/a/a/o/e/c/a/c;IJ)I
    .locals 8

    const-string p2, "buffer"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Le/b/a/a/p/j/b;->i:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Le/b/a/a/p/j/b;->h:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    .line 1
    iget v0, v0, Le/b/a/a/r/c;->g:I

    .line 2
    iget-object v2, p0, Le/b/a/a/p/j/b;->f:Le/b/a/a/o/e/c/a/a;

    invoke-virtual {v2}, Le/b/a/a/o/e/c/a/a;->d()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Le/b/a/a/p/j/b;->e:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->v0()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Le/b/a/a/p/j/a;

    invoke-direct {v2, p0}, Le/b/a/a/p/j/a;-><init>(Le/b/a/a/p/j/b;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    invoke-virtual {v0}, Le/b/a/a/r/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    invoke-virtual {v0, v1, p3, p4}, Le/b/a/a/r/c;->b(IJ)I

    :cond_2
    iget-object v2, p0, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    .line 3
    invoke-static {v2, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput p2, p1, Le/b/a/a/o/e/c/a/c;->b:I

    .line 4
    iget-object v3, p1, Le/b/a/a/o/e/c/a/c;->a:[B

    array-length v0, v3

    add-int/lit8 v5, v0, 0x0

    const/4 v4, 0x0

    move-wide v6, p3

    .line 5
    invoke-virtual/range {v2 .. v7}, Le/b/a/a/r/c;->g([BIIJ)I

    move-result p2

    iget p3, p1, Le/b/a/a/o/e/c/a/c;->b:I

    add-int/2addr p3, p2

    iput p3, p1, Le/b/a/a/o/e/c/a/c;->b:I

    return p3
.end method

.method public r(Le/b/a/a/o/e/c/a/c;J)I
    .locals 0

    const-string p2, "buffer"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "CarLifeStreamSource don\'t support drainTo"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
