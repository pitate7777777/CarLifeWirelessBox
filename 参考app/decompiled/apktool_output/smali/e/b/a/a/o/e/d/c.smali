.class public final Le/b/a/a/o/e/d/c;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public e:Le/b/a/a/c;

.field public final f:Ljava/lang/Object;

.field public final g:Le/b/a/a/r/c;

.field public volatile h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/e/d/c;->e:Le/b/a/a/c;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/e/d/c;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "-----PcmSender()---------"

    aput-object v2, v0, v1

    const-string v2, "CarLifeVoice"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    new-instance p1, Le/b/a/a/r/c;

    const/16 v0, 0x6000

    .line 5
    invoke-direct {p1, v0, v1}, Le/b/a/a/r/c;-><init>(IZ)V

    .line 6
    iput-object p1, p0, Le/b/a/a/o/e/d/c;->g:Le/b/a/a/r/c;

    return-void
.end method


# virtual methods
.method public final a([BI)I
    .locals 5

    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v1, 0x58001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, v3, p2}, Le/b/a/a/o/h/a;->v([BII)V

    iget-object p1, p0, Le/b/a/a/o/e/d/c;->e:Le/b/a/a/c;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    :goto_0
    return v3
.end method

.method public final b(Z)V
    .locals 1

    iput-boolean p1, p0, Le/b/a/a/o/e/d/c;->h:Z

    iget-boolean p1, p0, Le/b/a/a/o/e/d/c;->h:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/b/a/a/o/e/d/c;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/b/a/a/o/e/d/c;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/a/o/e/d/c;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw v0

    :cond_1
    :goto_2
    return-void
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "pcmwriter thread runing"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLifeVoice"

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

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/16 v0, -0x13

    .line 4
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v0, 0x400

    new-array v1, v0, [B

    :goto_1
    iget-boolean v3, p0, Le/b/a/a/o/e/d/c;->h:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Le/b/a/a/o/e/d/c;->g:Le/b/a/a/r/c;

    const/4 v5, 0x0

    const/16 v6, 0x400

    const-wide/16 v7, 0x64

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Le/b/a/a/r/c;->g([BIIJ)I

    move-result v3

    if-lez v3, :cond_3

    .line 5
    iget-boolean v3, p0, Le/b/a/a/o/e/d/c;->i:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x200

    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v0, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 6
    aget-byte v8, v1, v5

    aput-byte v8, v4, v6

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v1, v8

    aput-byte v8, v4, v7

    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p0, v4, v3}, Le/b/a/a/o/e/d/c;->a([BI)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v0}, Le/b/a/a/o/e/d/c;->a([BI)I

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x64

    .line 8
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Le/b/a/a/o/e/d/c;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Le/b/a/a/o/e/d/c;->f:Ljava/lang/Object;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit v3

    goto :goto_1

    :goto_4
    monitor-exit v3

    throw v0
.end method
