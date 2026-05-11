.class public Le/c/b/t;
.super Le/c/b/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/t$c;,
        Le/c/b/t$b;
    }
.end annotation


# virtual methods
.method public a()Le/c/b/x;
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/b/u;->b:Le/c/b/x;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/c/b/u;->b:Le/c/b/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Le/c/b/u;->a:Le/c/b/g;

    if-nez v1, :cond_2

    iput-object v0, p0, Le/c/b/u;->b:Le/c/b/x;

    sget-object v0, Le/c/b/g;->f:Le/c/b/g;
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    throw v0

    :catch_0
    iput-object v0, p0, Le/c/b/u;->b:Le/c/b/x;

    sget-object v0, Le/c/b/g;->f:Le/c/b/g;

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2
    :goto_1
    iget-object v0, p0, Le/c/b/u;->b:Le/c/b/x;

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Le/c/b/t;->a()Le/c/b/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Le/c/b/t;->a()Le/c/b/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Le/c/b/t;->a()Le/c/b/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
