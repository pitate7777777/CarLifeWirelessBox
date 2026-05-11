.class public final Lg/a/f;
.super Lg/a/k0;
.source ""

# interfaces
.implements Lg/a/e;


# instance fields
.field public final i:Lg/a/g;


# virtual methods
.method public e(Ljava/lang/Throwable;)Z
    .locals 3

    invoke-virtual {p0}, Lg/a/l0;->m()Lg/a/m0;

    move-result-object v0

    .line 1
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lg/a/m0;->l(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    invoke-virtual {p0}, Lg/a/l0;->m()Lg/a/m0;

    const/4 p1, 0x0

    throw p1
.end method

.method public l(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Lg/a/l0;->m()Lg/a/m0;

    const/4 p1, 0x0

    throw p1
.end method
