.class public Lg/a/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/a/i0;
.implements Lg/a/g;
.implements Lg/a/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/m0$b;,
        Lg/a/m0$a;
    }
.end annotation


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _parentHandle:Ljava/lang/Object;

.field public volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lg/a/m0;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/a/m0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public static final e(Lg/a/m0;Lg/a/m0$b;Lg/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lg/a/m0;->y(Lg/a/z0/h;)Lg/a/f;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lg/a/m0;->G(Lg/a/m0$b;Lg/a/f;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lg/a/m0;->r(Lg/a/m0$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/a/m0;->g(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public B(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final C(Lg/a/l0;)V
    .locals 2

    new-instance v0, Lg/a/p0;

    invoke-direct {v0}, Lg/a/p0;-><init>()V

    .line 1
    sget-object v1, Lg/a/z0/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lg/a/z0/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lg/a/z0/h;->h()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lg/a/z0/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lg/a/z0/h;->b(Lg/a/z0/h;)V

    .line 2
    :goto_0
    invoke-virtual {p1}, Lg/a/z0/h;->i()Lg/a/z0/h;

    move-result-object v0

    sget-object v1, Lg/a/m0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final D(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p1, Lg/a/m0$b;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    check-cast p1, Lg/a/m0$b;

    invoke-virtual {p1}, Lg/a/m0$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 1
    :cond_0
    iget p1, p1, Lg/a/m0$b;->_isCompleting:I

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    .line 2
    :cond_1
    instance-of v0, p1, Lg/a/e0;

    if-eqz v0, :cond_3

    check-cast p1, Lg/a/e0;

    invoke-interface {p1}, Lg/a/e0;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lg/a/i;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method public final E(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lg/a/j0;

    if-nez p2, :cond_1

    .line 1
    invoke-virtual {p0}, Lg/a/m0;->o()Ljava/lang/String;

    move-result-object p2

    .line 2
    :cond_1
    invoke-direct {v0, p2, p1, p0}, Lg/a/j0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/a/i0;)V

    :cond_2
    return-object v0
.end method

.method public final F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lg/a/e0;

    if-nez v0, :cond_0

    .line 1
    sget-object p1, Lg/a/n0;->a:Lg/a/z0/o;

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Lg/a/w;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lg/a/l0;

    if-eqz v0, :cond_5

    :cond_1
    instance-of v0, p1, Lg/a/f;

    if-nez v0, :cond_5

    instance-of v0, p2, Lg/a/i;

    if-nez v0, :cond_5

    check-cast p1, Lg/a/e0;

    .line 3
    sget-object v0, Lg/a/m0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    instance-of v3, p2, Lg/a/e0;

    if-eqz v3, :cond_2

    new-instance v3, Lg/a/f0;

    move-object v4, p2

    check-cast v4, Lg/a/e0;

    invoke-direct {v3, v4}, Lg/a/f0;-><init>(Lg/a/e0;)V

    goto :goto_0

    :cond_2
    move-object v3, p2

    .line 5
    :goto_0
    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lg/a/m0;->A()V

    invoke-virtual {p0, p2}, Lg/a/m0;->B(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lg/a/m0;->p(Lg/a/e0;Ljava/lang/Object;)V

    :goto_1
    if-eqz v1, :cond_4

    return-object p2

    .line 6
    :cond_4
    sget-object p1, Lg/a/n0;->c:Lg/a/z0/o;

    return-object p1

    .line 7
    :cond_5
    check-cast p1, Lg/a/e0;

    .line 8
    invoke-virtual {p0, p1}, Lg/a/m0;->s(Lg/a/e0;)Lg/a/p0;

    move-result-object v0

    if-nez v0, :cond_6

    .line 9
    sget-object p1, Lg/a/n0;->c:Lg/a/z0/o;

    goto/16 :goto_a

    .line 10
    :cond_6
    instance-of v3, p1, Lg/a/m0$b;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Lg/a/m0$b;

    goto :goto_2

    :cond_7
    move-object v3, v4

    :goto_2
    if-nez v3, :cond_8

    new-instance v3, Lg/a/m0$b;

    invoke-direct {v3, v0, v2, v4}, Lg/a/m0$b;-><init>(Lg/a/p0;ZLjava/lang/Throwable;)V

    :cond_8
    monitor-enter v3

    .line 11
    :try_start_0
    iget v2, v3, Lg/a/m0$b;->_isCompleting:I

    if-eqz v2, :cond_9

    .line 12
    sget-object p1, Lg/a/n0;->a:Lg/a/z0/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_3
    monitor-exit v3

    goto/16 :goto_a

    .line 14
    :cond_9
    :try_start_1
    iput v1, v3, Lg/a/m0$b;->_isCompleting:I

    if-eq v3, p1, :cond_a

    .line 15
    sget-object v2, Lg/a/m0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 16
    sget-object p1, Lg/a/n0;->c:Lg/a/z0/o;

    goto :goto_3

    .line 17
    :cond_a
    invoke-virtual {v3}, Lg/a/m0$b;->d()Z

    move-result v2

    instance-of v5, p2, Lg/a/i;

    if-eqz v5, :cond_b

    move-object v5, p2

    check-cast v5, Lg/a/i;

    goto :goto_4

    :cond_b
    move-object v5, v4

    :goto_4
    if-nez v5, :cond_c

    goto :goto_5

    :cond_c
    iget-object v5, v5, Lg/a/i;->a:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Lg/a/m0$b;->a(Ljava/lang/Throwable;)V

    .line 18
    :goto_5
    iget-object v5, v3, Lg/a/m0$b;->_rootCause:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v1, v2

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    move-object v5, v4

    .line 19
    :goto_6
    monitor-exit v3

    if-nez v5, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p0, v0, v5}, Lg/a/m0;->z(Lg/a/p0;Ljava/lang/Throwable;)V

    .line 20
    :goto_7
    instance-of v0, p1, Lg/a/f;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lg/a/f;

    goto :goto_8

    :cond_f
    move-object v0, v4

    :goto_8
    if-nez v0, :cond_11

    invoke-interface {p1}, Lg/a/e0;->f()Lg/a/p0;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p0, p1}, Lg/a/m0;->y(Lg/a/z0/h;)Lg/a/f;

    move-result-object v4

    goto :goto_9

    :cond_11
    move-object v4, v0

    :goto_9
    if-eqz v4, :cond_12

    .line 21
    invoke-virtual {p0, v3, v4, p2}, Lg/a/m0;->G(Lg/a/m0$b;Lg/a/f;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    sget-object p1, Lg/a/n0;->b:Lg/a/z0/o;

    goto :goto_a

    :cond_12
    invoke-virtual {p0, v3, p2}, Lg/a/m0;->r(Lg/a/m0$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1
.end method

.method public final G(Lg/a/m0$b;Lg/a/f;Ljava/lang/Object;)Z
    .locals 3

    :cond_0
    iget-object v0, p2, Lg/a/f;->i:Lg/a/g;

    new-instance v1, Lg/a/m0$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lg/a/m0$a;-><init>(Lg/a/m0;Lg/a/m0$b;Lg/a/f;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 1
    invoke-interface {v0, v2, v2, v1}, Lg/a/i0;->i(ZZLf/m/a/b;)Lg/a/v;

    move-result-object v0

    .line 2
    sget-object v1, Lg/a/q0;->e:Lg/a/q0;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0, p2}, Lg/a/m0;->y(Lg/a/z0/h;)Lg/a/f;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method public c()Z
    .locals 2

    invoke-virtual {p0}, Lg/a/m0;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/a/e0;

    if-eqz v1, :cond_0

    check-cast v0, Lg/a/e0;

    invoke-interface {v0}, Lg/a/e0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(Ljava/lang/Object;Lg/a/p0;Lg/a/l0;)Z
    .locals 5

    new-instance v0, Lg/a/m0$c;

    invoke-direct {v0, p3, p0, p1}, Lg/a/m0$c;-><init>(Lg/a/z0/h;Lg/a/m0;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Lg/a/z0/h;->j()Lg/a/z0/h;

    move-result-object p1

    .line 1
    sget-object v1, Lg/a/z0/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lg/a/z0/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v0, Lg/a/z0/h$a;->c:Lg/a/z0/h;

    sget-object v1, Lg/a/z0/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lg/a/z0/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    :goto_1
    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public fold(Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lf/m/a/c<",
            "-TR;-",
            "Lf/k/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lf/k/f$a$a;->a(Lf/k/f$a;Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public get(Lf/k/f$b;)Lf/k/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lf/k/f$a;",
            ">(",
            "Lf/k/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lf/k/f$a$a;->b(Lf/k/f$a;Lf/k/f$b;)Lf/k/f$a;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lf/k/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/k/f$b<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lg/a/i0;->d:Lg/a/i0$a;

    return-object v0
.end method

.method public h()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lg/a/m0;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/a/m0$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lg/a/m0$b;

    .line 1
    iget-object v1, v1, Lg/a/m0$b;->_rootCause:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_0

    .line 2
    :cond_0
    instance-of v1, v0, Lg/a/i;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lg/a/i;

    iget-object v1, v1, Lg/a/i;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lg/a/e0;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lg/a/j0;

    invoke-virtual {p0, v0}, Lg/a/m0;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-static {v3, v0}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lg/a/j0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/a/i0;)V

    :cond_3
    return-object v2

    :cond_4
    const-string v1, "Cannot be cancelling child in this state: "

    invoke-static {v1, v0}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final i(ZZLf/m/a/b;)Lg/a/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lf/m/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lf/h;",
            ">;)",
            "Lg/a/v;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p3, Lg/a/k0;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lg/a/k0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    new-instance v1, Lg/a/g0;

    invoke-direct {v1, p3}, Lg/a/g0;-><init>(Lf/m/a/b;)V

    goto :goto_2

    :cond_1
    instance-of v1, p3, Lg/a/l0;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, Lg/a/l0;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    move-object v1, v0

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Lg/a/h0;

    invoke-direct {v1, p3}, Lg/a/h0;-><init>(Lf/m/a/b;)V

    .line 2
    :cond_4
    :goto_2
    iput-object p0, v1, Lg/a/l0;->h:Lg/a/m0;

    .line 3
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lg/a/m0;->t()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lg/a/w;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lg/a/w;

    .line 4
    iget-boolean v4, v3, Lg/a/w;->e:Z

    if-eqz v4, :cond_6

    .line 5
    sget-object v3, Lg/a/m0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    .line 6
    :cond_6
    new-instance v2, Lg/a/p0;

    invoke-direct {v2}, Lg/a/p0;-><init>()V

    .line 7
    iget-boolean v4, v3, Lg/a/w;->e:Z

    if-eqz v4, :cond_7

    goto :goto_4

    .line 8
    :cond_7
    new-instance v4, Lg/a/d0;

    invoke-direct {v4, v2}, Lg/a/d0;-><init>(Lg/a/p0;)V

    move-object v2, v4

    :goto_4
    sget-object v4, Lg/a/m0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    .line 9
    :cond_8
    instance-of v3, v2, Lg/a/e0;

    if-eqz v3, :cond_12

    move-object v3, v2

    check-cast v3, Lg/a/e0;

    invoke-interface {v3}, Lg/a/e0;->f()Lg/a/p0;

    move-result-object v3

    if-nez v3, :cond_a

    if-eqz v2, :cond_9

    check-cast v2, Lg/a/l0;

    invoke-virtual {p0, v2}, Lg/a/m0;->C(Lg/a/l0;)V

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    sget-object v4, Lg/a/q0;->e:Lg/a/q0;

    if-eqz p1, :cond_f

    instance-of v5, v2, Lg/a/m0$b;

    if-eqz v5, :cond_f

    monitor-enter v2

    :try_start_0
    move-object v5, v2

    check-cast v5, Lg/a/m0$b;

    .line 10
    iget-object v5, v5, Lg/a/m0$b;->_rootCause:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_b

    .line 11
    instance-of v6, p3, Lg/a/f;

    if-eqz v6, :cond_e

    move-object v6, v2

    check-cast v6, Lg/a/m0$b;

    .line 12
    iget v6, v6, Lg/a/m0$b;->_isCompleting:I

    if-nez v6, :cond_e

    .line 13
    :cond_b
    invoke-virtual {p0, v2, v3, v1}, Lg/a/m0;->f(Ljava/lang/Object;Lg/a/p0;Lg/a/l0;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_c

    monitor-exit v2

    goto :goto_3

    :cond_c
    if-nez v5, :cond_d

    monitor-exit v2

    return-object v1

    :cond_d
    move-object v4, v1

    :cond_e
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_f
    move-object v5, v0

    :goto_5
    if-eqz v5, :cond_11

    if-eqz p2, :cond_10

    invoke-interface {p3, v5}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v4

    :cond_11
    invoke-virtual {p0, v2, v3, v1}, Lg/a/m0;->f(Ljava/lang/Object;Lg/a/p0;Lg/a/l0;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_12
    if-eqz p2, :cond_15

    instance-of p1, v2, Lg/a/i;

    if-eqz p1, :cond_13

    check-cast v2, Lg/a/i;

    goto :goto_6

    :cond_13
    move-object v2, v0

    :goto_6
    if-nez v2, :cond_14

    goto :goto_7

    :cond_14
    iget-object v0, v2, Lg/a/i;->a:Ljava/lang/Throwable;

    :goto_7
    invoke-interface {p3, v0}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    sget-object p1, Lg/a/q0;->e:Lg/a/q0;

    return-object p1
.end method

.method public final j()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lg/a/m0;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/a/m0$b;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lg/a/m0$b;

    .line 1
    iget-object v0, v0, Lg/a/m0$b;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is cancelling"

    .line 3
    invoke-static {v1, v2}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lg/a/m0;->E(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2, p0}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, v0, Lg/a/e0;

    if-nez v1, :cond_3

    instance-of v1, v0, Lg/a/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lg/a/i;

    iget-object v0, v0, Lg/a/i;->a:Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p0, v0, v2}, Lg/a/m0;->E(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lg/a/j0;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " has completed normally"

    .line 7
    invoke-static {v1, v3}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lg/a/j0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/a/i0;)V

    :goto_0
    return-object v0

    :cond_3
    invoke-static {v2, p0}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final l(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    sget-object v0, Lg/a/n0;->a:Lg/a/z0/o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v0, :cond_f

    const/4 v0, 0x0

    move-object v3, v0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lg/a/m0;->t()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lg/a/m0$b;

    if-eqz v5, :cond_7

    monitor-enter v4

    :try_start_0
    move-object v5, v4

    check-cast v5, Lg/a/m0$b;

    invoke-virtual {v5}, Lg/a/m0$b;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3
    sget-object p1, Lg/a/n0;->d:Lg/a/z0/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v4

    goto/16 :goto_4

    :cond_1
    :try_start_1
    move-object v5, v4

    check-cast v5, Lg/a/m0$b;

    invoke-virtual {v5}, Lg/a/m0$b;->d()Z

    move-result v5

    if-nez p1, :cond_2

    if-nez v5, :cond_4

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lg/a/m0;->q(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    :cond_3
    move-object p1, v4

    check-cast p1, Lg/a/m0$b;

    invoke-virtual {p1, v3}, Lg/a/m0$b;->a(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v4

    check-cast p1, Lg/a/m0$b;

    .line 5
    iget-object p1, p1, Lg/a/m0$b;->_rootCause:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 6
    :cond_5
    monitor-exit v4

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    check-cast v4, Lg/a/m0$b;

    .line 7
    iget-object p1, v4, Lg/a/m0$b;->e:Lg/a/p0;

    .line 8
    invoke-virtual {p0, p1, v0}, Lg/a/m0;->z(Lg/a/p0;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v4

    throw p1

    :cond_7
    instance-of v5, v4, Lg/a/e0;

    if-eqz v5, :cond_e

    if-nez v3, :cond_8

    invoke-virtual {p0, p1}, Lg/a/m0;->q(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    :cond_8
    move-object v5, v4

    check-cast v5, Lg/a/e0;

    invoke-interface {v5}, Lg/a/e0;->c()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 9
    invoke-virtual {p0, v5}, Lg/a/m0;->s(Lg/a/e0;)Lg/a/p0;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    new-instance v6, Lg/a/m0$b;

    invoke-direct {v6, v4, v1, v3}, Lg/a/m0$b;-><init>(Lg/a/p0;ZLjava/lang/Throwable;)V

    sget-object v7, Lg/a/m0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, p0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    :goto_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v4, v3}, Lg/a/m0;->z(Lg/a/p0;Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_0

    .line 10
    :goto_3
    sget-object p1, Lg/a/n0;->a:Lg/a/z0/o;

    goto :goto_4

    .line 11
    :cond_b
    new-instance v5, Lg/a/i;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v1, v6}, Lg/a/i;-><init>(Ljava/lang/Throwable;ZI)V

    invoke-virtual {p0, v4, v5}, Lg/a/m0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 12
    sget-object v6, Lg/a/n0;->a:Lg/a/z0/o;

    if-eq v5, v6, :cond_d

    .line 13
    sget-object v4, Lg/a/n0;->c:Lg/a/z0/o;

    if-ne v5, v4, :cond_c

    goto/16 :goto_0

    :cond_c
    move-object v0, v5

    goto :goto_5

    :cond_d
    const-string p1, "Cannot happen in "

    .line 14
    invoke-static {p1, v4}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_e
    sget-object p1, Lg/a/n0;->d:Lg/a/z0/o;

    :goto_4
    move-object v0, p1

    .line 16
    :cond_f
    :goto_5
    sget-object p1, Lg/a/n0;->a:Lg/a/z0/o;

    if-ne v0, p1, :cond_10

    :goto_6
    const/4 v1, 0x1

    goto :goto_7

    .line 17
    :cond_10
    sget-object p1, Lg/a/n0;->b:Lg/a/z0/o;

    if-ne v0, p1, :cond_11

    goto :goto_6

    .line 18
    :cond_11
    sget-object p1, Lg/a/n0;->d:Lg/a/z0/o;

    if-ne v0, p1, :cond_12

    goto :goto_7

    .line 19
    :cond_12
    invoke-virtual {p0, v0}, Lg/a/m0;->g(Ljava/lang/Object;)V

    goto :goto_6

    :goto_7
    return v1
.end method

.method public minusKey(Lf/k/f$b;)Lf/k/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/k/f$b<",
            "*>;)",
            "Lf/k/f;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lf/k/f$a$a;->c(Lf/k/f$a;Lf/k/f$b;)Lf/k/f;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Throwable;)Z
    .locals 4

    invoke-virtual {p0}, Lg/a/m0;->w()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 1
    iget-object v2, p0, Lg/a/m0;->_parentHandle:Ljava/lang/Object;

    check-cast v2, Lg/a/e;

    if-eqz v2, :cond_4

    .line 2
    sget-object v3, Lg/a/q0;->e:Lg/a/q0;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, p1}, Lg/a/e;->e(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public final p(Lg/a/e0;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lg/a/m0;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lg/a/e;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lg/a/v;->d()V

    sget-object v0, Lg/a/q0;->e:Lg/a/q0;

    .line 3
    iput-object v0, p0, Lg/a/m0;->_parentHandle:Ljava/lang/Object;

    .line 4
    :goto_0
    instance-of v0, p2, Lg/a/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lg/a/i;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_2

    :cond_2
    iget-object p2, p2, Lg/a/i;->a:Ljava/lang/Throwable;

    :goto_2
    instance-of v0, p1, Lg/a/l0;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lg/a/l0;

    invoke-virtual {v0, p2}, Lg/a/k;->l(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p2

    new-instance v0, Lg/a/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lg/a/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lg/a/m0;->v(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_3
    invoke-interface {p1}, Lg/a/e0;->f()Lg/a/p0;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_6

    .line 5
    :cond_4
    invoke-virtual {p1}, Lg/a/z0/h;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/z0/h;

    move-object v4, v1

    :goto_3
    invoke-static {v0, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    instance-of v5, v0, Lg/a/l0;

    if-eqz v5, :cond_6

    move-object v5, v0

    check-cast v5, Lg/a/l0;

    :try_start_1
    invoke-virtual {v5, p2}, Lg/a/k;->l(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v6

    if-nez v4, :cond_5

    move-object v7, v1

    goto :goto_4

    :cond_5
    invoke-static {v4, v6}, Ld/b/k/m$i;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v7, v4

    :goto_4
    if-nez v7, :cond_6

    new-instance v4, Lg/a/l;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lg/a/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    invoke-virtual {v0}, Lg/a/z0/h;->i()Lg/a/z0/h;

    move-result-object v0

    goto :goto_3

    :cond_7
    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v4}, Lg/a/m0;->v(Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    new-instance v0, Lg/a/j0;

    .line 1
    invoke-virtual {p0}, Lg/a/m0;->o()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1, p1, p0}, Lg/a/j0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/a/i0;)V

    move-object p1, v0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    check-cast p1, Lg/a/r0;

    invoke-interface {p1}, Lg/a/r0;->h()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Lg/a/m0$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lg/a/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/a/i;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lg/a/i;->a:Ljava/lang/Throwable;

    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lg/a/m0$b;->d()Z

    move-result v2

    invoke-virtual {p1, v0}, Lg/a/m0$b;->g(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    .line 1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lg/a/m0$b;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lg/a/j0;

    .line 2
    invoke-virtual {p0}, Lg/a/m0;->o()Ljava/lang/String;

    move-result-object v7

    .line 3
    invoke-direct {v4, v7, v1, p0}, Lg/a/j0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/a/i0;)V

    move-object v1, v4

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Throwable;

    instance-of v8, v8, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v8, v5

    if-eqz v8, :cond_3

    move-object v1, v7

    :cond_4
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    :cond_6
    :goto_2
    if-eqz v1, :cond_9

    .line 4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v7}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eq v7, v1, :cond_8

    if-eq v7, v1, :cond_8

    instance-of v8, v7, Ljava/util/concurrent/CancellationException;

    if-nez v8, :cond_8

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v1, v7}, Ld/b/k/m$i;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 5
    :cond_9
    :goto_4
    monitor-exit p1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    if-ne v1, v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p2, Lg/a/i;

    const/4 v0, 0x2

    invoke-direct {p2, v1, v6, v0}, Lg/a/i;-><init>(Ljava/lang/Throwable;ZI)V

    :goto_5
    if-eqz v1, :cond_f

    invoke-virtual {p0, v1}, Lg/a/m0;->n(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lg/a/m0;->u()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_f

    if-eqz p2, :cond_e

    move-object v0, p2

    check-cast v0, Lg/a/i;

    .line 6
    sget-object v1, Lg/a/i;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    goto :goto_8

    .line 7
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_8
    if-nez v2, :cond_10

    invoke-virtual {p0}, Lg/a/m0;->A()V

    :cond_10
    invoke-virtual {p0, p2}, Lg/a/m0;->B(Ljava/lang/Object;)V

    sget-object v0, Lg/a/m0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    instance-of v1, p2, Lg/a/e0;

    if-eqz v1, :cond_11

    new-instance v1, Lg/a/f0;

    move-object v2, p2

    check-cast v2, Lg/a/e0;

    invoke-direct {v1, v2}, Lg/a/f0;-><init>(Lg/a/e0;)V

    goto :goto_9

    :cond_11
    move-object v1, p2

    .line 9
    :goto_9
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lg/a/m0;->p(Lg/a/e0;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final s(Lg/a/e0;)Lg/a/p0;
    .locals 1

    invoke-interface {p1}, Lg/a/e0;->f()Lg/a/p0;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lg/a/w;

    if-eqz v0, :cond_0

    new-instance v0, Lg/a/p0;

    invoke-direct {v0}, Lg/a/p0;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/a/l0;

    if-eqz v0, :cond_1

    check-cast p1, Lg/a/l0;

    invoke-virtual {p0, p1}, Lg/a/m0;->C(Lg/a/l0;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "State should have list: "

    invoke-static {v0, p1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final t()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, Lg/a/m0;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lg/a/z0/l;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lg/a/z0/l;

    invoke-virtual {v0, p0}, Lg/a/z0/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/a/m0;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/a/m0;->t()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lg/a/m0;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ld/b/k/m$i;->a0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0

    throw p1
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y(Lg/a/z0/h;)Lg/a/f;
    .locals 1

    :goto_0
    invoke-virtual {p1}, Lg/a/z0/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/a/z0/h;->j()Lg/a/z0/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lg/a/z0/h;->i()Lg/a/z0/h;

    move-result-object p1

    invoke-virtual {p1}, Lg/a/z0/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lg/a/f;

    if-eqz v0, :cond_2

    check-cast p1, Lg/a/f;

    return-object p1

    :cond_2
    instance-of v0, p1, Lg/a/p0;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final z(Lg/a/p0;Ljava/lang/Throwable;)V
    .locals 7

    invoke-virtual {p0}, Lg/a/m0;->A()V

    invoke-virtual {p1}, Lg/a/z0/h;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/z0/h;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-static {v0, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v0, Lg/a/k0;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lg/a/l0;

    :try_start_0
    invoke-virtual {v3, p2}, Lg/a/k;->l(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    if-nez v2, :cond_0

    move-object v5, v1

    goto :goto_1

    :cond_0
    invoke-static {v2, v4}, Ld/b/k/m$i;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_1
    if-nez v5, :cond_1

    new-instance v2, Lg/a/l;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lg/a/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lg/a/z0/h;->i()Lg/a/z0/h;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Lg/a/m0;->v(Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {p0, p2}, Lg/a/m0;->n(Ljava/lang/Throwable;)Z

    return-void
.end method
