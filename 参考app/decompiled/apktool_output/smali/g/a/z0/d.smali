.class public final Lg/a/z0/d;
.super Lg/a/t;
.source ""

# interfaces
.implements Lf/k/i/a/c;
.implements Lf/k/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/a/t<",
        "TT;>;",
        "Lf/k/i/a/c;",
        "Lf/k/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;

.field public final h:Lg/a/o;

.field public final i:Lf/k/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/k/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lg/a/z0/d;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public a()Lf/k/i/a/c;
    .locals 2

    iget-object v0, p0, Lg/a/z0/d;->i:Lf/k/d;

    instance-of v1, v0, Lf/k/i/a/c;

    if-eqz v1, :cond_0

    check-cast v0, Lf/k/i/a/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lg/a/z0/d;->i:Lf/k/d;

    invoke-interface {v0}, Lf/k/d;->d()Lf/k/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v1}, Ld/b/k/m$i;->C1(Ljava/lang/Object;Lf/m/a/b;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lg/a/z0/d;->h:Lg/a/o;

    invoke-virtual {v3, v0}, Lg/a/o;->t(Lf/k/f;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iput-object v2, p0, Lg/a/z0/d;->j:Ljava/lang/Object;

    iput v4, p0, Lg/a/t;->g:I

    iget-object p1, p0, Lg/a/z0/d;->h:Lg/a/o;

    invoke-virtual {p1, v0, p0}, Lg/a/o;->s(Lf/k/f;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lg/a/t0;->a:Lg/a/t0;

    invoke-static {}, Lg/a/t0;->a()Lg/a/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/x;->y()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lg/a/z0/d;->j:Ljava/lang/Object;

    iput v4, p0, Lg/a/t;->g:I

    invoke-virtual {v0, p0}, Lg/a/x;->w(Lg/a/t;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lg/a/x;->x(Z)V

    :try_start_0
    invoke-virtual {p0}, Lg/a/z0/d;->d()Lf/k/f;

    move-result-object v3

    iget-object v4, p0, Lg/a/z0/d;->k:Ljava/lang/Object;

    invoke-static {v3, v4}, Lg/a/z0/q;->b(Lf/k/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lg/a/z0/d;->i:Lf/k/d;

    invoke-interface {v5, p1}, Lf/k/d;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v4}, Lg/a/z0/q;->a(Lf/k/f;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lg/a/x;->z()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v3, v4}, Lg/a/z0/q;->a(Lf/k/f;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1, v1}, Lg/a/t;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    invoke-virtual {v0, v2}, Lg/a/x;->u(Z)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v2}, Lg/a/x;->u(Z)V

    throw p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p1, Lg/a/j;

    if-eqz v0, :cond_0

    check-cast p1, Lg/a/j;

    iget-object p1, p1, Lg/a/j;->b:Lf/m/a/b;

    invoke-interface {p1, p2}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()Lf/k/f;
    .locals 1

    iget-object v0, p0, Lg/a/z0/d;->i:Lf/k/d;

    invoke-interface {v0}, Lf/k/d;->d()Lf/k/f;

    move-result-object v0

    return-object v0
.end method

.method public e()Lf/k/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/k/d<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public i()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/a/z0/d;->j:Ljava/lang/Object;

    .line 1
    sget-object v1, Lg/a/z0/e;->a:Lg/a/z0/o;

    .line 2
    iput-object v1, p0, Lg/a/z0/d;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DispatchedContinuation["

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lg/a/z0/d;->h:Lg/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/a/z0/d;->i:Lf/k/d;

    invoke-static {v1}, Ld/b/k/m$i;->y1(Lf/k/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
