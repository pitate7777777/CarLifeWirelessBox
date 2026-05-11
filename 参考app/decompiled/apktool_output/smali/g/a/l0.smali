.class public abstract Lg/a/l0;
.super Lg/a/k;
.source ""

# interfaces
.implements Lg/a/v;
.implements Lg/a/e0;


# instance fields
.field public h:Lg/a/m0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 4

    invoke-virtual {p0}, Lg/a/l0;->m()Lg/a/m0;

    move-result-object v0

    .line 1
    :cond_0
    invoke-virtual {v0}, Lg/a/m0;->t()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lg/a/l0;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lg/a/m0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    sget-object v3, Lg/a/n0;->f:Lg/a/w;

    .line 3
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    instance-of v0, v1, Lg/a/e0;

    if-eqz v0, :cond_7

    check-cast v1, Lg/a/e0;

    invoke-interface {v1}, Lg/a/e0;->f()Lg/a/p0;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4
    :cond_3
    invoke-virtual {p0}, Lg/a/z0/h;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/a/z0/m;

    if-eqz v1, :cond_4

    check-cast v0, Lg/a/z0/m;

    iget-object v0, v0, Lg/a/z0/m;->a:Lg/a/z0/h;

    goto :goto_0

    :cond_4
    if-ne v0, p0, :cond_5

    check-cast v0, Lg/a/z0/h;

    goto :goto_0

    :cond_5
    move-object v1, v0

    check-cast v1, Lg/a/z0/h;

    .line 5
    iget-object v2, v1, Lg/a/z0/h;->_removedRef:Ljava/lang/Object;

    check-cast v2, Lg/a/z0/m;

    if-nez v2, :cond_6

    new-instance v2, Lg/a/z0/m;

    invoke-direct {v2, v1}, Lg/a/z0/m;-><init>(Lg/a/z0/h;)V

    sget-object v3, Lg/a/z0/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    :cond_6
    sget-object v3, Lg/a/z0/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lg/a/z0/h;->a(Lg/a/z0/l;)Lg/a/z0/h;

    :cond_7
    :goto_0
    return-void
.end method

.method public f()Lg/a/p0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Lg/a/m0;
    .locals 1

    iget-object v0, p0, Lg/a/l0;->h:Lg/a/m0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ld/b/k/m$i;->a0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/a/l0;->m()Lg/a/m0;

    move-result-object v1

    invoke-static {v1}, Ld/b/k/m$i;->a0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
