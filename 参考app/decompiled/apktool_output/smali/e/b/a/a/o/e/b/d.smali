.class public final Le/b/a/a/o/e/b/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/o/e/b/d$a;,
        Le/b/a/a/o/e/b/d$b;
    }
.end annotation


# instance fields
.field public final a:Le/b/a/a/c;

.field public final b:I

.field public final c:Z

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Le/b/a/a/o/e/b/d$b;

.field public g:Le/b/a/a/o/e/b/b;


# direct methods
.method public constructor <init>(Le/b/a/a/c;IZLe/b/a/a/o/e/b/d$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p4, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/e/b/d;->a:Le/b/a/a/c;

    iput p2, p0, Le/b/a/a/o/e/b/d;->b:I

    iput-boolean p3, p0, Le/b/a/a/o/e/b/d;->c:Z

    sget-object p1, Le/b/a/a/o/e/b/a;->a:Le/b/a/a/o/e/b/a;

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/o/e/b/d;->d:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/b/a/a/o/e/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Le/b/a/a/o/e/b/d$b;

    invoke-direct {p1, p0, p4}, Le/b/a/a/o/e/b/d$b;-><init>(Le/b/a/a/o/e/b/d;Le/b/a/a/o/e/b/d$a;)V

    iput-object p1, p0, Le/b/a/a/o/e/b/d;->f:Le/b/a/a/o/e/b/d$b;

    return-void
.end method

.method public static final a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "CarLife_AudioPlayer"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AudioPlayer "

    aput-object v2, v0, v1

    iget v1, p0, Le/b/a/a/o/e/b/d;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, " setVolume "

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/b/a/a/o/e/b/d;->g:Le/b/a/a/o/e/b/b;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Le/b/a/a/o/e/b/b;->f(F)V

    :goto_1
    return-void
.end method

.method public final c(Le/b/a/a/o/e/c/a/b;)V
    .locals 10

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/e/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Le/b/a/a/o/e/b/d;->f()V

    new-instance v0, Le/b/a/a/o/e/b/b;

    iget-object v2, p0, Le/b/a/a/o/e/b/d;->a:Le/b/a/a/c;

    iget v3, p0, Le/b/a/a/o/e/b/d;->b:I

    iget-boolean v4, p0, Le/b/a/a/o/e/b/d;->c:Z

    iget-object v6, p0, Le/b/a/a/o/e/b/d;->f:Le/b/a/a/o/e/b/d$b;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Le/b/a/a/o/e/b/b;-><init>(Le/b/a/a/c;IZLe/b/a/a/o/e/c/a/b;Le/b/a/a/o/e/b/d$a;)V

    iput-object v0, p0, Le/b/a/a/o/e/b/d;->g:Le/b/a/a/o/e/b/b;

    iget-object p1, p0, Le/b/a/a/o/e/b/d;->d:Ljava/util/concurrent/ExecutorService;

    const-string v1, "executor"

    invoke-static {p1, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter v0

    :try_start_0
    const-string v1, "executor"

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Le/b/a/a/o/e/b/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-eqz v1, :cond_0

    iget-object p1, v0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    iget-object v1, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    const-string v2, "can not play a closed audio source"

    invoke-interface {p1, v1, v9, v2}, Le/b/a/a/o/e/b/d$a;->i(Le/b/a/a/o/e/c/a/b;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    goto :goto_3

    :cond_0
    :try_start_1
    iget v1, v0, Le/b/a/a/o/e/b/b;->t:I

    if-eqz v1, :cond_1

    iget-object p1, v0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    iget-object v1, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    const/4 v2, 0x4

    const-string v3, "can not play a played audio source"

    invoke-interface {p1, v1, v2, v3}, Le/b/a/a/o/e/b/d$a;->i(Le/b/a/a/o/e/c/a/b;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v1}, Le/b/a/a/o/e/c/a/b;->f()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Le/b/a/a/o/e/b/b;->e:Le/b/a/a/c;

    iget-object v2, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v2}, Le/b/a/a/o/e/c/a/b;->a()I

    move-result v3

    iget-object v2, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v2}, Le/b/a/a/o/e/c/a/b;->f()I

    move-result v4

    iget-object v2, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v2}, Le/b/a/a/o/e/c/a/b;->d()Z

    move-result v5

    iget-object v2, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v2}, Le/b/a/a/o/e/c/a/b;->b()Z

    move-result v6

    move-object v2, v0

    invoke-interface/range {v1 .. v6}, Le/b/a/a/c;->t0(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZ)I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v7, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x63

    iput v1, v0, Le/b/a/a/o/e/b/b;->u:I

    iget-object v1, v0, Le/b/a/a/o/e/b/b;->o:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    :goto_1
    iget-object v1, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v1}, Le/b/a/a/o/e/c/a/b;->f()I

    move-result v1

    iput v1, v0, Le/b/a/a/o/e/b/b;->u:I

    goto :goto_2

    :cond_3
    iget-object p1, v0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    iget-object v1, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    const-string v2, "request focus failed"

    invoke-interface {p1, v1, v7, v2}, Le/b/a/a/o/e/b/d$a;->i(Le/b/a/a/o/e/c/a/b;ILjava/lang/String;)V

    const/4 p1, -0x1

    iput p1, v0, Le/b/a/a/o/e/b/b;->u:I

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v1, v0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    iget-object v2, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v1, v2}, Le/b/a/a/o/e/b/d$a;->w(Le/b/a/a/o/e/c/a/b;)V

    invoke-virtual {v0, v8}, Le/b/a/a/o/e/b/b;->g(I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, v0, Le/b/a/a/o/e/b/b;->p:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    new-array p1, v9, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "AudioPlayer "

    aput-object v1, p1, v0

    .line 2
    iget v0, p0, Le/b/a/a/o/e/b/d;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v8

    const-string v0, " play"

    aput-object v0, p1, v7

    const-string v0, "CarLife_SDK"

    const-string v1, "tag"

    .line 3
    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_5

    goto :goto_4

    .line 5
    :cond_5
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v9, v0, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0

    throw p1

    :cond_6
    :goto_4
    return-void
.end method

.method public final d()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AudioPlayer "

    aput-object v3, v1, v2

    iget v2, p0, Le/b/a/a/o/e/b/d;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, " pause"

    aput-object v3, v1, v2

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/b/a/a/o/e/b/d;->g:Le/b/a/a/o/e/b/b;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Le/b/a/a/o/e/b/b;->s()V

    :goto_1
    return-void
.end method

.method public final e()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AudioPlayer "

    aput-object v3, v1, v2

    iget v2, p0, Le/b/a/a/o/e/b/d;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, " resume"

    aput-object v3, v1, v2

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/b/a/a/o/e/b/d;->g:Le/b/a/a/o/e/b/b;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Le/b/a/a/o/e/b/b;->w()V

    :goto_1
    return-void
.end method

.method public final f()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AudioPlayer "

    aput-object v3, v1, v2

    iget v2, p0, Le/b/a/a/o/e/b/d;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, " stop"

    aput-object v3, v1, v2

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/b/a/a/o/e/b/d;->g:Le/b/a/a/o/e/b/b;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Le/b/a/a/o/e/b/b;->x()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/a/a/o/e/b/d;->g:Le/b/a/a/o/e/b/b;

    :goto_1
    return-void
.end method
