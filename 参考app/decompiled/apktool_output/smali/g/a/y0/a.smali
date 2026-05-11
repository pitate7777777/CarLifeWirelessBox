.class public final Lg/a/y0/a;
.super Lg/a/y0/b;
.source ""


# instance fields
.field public volatile _immediate:Lg/a/y0/a;

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Lg/a/y0/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lg/a/y0/b;-><init>(Lf/m/b/b;)V

    iput-object p1, p0, Lg/a/y0/a;->f:Landroid/os/Handler;

    iput-object p2, p0, Lg/a/y0/a;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lg/a/y0/a;->h:Z

    if-eqz p3, :cond_0

    move-object v0, p0

    :cond_0
    iput-object v0, p0, Lg/a/y0/a;->_immediate:Lg/a/y0/a;

    iget-object p1, p0, Lg/a/y0/a;->_immediate:Lg/a/y0/a;

    if-nez p1, :cond_1

    new-instance p1, Lg/a/y0/a;

    iget-object p2, p0, Lg/a/y0/a;->f:Landroid/os/Handler;

    iget-object p3, p0, Lg/a/y0/a;->g:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, v0}, Lg/a/y0/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Lg/a/y0/a;->_immediate:Lg/a/y0/a;

    :cond_1
    iput-object p1, p0, Lg/a/y0/a;->i:Lg/a/y0/a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lg/a/y0/a;

    if-eqz v0, :cond_0

    check-cast p1, Lg/a/y0/a;

    iget-object p1, p1, Lg/a/y0/a;->f:Landroid/os/Handler;

    iget-object v0, p0, Lg/a/y0/a;->f:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lg/a/y0/a;->f:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public s(Lf/k/f;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lg/a/y0/a;->f:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public t(Lf/k/f;)Z
    .locals 1

    iget-boolean p1, p0, Lg/a/y0/a;->h:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lg/a/y0/a;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lg/a/o0;->v()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/a/y0/a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/a/y0/a;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lg/a/y0/a;->h:Z

    if-eqz v1, :cond_1

    const-string v1, ".immediate"

    invoke-static {v0, v1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public u()Lg/a/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/a/y0/a;->i:Lg/a/y0/a;

    return-object v0
.end method
