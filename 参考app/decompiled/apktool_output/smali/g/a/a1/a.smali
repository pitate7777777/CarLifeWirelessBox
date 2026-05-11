.class public final Lg/a/a1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/a1/a$a;,
        Lg/a/a1/a$b;
    }
.end annotation


# static fields
.field public static final synthetic l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final o:Lg/a/z0/o;


# instance fields
.field public volatile synthetic _isTerminated:I

.field public volatile synthetic controlState:J

.field public final e:I

.field public final f:I

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:Lg/a/a1/d;

.field public final j:Lg/a/a1/d;

.field public final k:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lg/a/a1/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile synthetic parkedWorkersStack:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/a/z0/o;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/a1/a;->o:Lg/a/z0/o;

    const-class v0, Lg/a/a1/a;

    const-string v1, "parkedWorkersStack"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/a/a1/a;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lg/a/a1/a;

    const-string v1, "controlState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/a/a1/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lg/a/a1/a;

    const-string v1, "_isTerminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/a/a1/a;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/a/a1/a;->e:I

    iput p2, p0, Lg/a/a1/a;->f:I

    iput-wide p3, p0, Lg/a/a1/a;->g:J

    iput-object p5, p0, Lg/a/a1/a;->h:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    iget p1, p0, Lg/a/a1/a;->f:I

    iget p4, p0, Lg/a/a1/a;->e:I

    if-lt p1, p4, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string p4, "Max pool size "

    if-eqz p1, :cond_6

    iget p1, p0, Lg/a/a1/a;->f:I

    const p5, 0x1ffffe

    if-gt p1, p5, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    iget-wide p4, p0, Lg/a/a1/a;->g:J

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    new-instance p1, Lg/a/a1/d;

    invoke-direct {p1}, Lg/a/a1/d;-><init>()V

    iput-object p1, p0, Lg/a/a1/a;->i:Lg/a/a1/d;

    new-instance p1, Lg/a/a1/d;

    invoke-direct {p1}, Lg/a/a1/d;-><init>()V

    iput-object p1, p0, Lg/a/a1/a;->j:Lg/a/a1/d;

    iput-wide v0, p0, Lg/a/a1/a;->parkedWorkersStack:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p4, p0, Lg/a/a1/a;->f:I

    add-int/2addr p4, p2

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p1, p0, Lg/a/a1/a;->e:I

    int-to-long p1, p1

    const/16 p4, 0x2a

    shl-long/2addr p1, p4

    iput-wide p1, p0, Lg/a/a1/a;->controlState:J

    iput p3, p0, Lg/a/a1/a;->_isTerminated:I

    return-void

    :cond_4
    const-string p1, "Idle worker keep alive time "

    invoke-static {p1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide p2, p0, Lg/a/a1/a;->g:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    invoke-static {p4}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lg/a/a1/a;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    invoke-static {p4}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lg/a/a1/a;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lg/a/a1/a;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const-string p1, "Core pool size "

    invoke-static {p1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lg/a/a1/a;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be at least 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic k(Lg/a/a1/a;Ljava/lang/Runnable;Lg/a/a1/j;ZI)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    if-eqz p2, :cond_0

    sget-object p2, Lg/a/a1/g;->e:Lg/a/a1/g;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lg/a/a1/a;->j(Ljava/lang/Runnable;Lg/a/a1/j;Z)V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 10

    iget-object v0, p0, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    monitor-enter v0

    .line 1
    :try_start_0
    iget v1, p0, Lg/a/a1/a;->_isTerminated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 2
    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lg/a/a1/a;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    long-to-int v6, v5

    const-wide v7, 0x3ffffe00000L

    and-long/2addr v1, v7

    const/16 v5, 0x15

    shr-long/2addr v1, v5

    long-to-int v2, v1

    sub-int v1, v6, v2

    const/4 v2, 0x0

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget v5, p0, Lg/a/a1/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v5, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    :try_start_2
    iget v5, p0, Lg/a/a1/a;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v6, v5, :cond_3

    monitor-exit v0

    return v2

    :cond_3
    :try_start_3
    iget-wide v5, p0, Lg/a/a1/a;->controlState:J

    and-long/2addr v5, v3

    long-to-int v6, v5

    const/4 v5, 0x1

    add-int/2addr v6, v5

    if-lez v6, :cond_4

    iget-object v7, p0, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_7

    new-instance v7, Lg/a/a1/a$a;

    invoke-direct {v7, p0, v6}, Lg/a/a1/a$a;-><init>(Lg/a/a1/a;I)V

    iget-object v8, p0, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    sget-object v8, Lg/a/a1/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int v4, v3

    if-ne v6, v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    add-int/2addr v1, v5

    goto :goto_0

    :cond_6
    const-string v1, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string v1, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public close()V
    .locals 10

    .line 1
    sget-object v0, Lg/a/a1/a;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Lg/a/a1/a;->i()Lg/a/a1/a$a;

    move-result-object v0

    iget-object v3, p0, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    monitor-enter v3

    :try_start_0
    iget-wide v4, p0, Lg/a/a1/a;->controlState:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v5, v4

    monitor-exit v3

    const/4 v4, 0x0

    if-gt v2, v5, :cond_7

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/a/a1/a$a;

    invoke-static {v7}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    if-eq v7, v0, :cond_5

    :goto_1
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Ljava/lang/Thread;->join(J)V

    goto :goto_1

    :cond_1
    iget-object v7, v7, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    iget-object v8, p0, Lg/a/a1/a;->j:Lg/a/a1/d;

    if-eqz v7, :cond_4

    .line 2
    sget-object v9, Lg/a/a1/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v9, v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/a/a1/i;

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v9}, Lg/a/z0/i;->a(Ljava/lang/Object;)Z

    .line 3
    :goto_2
    invoke-virtual {v7}, Lg/a/a1/m;->f()Lg/a/a1/i;

    move-result-object v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v8, v9}, Lg/a/z0/i;->a(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_5

    goto :goto_2

    .line 4
    :cond_4
    throw v4

    :cond_5
    if-ne v3, v5, :cond_6

    goto :goto_4

    :cond_6
    move v3, v6

    goto :goto_0

    .line 5
    :cond_7
    :goto_4
    iget-object v1, p0, Lg/a/a1/a;->j:Lg/a/a1/d;

    invoke-virtual {v1}, Lg/a/z0/i;->b()V

    iget-object v1, p0, Lg/a/a1/a;->i:Lg/a/a1/d;

    invoke-virtual {v1}, Lg/a/z0/i;->b()V

    :goto_5
    if-nez v0, :cond_8

    move-object v1, v4

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v2}, Lg/a/a1/a$a;->a(Z)Lg/a/a1/i;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_9

    iget-object v1, p0, Lg/a/a1/a;->i:Lg/a/a1/d;

    invoke-virtual {v1}, Lg/a/z0/i;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/a1/i;

    :cond_9
    if-nez v1, :cond_b

    iget-object v1, p0, Lg/a/a1/a;->j:Lg/a/a1/d;

    invoke-virtual {v1}, Lg/a/z0/i;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/a1/i;

    if-nez v1, :cond_b

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    sget-object v1, Lg/a/a1/a$b;->i:Lg/a/a1/a$b;

    invoke-virtual {v0, v1}, Lg/a/a1/a$a;->e(Lg/a/a1/a$b;)Z

    :goto_7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/a/a1/a;->parkedWorkersStack:J

    iput-wide v0, p0, Lg/a/a1/a;->controlState:J

    :goto_8
    return-void

    :cond_b
    invoke-virtual {p0, v1}, Lg/a/a1/a;->q(Lg/a/a1/i;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Lg/a/a1/g;->e:Lg/a/a1/g;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lg/a/a1/a;->j(Ljava/lang/Runnable;Lg/a/a1/j;Z)V

    return-void
.end method

.method public final h(Ljava/lang/Runnable;Lg/a/a1/j;)Lg/a/a1/i;
    .locals 3

    sget-object v0, Lg/a/a1/l;->e:Lg/a/a1/h;

    check-cast v0, Lg/a/a1/f;

    if-eqz v0, :cond_1

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    instance-of v2, p1, Lg/a/a1/i;

    if-eqz v2, :cond_0

    check-cast p1, Lg/a/a1/i;

    iput-wide v0, p1, Lg/a/a1/i;->e:J

    iput-object p2, p1, Lg/a/a1/i;->f:Lg/a/a1/j;

    return-object p1

    :cond_0
    new-instance v2, Lg/a/a1/k;

    invoke-direct {v2, p1, v0, v1, p2}, Lg/a/a1/k;-><init>(Ljava/lang/Runnable;JLg/a/a1/j;)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final i()Lg/a/a1/a$a;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lg/a/a1/a$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lg/a/a1/a$a;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    invoke-static {v1, p0}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, v0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public final j(Ljava/lang/Runnable;Lg/a/a1/j;Z)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lg/a/a1/a;->h(Ljava/lang/Runnable;Lg/a/a1/j;)Lg/a/a1/i;

    move-result-object p1

    invoke-virtual {p0}, Lg/a/a1/a;->i()Lg/a/a1/a$a;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 1
    :cond_0
    iget-object v1, p2, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    sget-object v2, Lg/a/a1/a$b;->i:Lg/a/a1/a$b;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lg/a/a1/i;->f:Lg/a/a1/j;

    invoke-interface {v1}, Lg/a/a1/j;->n()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p2, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    sget-object v2, Lg/a/a1/a$b;->f:Lg/a/a1/a$b;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v0, p2, Lg/a/a1/a$a;->j:Z

    iget-object v1, p2, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    invoke-virtual {v1, p1, p3}, Lg/a/a1/m;->a(Lg/a/a1/i;Z)Lg/a/a1/i;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    iget-object v3, v1, Lg/a/a1/i;->f:Lg/a/a1/j;

    invoke-interface {v3}, Lg/a/a1/j;->n()I

    move-result v3

    if-ne v3, v0, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    iget-object v3, p0, Lg/a/a1/a;->j:Lg/a/a1/d;

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lg/a/a1/a;->i:Lg/a/a1/d;

    :goto_3
    invoke-virtual {v3, v1}, Lg/a/z0/i;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 3
    :cond_5
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    iget-object p2, p0, Lg/a/a1/a;->h:Ljava/lang/String;

    const-string p3, " was terminated"

    invoke-static {p2, p3}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_4
    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    iget-object p1, p1, Lg/a/a1/i;->f:Lg/a/a1/j;

    invoke-interface {p1}, Lg/a/a1/j;->n()I

    move-result p1

    if-nez p1, :cond_9

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Lg/a/a1/a;->s()V

    goto :goto_6

    .line 4
    :cond_9
    sget-object p1, Lg/a/a1/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 p2, 0x200000

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lg/a/a1/a;->u()Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p1, p2}, Lg/a/a1/a;->t(J)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lg/a/a1/a;->u()Z

    :goto_6
    return-void
