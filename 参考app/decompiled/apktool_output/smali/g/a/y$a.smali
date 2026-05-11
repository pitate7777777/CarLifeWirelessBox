.class public abstract Lg/a/y$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lg/a/v;
.implements Lg/a/z0/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lg/a/y$a;",
        ">;",
        "Lg/a/v;",
        "Lg/a/z0/s;"
    }
.end annotation


# instance fields
.field public e:J

.field public f:Ljava/lang/Object;

.field public g:I


# virtual methods
.method public b(I)V
    .locals 0

    iput p1, p0, Lg/a/y$a;->g:I

    return-void
.end method

.method public c(Lg/a/z0/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/z0/r<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lg/a/y$a;->f:Ljava/lang/Object;

    .line 1
    sget-object v1, Lg/a/a0;->a:Lg/a/z0/o;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lg/a/y$a;->f:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lg/a/y$a;

    .line 1
    iget-wide v0, p0, Lg/a/y$a;->e:J

    iget-wide v2, p1, Lg/a/y$a;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/a/y$a;->f:Ljava/lang/Object;

    .line 1
    sget-object v1, Lg/a/a0;->a:Lg/a/z0/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v1, v0, Lg/a/y$b;

    if-eqz v1, :cond_1

    check-cast v0, Lg/a/y$b;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p0}, Lg/a/z0/s;->g()Lg/a/z0/r;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lg/a/z0/s;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/a/z0/r;->c(I)Lg/a/z0/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v0

    .line 4
    :goto_2
    sget-object v0, Lg/a/a0;->a:Lg/a/z0/o;

    .line 5
    iput-object v0, p0, Lg/a/y$a;->f:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_4
    monitor-exit v0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Lg/a/z0/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/a/z0/r<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lg/a/y$a;->f:Ljava/lang/Object;

    instance-of v1, v0, Lg/a/z0/r;

    if-eqz v1, :cond_0

    check-cast v0, Lg/a/z0/r;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lg/a/y$a;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Delayed[nanos="

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lg/a/y$a;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
