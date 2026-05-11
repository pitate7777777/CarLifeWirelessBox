.class public final Lg/a/a1/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lg/a/a1/i;",
            ">;"
        }
    .end annotation
.end field

.field public volatile synthetic blockingTasksInBuffer:I

.field public volatile synthetic consumerIndex:I

.field public volatile synthetic lastScheduledTask:Ljava/lang/Object;

.field public volatile synthetic producerIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lg/a/a1/m;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lg/a/a1/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lg/a/a1/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lg/a/a1/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "blockingTasksInBuffer"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/a/a1/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lg/a/a1/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/a/a1/m;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lg/a/a1/m;->producerIndex:I

    iput v0, p0, Lg/a/a1/m;->consumerIndex:I

    iput v0, p0, Lg/a/a1/m;->blockingTasksInBuffer:I

    return-void
.end method


# virtual methods
.method public final a(Lg/a/a1/i;Z)Lg/a/a1/i;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lg/a/a1/m;->b(Lg/a/a1/i;)Lg/a/a1/i;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lg/a/a1/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/a1/i;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lg/a/a1/m;->b(Lg/a/a1/i;)Lg/a/a1/i;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lg/a/a1/i;)Lg/a/a1/i;
    .locals 2

    iget-object v0, p1, Lg/a/a1/i;->f:Lg/a/a1/j;

    invoke-interface {v0}, Lg/a/a1/j;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v0, Lg/a/a1/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    :cond_1
    invoke-virtual {p0}, Lg/a/a1/m;->c()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_2

    return-object p1

    :cond_2
    iget v0, p0, Lg/a/a1/m;->producerIndex:I

    and-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Lg/a/a1/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lg/a/a1/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    sget-object p1, Lg/a/a1/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lg/a/a1/m;->producerIndex:I

    iget v1, p0, Lg/a/a1/m;->consumerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lg/a/a1/m;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/a/a1/m;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/a/a1/m;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final e()Lg/a/a1/i;
    .locals 2

    sget-object v0, Lg/a/a1/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a1/i;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/a/a1/m;->f()Lg/a/a1/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final f()Lg/a/a1/i;
    .locals 5

    :cond_0
    :goto_0
    iget v0, p0, Lg/a/a1/m;->consumerIndex:I

    iget v1, p0, Lg/a/a1/m;->producerIndex:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    sget-object v3, Lg/a/a1/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a/a1/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a1/i;

    if-nez v0, :cond_2

    goto :goto_0

    .line 1
    :cond_2
    iget-object v1, v0, Lg/a/a1/i;->f:Lg/a/a1/j;

    invoke-interface {v1}, Lg/a/a1/j;->n()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    sget-object v1, Lg/a/a1/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_4
    return-object v0
.end method

.method public final g(Lg/a/a1/m;Z)J
    .locals 8

    :cond_0
    iget-object v0, p1, Lg/a/a1/m;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Lg/a/a1/i;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    if-eqz p2, :cond_3

    iget-object v4, v0, Lg/a/a1/i;->f:Lg/a/a1/j;

    invoke-interface {v4}, Lg/a/a1/j;->n()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    return-wide v1

    :cond_3
    sget-object v1, Lg/a/a1/l;->e:Lg/a/a1/h;

    check-cast v1, Lg/a/a1/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 2
    iget-wide v6, v0, Lg/a/a1/i;->e:J

    sub-long/2addr v4, v6

    sget-wide v6, Lg/a/a1/l;->a:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    sub-long/2addr v6, v4

    return-wide v6

    :cond_4
    sget-object v1, Lg/a/a1/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0, v3}, Lg/a/a1/m;->a(Lg/a/a1/i;Z)Lg/a/a1/i;

    const-wide/16 p1, -0x1

    return-wide p1

    .line 4
    :cond_5
    throw v2
.end method