.end method

.method public final m(Lg/a/a1/a$a;)I
    .locals 1

    .line 1
    :cond_0
    iget-object p1, p1, Lg/a/a1/a$a;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    sget-object v0, Lg/a/a1/a;->o:Lg/a/z0/o;

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    check-cast p1, Lg/a/a1/a$a;

    .line 3
    iget v0, p1, Lg/a/a1/a$a;->indexInArray:I

    if-eqz v0, :cond_0

    return v0
.end method

.method public final n(Lg/a/a1/a$a;II)V
    .locals 8

    :cond_0
    :goto_0
    iget-wide v2, p0, Lg/a/a1/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v1, p2, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {p0, p1}, Lg/a/a1/a;->m(Lg/a/a1/a$a;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p3

    :cond_2
    :goto_1
    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lg/a/a1/a;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v1

    or-long/2addr v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final q(Lg/a/a1/i;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Lg/a/a1/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-wide v0, p0, Lg/a/a1/a;->controlState:J

    invoke-virtual {p0, v0, v1}, Lg/a/a1/a;->t(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lg/a/a1/a;->u()Z

    return-void
.end method

.method public final t(J)Z
    .locals 4

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v1, v0

    const-wide v2, 0x3ffffe00000L

    and-long/2addr p1, v2

    const/16 v0, 0x15

    shr-long/2addr p1, v0

    long-to-int p2, p1

    sub-int/2addr v1, p2

    const/4 p1, 0x0

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget p2, p0, Lg/a/a1/a;->e:I

    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Lg/a/a1/a;->c()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget v1, p0, Lg/a/a1/a;->e:I

    if-le v1, v0, :cond_1

    invoke-virtual {p0}, Lg/a/a1/a;->c()I

    :cond_1
    if-lez p2, :cond_2

    return v0

    :cond_2
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v3, v1, :cond_8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    add-int/lit8 v9, v8, 0x1

    iget-object v10, p0, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/a/a1/a$a;

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    iget-object v10, v8, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    invoke-virtual {v10}, Lg/a/a1/m;->d()I

    move-result v10

    iget-object v8, v8, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_5

    if-eq v8, v3, :cond_4

    const/4 v11, 0x2

    if-eq v8, v11, :cond_3

    const/4 v11, 0x3

    if-eq v8, v11, :cond_2

    const/4 v10, 0x4

    if-eq v8, v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    if-lez v10, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x62

    :goto_1
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x63

    goto :goto_1

    :cond_6
    :goto_2
    if-lt v9, v1, :cond_7

    move v1, v2

    move v2, v5

    goto :goto_3

    :cond_7
    move v8, v9

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    iget-wide v8, p0, Lg/a/a1/a;->controlState:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lg/a/a1/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ld/b/k/m$i;->a0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[Pool Size {core = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lg/a/a1/a;->e:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", max = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lg/a/a1/a;->f:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "}, Worker States {CPU = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocking = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parked = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dormant = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", terminated = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}, running workers queues = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", global CPU queue size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg/a/a1/a;->i:Lg/a/a1/d;

    invoke-virtual {v0}, Lg/a/z0/i;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", global blocking queue size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg/a/a1/a;->j:Lg/a/a1/d;

    invoke-virtual {v0}, Lg/a/z0/i;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Control State {created workers= "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v8

    long-to-int v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blocking tasks = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v0, 0x3ffffe00000L

    and-long/2addr v0, v8

    const/16 v2, 0x15

    shr-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", CPUs acquired = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/a/a1/a;->e:I

    const-wide v1, 0x7ffffc0000000000L

    and-long/2addr v1, v8

    const/16 v4, 0x2a

    shr-long/2addr v1, v4

    long-to-int v2, v1

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 9

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Lg/a/a1/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lg/a/a1/a$a;

    if-nez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const-wide/32 v0, 0x200000

    add-long/2addr v0, v2

    const-wide/32 v4, -0x200000

    and-long/2addr v0, v4

    invoke-virtual {p0, v6}, Lg/a/a1/a;->m(Lg/a/a1/a$a;)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    sget-object v5, Lg/a/a1/a;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v4

    or-long/2addr v7, v0

    move-object v0, v5

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/a/a1/a;->o:Lg/a/z0/o;

    .line 2
    iput-object v0, v6, Lg/a/a1/a$a;->nextParkedWorker:Ljava/lang/Object;

    :goto_1
    const/4 v0, 0x0

    if-nez v6, :cond_3

    return v0

    .line 3
    :cond_3
    sget-object v1, Lg/a/a1/a$a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    invoke-virtual {v1, v6, v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    return v0
.end method
