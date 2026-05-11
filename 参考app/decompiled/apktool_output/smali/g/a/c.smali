.class public abstract Lg/a/c;
.super Lg/a/m0;
.source ""

# interfaces
.implements Lg/a/i0;
.implements Lf/k/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/a/m0;",
        "Lg/a/i0;",
        "Lf/k/d<",
        "TT;>;",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public final B(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lg/a/i;

    if-eqz v0, :cond_0

    check-cast p1, Lg/a/i;

    iget-object v0, p1, Lg/a/i;->a:Ljava/lang/Throwable;

    .line 1
    iget p1, p1, Lg/a/i;->_handled:I

    .line 2
    invoke-virtual {p0}, Lg/a/c;->I()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/a/c;->J()V

    :goto_0
    return-void
.end method

.method public H(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/a/m0;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public I()V
    .locals 0

    return-void
.end method

.method public J()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ld/b/k/m$i;->C1(Ljava/lang/Object;Lf/m/a/b;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lg/a/m0;->t()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lg/a/m0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    sget-object v2, Lg/a/n0;->a:Lg/a/z0/o;

    if-ne v1, v2, :cond_2

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already complete or completing, but is being completed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    instance-of v3, p1, Lg/a/i;

    if-eqz v3, :cond_0

    check-cast p1, Lg/a/i;

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lg/a/i;->a:Ljava/lang/Throwable;

    .line 6
    :goto_2
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_2
    sget-object v2, Lg/a/n0;->c:Lg/a/z0/o;

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    sget-object p1, Lg/a/n0;->b:Lg/a/z0/o;

    if-ne v1, p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, v1}, Lg/a/c;->H(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-super {p0}, Lg/a/m0;->c()Z

    move-result v0

    return v0
.end method

.method public final d()Lf/k/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    .line 2
    invoke-static {v0, v1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ld/b/k/m$i;->q0(Lf/k/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lg/a/m;->a(Lf/k/f;)Ljava/lang/String;

    invoke-super {p0}, Lg/a/m0;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
