.class public final Lg/a/a1/a$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/a1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final e:Lg/a/a1/m;

.field public f:Lg/a/a1/a$b;

.field public g:J

.field public h:J

.field public i:I

.field public volatile indexInArray:I

.field public j:Z

.field public final synthetic k:Lg/a/a1/a;

.field public volatile nextParkedWorker:Ljava/lang/Object;

.field public volatile synthetic workerCtl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/a/a1/a$a;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/a/a1/a$a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lg/a/a1/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    .line 1
    iput-object p1, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Lg/a/a1/m;

    invoke-direct {p1}, Lg/a/a1/m;-><init>()V

    iput-object p1, p0, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    sget-object p1, Lg/a/a1/a$b;->h:Lg/a/a1/a$b;

    iput-object p1, p0, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    const/4 p1, 0x0

    iput p1, p0, Lg/a/a1/a$a;->workerCtl:I

    sget-object p1, Lg/a/a1/a;->o:Lg/a/z0/o;

    iput-object p1, p0, Lg/a/a1/a$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lf/n/c;->f:Lf/n/c$a;

    .line 2
    sget-object p1, Lf/n/c;->e:Lf/n/c;

    .line 3
    invoke-virtual {p1}, Lf/n/c;->a()I

    move-result p1

    .line 4
    iput p1, p0, Lg/a/a1/a$a;->i:I

    .line 5
    invoke-virtual {p0, p2}, Lg/a/a1/a$a;->d(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lg/a/a1/i;
    .locals 10

    .line 1
    sget-object v0, Lg/a/a1/a$b;->e:Lg/a/a1/a$b;

    iget-object v1, p0, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    :cond_1
    iget-wide v6, v1, Lg/a/a1/a;->controlState:J

    const-wide v4, 0x7ffffc0000000000L

    and-long/2addr v4, v6

    const/16 v8, 0x2a

    shr-long/2addr v4, v8

    long-to-int v5, v4

    if-nez v5, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-wide v4, 0x40000000000L

    sub-long v8, v6, v4

    sget-object v4, Lg/a/a1/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    iput-object v0, p0, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_9

    if-eqz p1, :cond_6

    .line 2
    iget-object p1, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget p1, p1, Lg/a/a1/a;->e:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg/a/a1/a$a;->b(I)I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lg/a/a1/a$a;->c()Lg/a/a1/i;

    move-result-object p1

    if-nez p1, :cond_8

    :cond_5
    iget-object p1, p0, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    invoke-virtual {p1}, Lg/a/a1/m;->e()Lg/a/a1/i;

    move-result-object p1

    if-nez p1, :cond_8

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lg/a/a1/a$a;->c()Lg/a/a1/i;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lg/a/a1/a$a;->c()Lg/a/a1/i;

    move-result-object p1

    if-nez p1, :cond_8

    :cond_7
    :goto_4
    invoke-virtual {p0, v3}, Lg/a/a1/a$a;->f(Z)Lg/a/a1/i;

    move-result-object p1

    :cond_8
    return-object p1

    :cond_9
    if-eqz p1, :cond_a

    .line 3
    iget-object p1, p0, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    invoke-virtual {p1}, Lg/a/a1/m;->e()Lg/a/a1/i;

    move-result-object p1

    if-nez p1, :cond_b

    :cond_a
    iget-object p1, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget-object p1, p1, Lg/a/a1/a;->j:Lg/a/a1/d;

    invoke-virtual {p1}, Lg/a/z0/i;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/a1/i;

    :cond_b
    if-nez p1, :cond_c

    invoke-virtual {p0, v2}, Lg/a/a1/a$a;->f(Z)Lg/a/a1/i;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public final b(I)I
    .locals 3

    iget v0, p0, Lg/a/a1/a$a;->i:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lg/a/a1/a$a;->i:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final c()Lg/a/a1/i;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lg/a/a1/a$a;->b(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget-object v0, v0, Lg/a/a1/a;->i:Lg/a/a1/d;

    invoke-virtual {v0}, Lg/a/z0/i;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a1/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget-object v0, v0, Lg/a/a1/a;->j:Lg/a/a1/d;

    :goto_0
    invoke-virtual {v0}, Lg/a/z0/i;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a1/i;

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget-object v0, v0, Lg/a/a1/a;->j:Lg/a/a1/d;

    invoke-virtual {v0}, Lg/a/z0/i;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a1/i;

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget-object v0, v0, Lg/a/a1/a;->i:Lg/a/a1/d;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final d(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget-object v1, v1, Lg/a/a1/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lg/a/a1/a$a;->indexInArray:I

    return-void
.end method

.method public final e(Lg/a/a1/a$b;)Z
    .locals 6

    iget-object v0, p0, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    sget-object v1, Lg/a/a1/a$b;->e:Lg/a/a1/a$b;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    sget-object v3, Lg/a/a1/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    :cond_2
    return v1
.end method

.method public final f(Z)Lg/a/a1/i;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget-wide v1, v1, Lg/a/a1/a;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v2, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, v2}, Lg/a/a1/a$a;->b(I)I

    move-result v1

    iget-object v4, v0, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    :goto_0
    if-ge v8, v2, :cond_d

    const/4 v13, 0x1

    add-int/2addr v1, v13

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v14, v4, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v14, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/a/a1/a$a;

    if-eqz v14, :cond_b

    if-eq v14, v0, :cond_b

    if-eqz p1, :cond_7

    iget-object v5, v0, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    iget-object v6, v14, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    if-eqz v5, :cond_6

    .line 1
    iget v14, v6, Lg/a/a1/m;->consumerIndex:I

    iget v11, v6, Lg/a/a1/m;->producerIndex:I

    iget-object v12, v6, Lg/a/a1/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_1
    if-eq v14, v11, :cond_5

    and-int/lit8 v15, v14, 0x7f

    iget v7, v6, Lg/a/a1/m;->blockingTasksInBuffer:I

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v12, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/a/a1/i;

    if-eqz v7, :cond_4

    iget-object v3, v7, Lg/a/a1/i;->f:Lg/a/a1/j;

    invoke-interface {v3}, Lg/a/a1/j;->n()I

    move-result v3

    if-ne v3, v13, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v12, v15, v7, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    sget-object v3, Lg/a/a1/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v5, v7, v3}, Lg/a/a1/m;->a(Lg/a/a1/i;Z)Lg/a/a1/i;

    const-wide/16 v5, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 3
    :cond_5
    :goto_3
    invoke-virtual {v5, v6, v13}, Lg/a/a1/m;->g(Lg/a/a1/m;Z)J

    move-result-wide v5

    :goto_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    throw v3

    .line 4
    :cond_7
    iget-object v3, v0, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    iget-object v5, v14, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    if-eqz v3, :cond_a

    .line 5
    invoke-virtual {v5}, Lg/a/a1/m;->f()Lg/a/a1/i;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    .line 6
    invoke-virtual {v3, v6, v7}, Lg/a/a1/m;->a(Lg/a/a1/i;Z)Lg/a/a1/i;

    const-wide/16 v5, -0x1

    goto :goto_5

    .line 7
    :cond_8
    invoke-virtual {v3, v5, v7}, Lg/a/a1/m;->g(Lg/a/a1/m;Z)J

    move-result-wide v5

    :goto_5
    const-wide/16 v11, -0x1

    cmp-long v3, v5, v11

    if-nez v3, :cond_9

    .line 8
    iget-object v1, v0, Lg/a/a1/a$a;->e:Lg/a/a1/m;

    invoke-virtual {v1}, Lg/a/a1/m;->e()Lg/a/a1/i;

    move-result-object v1

    return-object v1

    :cond_9
    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-lez v3, :cond_c

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 9
    throw v3

    :cond_b
    const/4 v7, 0x0

    :cond_c
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_d
    const-wide v5, 0x7fffffffffffffffL

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v5

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    move-wide v9, v11

    .line 10
    :goto_7
    iput-wide v9, v0, Lg/a/a1/a$a;->h:J

    const/4 v1, 0x0

    return-object v1
.end method

.method public run()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Lg/a/a1/a$b;->g:Lg/a/a1/a$b;

    sget-object v2, Lg/a/a1/a$b;->i:Lg/a/a1/a$b;

    :cond_0
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, v1, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    .line 2
    iget v6, v6, Lg/a/a1/a;->_isTerminated:I

    if-nez v6, :cond_16

    .line 3
    iget-object v6, v1, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    if-eq v6, v2, :cond_16

    iget-boolean v6, v1, Lg/a/a1/a$a;->j:Z

    invoke-virtual {v1, v6}, Lg/a/a1/a$a;->a(Z)Lg/a/a1/i;

    move-result-object v6

    const-wide/16 v7, 0x0

    const-wide/32 v9, -0x200000

    if-eqz v6, :cond_5

    iput-wide v7, v1, Lg/a/a1/a$a;->h:J

    .line 4
    sget-object v3, Lg/a/a1/a$b;->f:Lg/a/a1/a$b;

    iget-object v4, v6, Lg/a/a1/i;->f:Lg/a/a1/j;

    invoke-interface {v4}, Lg/a/a1/j;->n()I

    move-result v4

    .line 5
    iput-wide v7, v1, Lg/a/a1/a$a;->g:J

    iget-object v5, v1, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    if-ne v5, v0, :cond_1

    iput-object v3, v1, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    :cond_1
    if-nez v4, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v1, v3}, Lg/a/a1/a$a;->e(Lg/a/a1/a$b;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    invoke-virtual {v3}, Lg/a/a1/a;->s()V

    .line 7
    :cond_3
    :goto_2
    iget-object v3, v1, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    invoke-virtual {v3, v6}, Lg/a/a1/a;->q(Lg/a/a1/i;)V

    if-nez v4, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget-object v3, v1, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    sget-object v4, Lg/a/a1/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, v3, v9, v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object v3, v1, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    if-eq v3, v2, :cond_0

    sget-object v3, Lg/a/a1/a$b;->h:Lg/a/a1/a$b;

    iput-object v3, v1, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    goto :goto_0

    .line 9
    :cond_5
    iput-boolean v4, v1, Lg/a/a1/a$a;->j:Z

    iget-wide v11, v1, Lg/a/a1/a$a;->h:J

    cmp-long v6, v11, v7

    if-eqz v6, :cond_7

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v0}, Lg/a/a1/a$a;->e(Lg/a/a1/a$b;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v3, v1, Lg/a/a1/a$a;->h:J

    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v7, v1, Lg/a/a1/a$a;->h:J

    goto :goto_0

    .line 10
    :cond_7
    iget-object v6, v1, Lg/a/a1/a$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v11, Lg/a/a1/a;->o:Lg/a/z0/o;

    if-eq v6, v11, :cond_8

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    const-wide/32 v11, 0x1fffff

    const/4 v13, 0x0

    if-nez v6, :cond_c

    .line 11
    iget-object v6, v1, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    if-eqz v6, :cond_b

    .line 12
    iget-object v7, v1, Lg/a/a1/a$a;->nextParkedWorker:Ljava/lang/Object;

    .line 13
    sget-object v8, Lg/a/a1/a;->o:Lg/a/z0/o;

    if-eq v7, v8, :cond_9

    goto/16 :goto_9

    :cond_9
    :goto_4
    iget-wide v7, v6, Lg/a/a1/a;->parkedWorkersStack:J

    and-long v13, v7, v11

    long-to-int v14, v13

    const-wide/32 v15, 0x200000

    add-long/2addr v15, v7

    and-long/2addr v15, v9

    .line 14
    iget v13, v1, Lg/a/a1/a$a;->indexInArray:I

    .line 15
    iget-object v9, v6, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 16
    iput-object v9, v1, Lg/a/a1/a$a;->nextParkedWorker:Ljava/lang/Object;

    .line 17
    sget-object v14, Lg/a/a1/a;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v9, v13

    or-long v18, v15, v9

    move-object v15, v6

    move-wide/from16 v16, v7

    invoke-virtual/range {v14 .. v19}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v7

    if-eqz v7, :cond_a

    goto/16 :goto_9

    :cond_a
    const-wide/32 v9, -0x200000

    goto :goto_4

    .line 18
    :cond_b
    throw v13

    :cond_c
    const/4 v6, -0x1

    .line 19
    iput v6, v1, Lg/a/a1/a$a;->workerCtl:I

    .line 20
    :goto_5
    iget-object v9, v1, Lg/a/a1/a$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v10, Lg/a/a1/a;->o:Lg/a/z0/o;

    if-eq v9, v10, :cond_d

    const/4 v9, 0x1

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_15

    .line 21
    iget v9, v1, Lg/a/a1/a$a;->workerCtl:I

    if-ne v9, v6, :cond_15

    iget-object v9, v1, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    .line 22
    iget v9, v9, Lg/a/a1/a;->_isTerminated:I

    if-nez v9, :cond_15

    .line 23
    iget-object v9, v1, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    if-ne v9, v2, :cond_e

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v1, v0}, Lg/a/a1/a$a;->e(Lg/a/a1/a$b;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 24
    iget-wide v9, v1, Lg/a/a1/a$a;->g:J

    cmp-long v14, v9, v7

    if-nez v14, :cond_f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-object v14, v1, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget-wide v14, v14, Lg/a/a1/a;->g:J

    add-long/2addr v9, v14

    iput-wide v9, v1, Lg/a/a1/a$a;->g:J

    :cond_f
    iget-object v9, v1, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget-wide v9, v9, Lg/a/a1/a;->g:J

    invoke-static {v9, v10}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-wide v14, v1, Lg/a/a1/a$a;->g:J

    sub-long/2addr v9, v14

    cmp-long v14, v9, v7

    if-ltz v14, :cond_14

    iput-wide v7, v1, Lg/a/a1/a$a;->g:J

    .line 25
    iget-object v9, v1, Lg/a/a1/a$a;->k:Lg/a/a1/a;

    iget-object v10, v9, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    monitor-enter v10

    .line 26
    :try_start_0
    iget v14, v9, Lg/a/a1/a;->_isTerminated:I

    if-eqz v14, :cond_10

    goto :goto_7

    .line 27
    :cond_10
    iget-wide v14, v9, Lg/a/a1/a;->controlState:J

    and-long/2addr v14, v11

    long-to-int v15, v14

    iget v14, v9, Lg/a/a1/a;->e:I

    if-gt v15, v14, :cond_11

    goto :goto_7

    :cond_11
    sget-object v14, Lg/a/a1/a$a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v14, v1, v6, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_12

    :goto_7
    monitor-exit v10

    goto :goto_8

    .line 28
    :cond_12
    :try_start_1
    iget v14, v1, Lg/a/a1/a$a;->indexInArray:I

    .line 29
    invoke-virtual {v1, v4}, Lg/a/a1/a$a;->d(I)V

    invoke-virtual {v9, v1, v14, v4}, Lg/a/a1/a;->n(Lg/a/a1/a$a;II)V

    sget-object v15, Lg/a/a1/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v15, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v15

    and-long v3, v15, v11

    long-to-int v4, v3

    if-eq v4, v14, :cond_13

    iget-object v3, v9, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/a/a1/a$a;

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    iget-object v15, v9, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v15, v14, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    invoke-virtual {v3, v14}, Lg/a/a1/a$a;->d(I)V

    invoke-virtual {v9, v3, v4, v14}, Lg/a/a1/a;->n(Lg/a/a1/a$a;II)V

    :cond_13
    iget-object v3, v9, Lg/a/a1/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v4, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    iput-object v2, v1, Lg/a/a1/a$a;->f:Lg/a/a1/a$b;

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_14
    :goto_8
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_15
    :goto_9
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 30
    :cond_16
    invoke-virtual {v1, v2}, Lg/a/a1/a$a;->e(Lg/a/a1/a$b;)Z

    return-void
.end method
