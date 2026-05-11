.class public abstract Lg/a/t;
.super Lg/a/a1/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/a/a1/i;"
    }
.end annotation


# instance fields
.field public g:I


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public abstract e()Lf/k/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/k/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    instance-of v0, p1, Lg/a/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lg/a/i;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lg/a/i;->a:Ljava/lang/Throwable;

    :goto_1
    return-object v1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Ld/b/k/m$i;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    new-instance p2, Lg/a/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Lg/a/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lg/a/t;->e()Lf/k/d;

    move-result-object p1

    invoke-interface {p1}, Lf/k/d;->d()Lf/k/f;

    move-result-object p1

    invoke-static {p1, p2}, Ld/b/k/m$i;->q0(Lf/k/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract i()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 10

    iget-object v0, p0, Lg/a/a1/i;->f:Lg/a/a1/j;

    :try_start_0
    invoke-virtual {p0}, Lg/a/t;->e()Lf/k/d;

    move-result-object v1

    check-cast v1, Lg/a/z0/d;

    iget-object v2, v1, Lg/a/z0/d;->i:Lf/k/d;

    iget-object v1, v1, Lg/a/z0/d;->k:Ljava/lang/Object;

    invoke-interface {v2}, Lf/k/d;->d()Lf/k/f;

    move-result-object v3

    invoke-static {v3, v1}, Lg/a/z0/q;->b(Lf/k/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lg/a/z0/q;->a:Lg/a/z0/o;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_0

    invoke-static {v2, v3, v1}, Lg/a/m;->b(Lf/k/d;Lf/k/f;Ljava/lang/Object;)Lg/a/v0;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    :try_start_1
    invoke-interface {v2}, Lf/k/d;->d()Lf/k/f;

    move-result-object v6

    invoke-virtual {p0}, Lg/a/t;->i()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lg/a/t;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_1

    iget v9, p0, Lg/a/t;->g:I

    invoke-static {v9}, Ld/b/k/m$i;->t0(I)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lg/a/i0;->d:Lg/a/i0$a;

    invoke-interface {v6, v9}, Lf/k/f;->get(Lf/k/f$b;)Lf/k/f$a;

    move-result-object v6

    check-cast v6, Lg/a/i0;

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lg/a/i0;->c()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v6}, Lg/a/i0;->j()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lg/a/t;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v6}, Ld/b/k/m$i;->E(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    :goto_2
    invoke-interface {v2, v6}, Lf/k/d;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    if-eqz v8, :cond_3

    invoke-static {v8}, Ld/b/k/m$i;->E(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v7}, Lg/a/t;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_3
    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Lg/a/v0;->K()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {v3, v1}, Lg/a/z0/q;->a(Lf/k/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_5
    :try_start_3
    invoke-interface {v0}, Lg/a/a1/j;->q()V

    sget-object v0, Lf/h;->a:Lf/h;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v0}, Ld/b/k/m$i;->E(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lf/d;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lg/a/t;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception v2

    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Lg/a/v0;->K()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-static {v3, v1}, Lg/a/z0/q;->a(Lf/k/f;Ljava/lang/Object;)V

    :cond_7
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-interface {v0}, Lg/a/a1/j;->q()V

    sget-object v0, Lf/h;->a:Lf/h;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-static {v0}, Ld/b/k/m$i;->E(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lf/d;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lg/a/t;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method
