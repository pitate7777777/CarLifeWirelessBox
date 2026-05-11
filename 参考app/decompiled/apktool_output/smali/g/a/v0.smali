.class public final Lg/a/v0;
.super Lg/a/z0/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/a/z0/n<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public f:Lf/k/f;

.field public g:Ljava/lang/Object;


# virtual methods
.method public H(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lg/a/v0;->f:Lf/k/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lg/a/v0;->g:Ljava/lang/Object;

    invoke-static {v0, v2}, Lg/a/z0/q;->a(Lf/k/f;Ljava/lang/Object;)V

    iput-object v1, p0, Lg/a/v0;->f:Lf/k/f;

    iput-object v1, p0, Lg/a/v0;->g:Ljava/lang/Object;

    :goto_0
    invoke-static {p1, v1}, Ld/b/k/m$i;->X0(Ljava/lang/Object;Lf/k/d;)Ljava/lang/Object;

    throw v1
.end method

.method public final K()Z
    .locals 1

    iget-object v0, p0, Lg/a/v0;->f:Lf/k/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/a/v0;->f:Lf/k/f;

    iput-object v0, p0, Lg/a/v0;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
