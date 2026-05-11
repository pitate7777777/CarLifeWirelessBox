.class public final Le/b/b/n/d/b;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public e:Le/b/a/a/c;

.field public volatile f:Z

.field public final g:Ljava/lang/Object;

.field public h:Le/b/b/n/d/c;

.field public i:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Le/b/b/n/d/b;->e:Le/b/a/a/c;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/b/n/d/b;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "--new---PcmRecorder()--"

    aput-object v1, p1, v0

    const-string v0, "CarLifeVoice"

    const-string v1, "tag"

    .line 1
    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    new-instance p1, Le/b/b/n/d/c;

    iget-object v0, p0, Le/b/b/n/d/b;->e:Le/b/a/a/c;

    invoke-direct {p1, v0}, Le/b/b/n/d/c;-><init>(Le/b/a/a/c;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iput-object p1, p0, Le/b/b/n/d/b;->h:Le/b/b/n/d/c;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Le/b/b/n/d/b;->f:Z

    iget-boolean p1, p0, Le/b/b/n/d/b;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/b/b/n/d/b;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Le/b/b/n/d/b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/b/b/n/d/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 11

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Le/b/b/n/d/b;->i:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x6

    const/16 v3, 0x3e80

    const/16 v4, 0x10

    const/4 v5, 0x2

    const/high16 v6, 0x10000

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Le/b/b/n/d/b;->i:Landroid/media/AudioRecord;

    :cond_0
    const/16 v0, 0x400

    new-array v7, v0, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_1
    iget-boolean v1, p0, Le/b/b/n/d/b;->f:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Le/b/b/n/d/b;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Le/b/b/n/d/b;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :try_start_1
    iget-object v2, p0, Le/b/b/n/d/b;->g:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wait() interrupted!"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :goto_1
    const/4 v10, 0x1

    :try_start_3
    iget-object v1, p0, Le/b/b/n/d/b;->i:Landroid/media/AudioRecord;

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    iget-object v1, p0, Le/b/b/n/d/b;->h:Le/b/b/n/d/c;

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Le/b/b/n/d/c;->b(Z)V

    :goto_2
    iget-boolean v1, p0, Le/b/b/n/d/b;->f:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Le/b/b/n/d/b;->i:Landroid/media/AudioRecord;

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v7, v8, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v4

    const/4 v1, -0x3

    if-eq v4, v1, :cond_5

    const/4 v1, -0x2

    if-eq v4, v1, :cond_5

    iget-object v1, p0, Le/b/b/n/d/b;->h:Le/b/b/n/d/c;

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    if-gtz v4, :cond_4

    goto :goto_2

    .line 1
    :cond_4
    iget-object v1, v1, Le/b/b/n/d/c;->g:Le/b/a/a/r/c;

    const/4 v3, 0x0

    const-wide/16 v5, 0x64

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Le/b/a/a/r/c;->h([BIIJ)I

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    .line 2
    :cond_6
    iget-object v1, p0, Le/b/b/n/d/b;->i:Landroid/media/AudioRecord;

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    iget-object v1, p0, Le/b/b/n/d/b;->h:Le/b/b/n/d/c;

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Le/b/b/n/d/c;->b(Z)V

    if-eqz v9, :cond_1

    goto :goto_3

    :catch_1
    const-string v0, "CarLifeVoice"

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "startRecording--error"

    aput-object v2, v1, v8

    const-string v2, "tag"

    .line 3
    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_7

    goto :goto_3

    .line 5
    :cond_7
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_3
    iget-object v0, p0, Le/b/b/n/d/b;->i:Landroid/media/AudioRecord;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/b/n/d/b;->i:Landroid/media/AudioRecord;

    return-void
.end method
