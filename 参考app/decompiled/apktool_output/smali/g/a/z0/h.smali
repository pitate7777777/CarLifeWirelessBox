.class public Lg/a/z0/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/z0/h$a;
    }
.end annotation


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _next:Ljava/lang/Object;

.field public volatile synthetic _prev:Ljava/lang/Object;

.field public volatile synthetic _removedRef:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lg/a/z0/h;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lg/a/z0/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lg/a/z0/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_removedRef"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/a/z0/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lg/a/z0/h;->_next:Ljava/lang/Object;

    iput-object p0, p0, Lg/a/z0/h;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/a/z0/h;->_removedRef:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lg/a/z0/l;)Lg/a/z0/h;
    .locals 6

    :goto_0
    iget-object p1, p0, Lg/a/z0/h;->_prev:Ljava/lang/Object;

    check-cast p1, Lg/a/z0/h;

    const/4 v0, 0x0

    move-object v1, p1

    :goto_1
    move-object v2, v0

    :goto_2
    iget-object v3, v1, Lg/a/z0/h;->_next:Ljava/lang/Object;

    if-ne v3, p0, :cond_2

    if-ne p1, v1, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lg/a/z0/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lg/a/z0/h;->k()Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    instance-of v4, v3, Lg/a/z0/l;

    if-eqz v4, :cond_5

    .line 1
    check-cast v3, Lg/a/z0/l;

    invoke-virtual {v3, v1}, Lg/a/z0/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    instance-of v4, v3, Lg/a/z0/m;

    if-eqz v4, :cond_8

    if-eqz v2, :cond_7

    sget-object v4, Lg/a/z0/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v3, Lg/a/z0/m;

    iget-object v3, v3, Lg/a/z0/m;->a:Lg/a/z0/h;

    invoke-virtual {v4, v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_1

    :cond_7
    iget-object v1, v1, Lg/a/z0/h;->_prev:Ljava/lang/Object;

    check-cast v1, Lg/a/z0/h;

    goto :goto_2

    :cond_8
    move-object v2, v3

    check-cast v2, Lg/a/z0/h;

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2
.end method

.method public final b(Lg/a/z0/h;)V
    .locals 2

    :cond_0
    iget-object v0, p1, Lg/a/z0/h;->_prev:Ljava/lang/Object;

    check-cast v0, Lg/a/z0/h;

    invoke-virtual {p0}, Lg/a/z0/h;->h()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lg/a/z0/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/a/z0/h;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/a/z0/h;->a(Lg/a/z0/l;)Lg/a/z0/h;

    :cond_2
    return-void
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, Lg/a/z0/h;->_next:Ljava/lang/Object;

    instance-of v1, v0, Lg/a/z0/l;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lg/a/z0/l;

    invoke-virtual {v0, p0}, Lg/a/z0/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final i()Lg/a/z0/h;
    .locals 3

    invoke-virtual {p0}, Lg/a/z0/h;->h()Ljava/lang/Object;

    move-result-object v0

    .line 1
    instance-of v1, v0, Lg/a/z0/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lg/a/z0/m;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lg/a/z0/m;->a:Lg/a/z0/h;

    :goto_1
    if-nez v2, :cond_2

    move-object v2, v0

    check-cast v2, Lg/a/z0/h;

    :cond_2
    return-object v2
.end method

.method public final j()Lg/a/z0/h;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/a/z0/h;->a(Lg/a/z0/l;)Lg/a/z0/h;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/a/z0/h;->_prev:Ljava/lang/Object;

    check-cast v0, Lg/a/z0/h;

    .line 1
    :goto_0
    invoke-virtual {v0}, Lg/a/z0/h;->k()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lg/a/z0/h;->_prev:Ljava/lang/Object;

    check-cast v0, Lg/a/z0/h;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Lg/a/z0/h;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lg/a/z0/m;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
