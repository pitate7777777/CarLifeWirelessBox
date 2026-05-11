.class public Ld/h/i/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/h/i/f$e;
    }
.end annotation


# static fields
.field public static final a:Ld/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/f<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ld/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/h<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ld/h/k/a<",
            "Ld/h/i/f$e;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Ld/e/f;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ld/e/f;-><init>(I)V

    sput-object v0, Ld/h/i/f;->a:Ld/e/f;

    .line 1
    new-instance v9, Ld/h/i/j;

    const-string v0, "fonts-androidx"

    const/16 v1, 0xa

    invoke-direct {v9, v0, v1}, Ld/h/i/j;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0x2710

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 2
    sput-object v0, Ld/h/i/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld/h/i/f;->c:Ljava/lang/Object;

    new-instance v0, Ld/e/h;

    invoke-direct {v0}, Ld/e/h;-><init>()V

    sput-object v0, Ld/h/i/f;->d:Ld/e/h;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ld/h/i/e;I)Ld/h/i/f$e;
    .locals 7

    sget-object v0, Ld/h/i/f;->a:Ld/e/f;

    invoke-virtual {v0, p0}, Ld/e/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    new-instance p0, Ld/h/i/f$e;

    invoke-direct {p0, v0}, Ld/h/i/f$e;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, v0}, Ld/h/i/d;->a(Landroid/content/Context;Ld/h/i/e;Landroid/os/CancellationSignal;)Ld/h/i/g;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    iget v1, p2, Ld/h/i/g;->a:I

    const/4 v2, -0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x2

    goto :goto_3

    .line 2
    :cond_2
    iget-object v1, p2, Ld/h/i/g;->b:[Ld/h/i/h;

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 3
    array-length v5, v1

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, v1, v5

    .line 4
    iget v6, v6, Ld/h/i/h;->e:I

    if-eqz v6, :cond_5

    if-gez v6, :cond_4

    :goto_1
    const/4 v1, -0x3

    goto :goto_3

    :cond_4
    move v1, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_2
    move v1, v3

    :goto_3
    if-eqz v1, :cond_8

    .line 5
    new-instance p0, Ld/h/i/f$e;

    invoke-direct {p0, v1}, Ld/h/i/f$e;-><init>(I)V

    return-object p0

    .line 6
    :cond_8
    iget-object p2, p2, Ld/h/i/g;->b:[Ld/h/i/h;

    .line 7
    sget-object v1, Ld/h/f/d;->a:Ld/h/f/j;

    invoke-virtual {v1, p1, v0, p2, p3}, Ld/h/f/j;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[Ld/h/i/h;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 8
    sget-object p2, Ld/h/i/f;->a:Ld/e/f;

    invoke-virtual {p2, p0, p1}, Ld/e/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ld/h/i/f$e;

    invoke-direct {p0, p1}, Ld/h/i/f$e;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_9
    new-instance p0, Ld/h/i/f$e;

    invoke-direct {p0, v2}, Ld/h/i/f$e;-><init>(I)V

    return-object p0

    :catch_0
    new-instance p0, Ld/h/i/f$e;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Ld/h/i/f$e;-><init>(I)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ld/h/i/e;ILjava/util/concurrent/Executor;Ld/h/i/c;)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v0, p1, Ld/h/i/e;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4
    sget-object v0, Ld/h/i/f;->a:Ld/e/f;

    invoke-virtual {v0, p3}, Ld/e/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p4, Ld/h/i/c;->a:Ld/h/i/i;

    iget-object p1, p4, Ld/h/i/c;->b:Landroid/os/Handler;

    new-instance p2, Ld/h/i/a;

    invoke-direct {p2, p4, p0, v0}, Ld/h/i/a;-><init>(Ld/h/i/c;Ld/h/i/i;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ld/h/i/f$b;

    invoke-direct {v0, p4}, Ld/h/i/f$b;-><init>(Ld/h/i/c;)V

    sget-object p4, Ld/h/i/f;->c:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    sget-object v1, Ld/h/i/f;->d:Ld/e/h;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p3, v2}, Ld/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p4

    return-object v2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Ld/h/i/f;->d:Ld/e/h;

    invoke-virtual {v0, p3, v1}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p4, Ld/h/i/f$c;

    invoke-direct {p4, p3, p0, p1, p2}, Ld/h/i/f$c;-><init>(Ljava/lang/String;Landroid/content/Context;Ld/h/i/e;I)V

    sget-object p0, Ld/h/i/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ld/h/i/f$d;

    invoke-direct {p1, p3}, Ld/h/i/f$d;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 10
    :goto_0
    new-instance p3, Ld/h/i/k;

    invoke-direct {p3, p2, p4, p1}, Ld/h/i/k;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Ld/h/k/a;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v2

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static c(Landroid/content/Context;Ld/h/i/e;Ld/h/i/c;II)Landroid/graphics/Typeface;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p1, Ld/h/i/e;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Ld/h/i/f;->a:Ld/e/f;

    invoke-virtual {v1, v0}, Ld/e/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 5
    iget-object p0, p2, Ld/h/i/c;->a:Ld/h/i/i;

    iget-object p1, p2, Ld/h/i/c;->b:Landroid/os/Handler;

    new-instance p3, Ld/h/i/a;

    invoke-direct {p3, p2, p0, v1}, Ld/h/i/a;-><init>(Ld/h/i/c;Ld/h/i/i;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :cond_0
    const/4 v1, -0x1

    if-ne p4, v1, :cond_1

    .line 6
    invoke-static {v0, p0, p1, p3}, Ld/h/i/f;->a(Ljava/lang/String;Landroid/content/Context;Ld/h/i/e;I)Ld/h/i/f$e;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld/h/i/c;->a(Ld/h/i/f$e;)V

    iget-object p0, p0, Ld/h/i/f$e;->a:Landroid/graphics/Typeface;

    return-object p0

    :cond_1
    new-instance v1, Ld/h/i/f$a;

    invoke-direct {v1, v0, p0, p1, p3}, Ld/h/i/f$a;-><init>(Ljava/lang/String;Landroid/content/Context;Ld/h/i/e;I)V

    :try_start_0
    sget-object p0, Ld/h/i/f;->b:Ljava/util/concurrent/ExecutorService;

    .line 7
    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long p3, p4

    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p3, p4, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    :try_start_2
    check-cast p0, Ld/h/i/f$e;

    invoke-virtual {p2, p0}, Ld/h/i/c;->a(Ld/h/i/f$e;)V

    iget-object p0, p0, Ld/h/i/f$e;->a:Landroid/graphics/Typeface;

    return-object p0

    .line 9
    :catch_0
    new-instance p0, Ljava/lang/InterruptedException;

    const-string p1, "timeout"

    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    const/4 p0, -0x3

    const/4 p1, 0x0

    .line 10
    iget-object p3, p2, Ld/h/i/c;->a:Ld/h/i/i;

    iget-object p4, p2, Ld/h/i/c;->b:Landroid/os/Handler;

    new-instance v0, Ld/h/i/b;

    invoke-direct {v0, p2, p3, p0}, Ld/h/i/b;-><init>(Ld/h/i/c;Ld/h/i/i;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method
