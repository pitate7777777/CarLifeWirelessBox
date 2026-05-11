.class public abstract Le/b/a/a/o/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/c;


# instance fields
.field public A:Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

.field public B:Z

.field public final e:Landroid/content/Context;

.field public volatile f:I

.field public g:I

.field public final h:Landroid/os/Handler;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public final k:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Le/b/a/a/o/i/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/b/a/a/i;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/b/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/a/l;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Le/b/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Le/b/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Le/b/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/b/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Le/b/a/a/o/e/a;

.field public final u:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final v:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final w:Ljava/io/File;

.field public final x:Ljava/io/File;

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configs"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/c;->e:Landroid/content/Context;

    const/4 v0, 0x2

    iput v0, p0, Le/b/a/a/o/c;->g:I

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Le/b/a/a/o/c;->h:Landroid/os/Handler;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Le/b/a/a/o/c;->i:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/c;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/c;->m:Ljava/util/Set;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/c;->n:Ljava/util/List;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/c;->o:Ljava/util/HashSet;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/c;->p:Ljava/util/HashSet;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/c;->q:Ljava/util/HashSet;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/c;->r:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/c;->s:Ljava/util/Set;

    new-instance p2, Le/b/a/a/o/e/a;

    invoke-direct {p2, p1}, Le/b/a/a/o/e/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Le/b/a/a/o/c;->t:Le/b/a/a/o/e/a;

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Le/b/a/a/r/e;->a()I

    move-result v2

    invoke-static {}, Le/b/a/a/r/e;->a()I

    move-result v3

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v8, 0x32

    invoke-direct {v7, v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    const-wide/16 v4, 0x3c

    move-object v1, p2

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput-object p2, p0, Le/b/a/a/o/c;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Le/b/a/a/r/e;->a()I

    move-result v2

    mul-int/lit8 v5, v2, 0x2

    invoke-static {}, Le/b/a/a/r/e;->a()I

    move-result v2

    mul-int/lit8 v6, v2, 0x2

    new-instance v10, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v10, v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    const-wide/16 v7, 0x3c

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput-object p2, p0, Le/b/a/a/o/c;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mounted"

    invoke-static {p2, v0}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-le p2, v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    const-string v0, "context.getExternalFilesDir(null)!!"

    invoke-static {p2, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/b/a/a/o/c;->w:Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    const-string p2, "context.externalCacheDir!!"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    const-string v0, "context.filesDir"

    invoke-static {p2, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/b/a/a/o/c;->w:Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string p2, "context.cacheDir"

    :goto_0
    invoke-static {p1, p2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/b/a/a/o/c;->x:Ljava/io/File;

    new-instance p1, Le/b/a/a/r/g;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Le/b/a/a/o/c;->w:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {p2, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Le/b/a/a/r/g;-><init>(Ljava/io/File;)V

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "CONFIG_LOG_LEVEL"

    invoke-virtual {p0, v0, p2}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 1
    iput p2, p1, Le/b/a/a/r/g;->e:I

    const-wide/32 v2, 0x500000

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "CONFIG_MAX_LOG_FILE_SIZE"

    invoke-virtual {p0, v0, p2}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 3
    iput-wide v2, p1, Le/b/a/a/r/g;->f:J

    const/16 p2, 0x14

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "CONFIG_MAX_LOG_FILE_COUNT"

    invoke-virtual {p0, v0, p2}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 5
    iput p2, p1, Le/b/a/a/r/g;->g:I

    .line 6
    sput-object p1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    .line 7
    iput-boolean v1, p0, Le/b/a/a/o/c;->z:Z

    new-instance p1, Le/b/a/a/o/c$a;

    invoke-direct {p1, p0}, Le/b/a/a/o/c$a;-><init>(Le/b/a/a/o/c;)V

    invoke-static {p1}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    return-void
.end method

.method public static final i(Lf/m/a/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lf/m/a/a;->a()Ljava/lang/Object;

    return-void
.end method

.method public static final l(Lf/m/a/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lf/m/a/a;->a()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public B0()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/c;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public declared-synchronized D(Le/b/a/a/i;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Le/b/a/a/o/c;->j:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->q(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized D0(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/b/a/a/o/c;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/g;

    invoke-interface {v1, p1}, Le/b/a/a/g;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized F0(Le/b/a/a/m;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public I(I)V
    .locals 0

    iput p1, p0, Le/b/a/a/o/c;->g:I

    return-void
.end method

.method public J0()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/o/c;->B:Z

    return v0
.end method

.method public synthetic K()V
    .locals 0

    invoke-static {p0}, Le/b/a/a/a;->g(Le/b/a/a/c;)V

    return-void
.end method

.method public M(Z)V
    .locals 0

    iput-boolean p1, p0, Le/b/a/a/o/c;->B:Z

    return-void
.end method

.method public declared-synchronized N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/o/i/b;

    invoke-interface {v1, p1, p2}, Le/b/a/a/o/i/b;->N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public O0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/b/a/a/o/c;->r:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;->setKey(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;->setValue(I)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public P0(Le/b/a/a/l;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Le/b/a/a/o/c;->j:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->q(I)V

    iget-object v0, p0, Le/b/a/a/o/c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Q0(I)Le/b/a/a/e;
    .locals 3

    iget-object v0, p0, Le/b/a/a/o/c;->p:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/b/a/a/e;

    invoke-interface {v2}, Le/b/a/a/e;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Le/b/a/a/e;

    return-object v1
.end method

.method public R()Z
    .locals 1

    .line 1
    iget v0, p0, Le/b/a/a/o/c;->f:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R0()Ljava/lang/String;
    .locals 1

    const-string v0, "Android"

    return-object v0
.end method

.method public synthetic S()V
    .locals 0

    invoke-static {p0}, Le/b/a/a/a;->c(Le/b/a/a/c;)V

    return-void
.end method

.method public declared-synchronized T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/o/i/b;

    invoke-interface {v1, p1, p2}, Le/b/a/a/o/i/b;->T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public W(Le/b/a/a/o/i/b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Le/b/a/a/o/c;->j:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->q(I)V

    iget-object v0, p0, Le/b/a/a/o/c;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->t(Le/b/a/a/i;)V

    return-void
.end method

.method public Y0()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/c;->A:Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    return-object v0
.end method

.method public Z0()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/c;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public synthetic a()V
    .locals 0

    invoke-static {p0}, Le/b/a/a/a;->b(Le/b/a/a/c;)V

    return-void
.end method

.method public a0(Le/b/a/a/d;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p0, p1, Le/b/a/a/d;->e:Le/b/a/a/j;

    .line 2
    iget-object v0, p0, Le/b/a/a/o/c;->o:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    return-void
.end method

.method public b(Le/b/a/a/d;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->t:Le/b/a/a/o/e/a;

    invoke-virtual {v0, p1}, Le/b/a/a/o/e/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    return-void
.end method

.method public final c1(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-static {p0}, Le/b/a/a/a;->f(Le/b/a/a/c;)V

    return-void
.end method

.method public declared-synchronized d1(Le/b/a/a/o/i/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Le/b/a/a/o/c;->j:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->q(I)V

    iget-object v0, p0, Le/b/a/a/o/c;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->D(Le/b/a/a/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic e()V
    .locals 0

    invoke-static {p0}, Le/b/a/a/a;->e(Le/b/a/a/c;)V

    return-void
.end method

.method public e1()I
    .locals 1

    iget v0, p0, Le/b/a/a/o/c;->f:I

    return v0
.end method

.method public declared-synchronized f0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/b/a/a/o/c;->p:Ljava/util/HashSet;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ld/b/k/m$i;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/a/e;

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;

    move-result-object v3

    invoke-interface {v2}, Le/b/a/a/e;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;->setModuleID(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;

    move-result-object v3

    invoke-interface {v2}, Le/b/a/a/e;->getSupportFlag()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;->setSupportFlag(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f1(Ljava/lang/String;IZ)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p3, "key"

    invoke-static {p1, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Le/b/a/a/o/c;->r:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Le/b/a/a/o/c;->s:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/b/a/a/m;

    invoke-interface {p2}, Le/b/a/a/m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()I
    .locals 3

    iget-object v0, p0, Le/b/a/a/o/c;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/o/c;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method public synthetic g1(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/a;->i(Le/b/a/a/c;II)V

    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/c;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final getCacheDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/c;->x:Ljava/io/File;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Le/b/a/a/o/c;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/o/c;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "packageInfo.versionName"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public h(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public h1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic i0(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/a;->d(Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/o/c;->z:Z

    return v0
.end method

.method public j1()I
    .locals 1

    iget v0, p0, Le/b/a/a/o/c;->y:I

    return v0
.end method

.method public synthetic k0(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/b/a/a/a;->h(Le/b/a/a/c;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public l0(JLf/m/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lf/m/a/a<",
            "Lf/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "runnable"

    invoke-static {p3, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->h:Landroid/os/Handler;

    new-instance v1, Le/b/a/a/o/b;

    invoke-direct {v1, p3}, Le/b/a/a/o/b;-><init>(Lf/m/a/a;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/b/a/a/o/c;->q:Ljava/util/HashSet;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ld/b/k/m$i;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/a/f;

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo$Builder;

    move-result-object v3

    invoke-interface {v2}, Le/b/a/a/f;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo$Builder;->setModuleID(I)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Le/b/a/a/o/c;->z:Z

    return-void
.end method

.method public final declared-synchronized o(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "features"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Le/b/a/a/o/c;->r:Ljava/util/Map;

    iget-object p1, p0, Le/b/a/a/o/c;->s:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/m;

    invoke-interface {v0}, Le/b/a/a/m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final o1(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public final declared-synchronized onConnectionAttached(Le/b/a/a/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Le/b/a/a/o/c;->f:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/b/a/a/o/c;->f:I

    .line 3
    iget-object p1, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/i;

    invoke-interface {v0, p0}, Le/b/a/a/i;->onConnectionAttached(Le/b/a/a/c;)V

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Le/b/a/a/o/c;->f:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 5
    iput v0, p0, Le/b/a/a/o/c;->f:I

    .line 6
    iget-object p1, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/i;

    invoke-interface {v0, p0}, Le/b/a/a/i;->onConnectionReattached(Le/b/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onConnectionAuthenFailed(Le/b/a/a/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/i;

    invoke-interface {v0, p0}, Le/b/a/a/i;->onConnectionAuthenFailed(Le/b/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mac"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/i;

    invoke-interface {v0, p0, p2, p3}, Le/b/a/a/i;->onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onConnectionDetached(Le/b/a/a/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Le/b/a/a/o/c;->f:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le/b/a/a/o/c;->f:I

    .line 3
    iget-object p1, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/i;

    invoke-interface {v0, p0}, Le/b/a/a/i;->onConnectionDetached(Le/b/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onConnectionEstablished(Le/b/a/a/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Le/b/a/a/o/c;->f:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    iput v0, p0, Le/b/a/a/o/c;->f:I

    .line 3
    iget-object p1, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/i;

    invoke-interface {v0, p0}, Le/b/a/a/i;->onConnectionEstablished(Le/b/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic onConnectionReattached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->f(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public final declared-synchronized onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/i;

    invoke-interface {v0, p0}, Le/b/a/a/i;->onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public p()Z
    .locals 2

    .line 1
    iget v0, p0, Le/b/a/a/o/c;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p0()I
    .locals 1

    iget v0, p0, Le/b/a/a/o/c;->g:I

    return v0
.end method

.method public p1(Lf/m/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/m/a/a<",
            "Lf/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->h:Landroid/os/Handler;

    new-instance v1, Le/b/a/a/o/a;

    invoke-direct {v1, p1}, Le/b/a/a/o/a;-><init>(Lf/m/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final q(I)V
    .locals 3

    iput p1, p0, Le/b/a/a/o/c;->j:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "CarLifeContextImpl monitor listener count "

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "CarLife_SDK"

    const-string v1, "tag"

    .line 1
    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized r0(Le/b/a/a/d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "module"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->o:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Le/b/a/a/d;->e:Le/b/a/a/j;

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->d1(Le/b/a/a/o/i/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public s1(I)V
    .locals 0

    return-void
.end method

.method public t(Le/b/a/a/i;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Le/b/a/a/o/c;->j:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->q(I)V

    .line 1
    iget v0, p0, Le/b/a/a/o/c;->f:I

    if-eqz v0, :cond_2

    iget v0, p0, Le/b/a/a/o/c;->f:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Le/b/a/a/i;->onConnectionEstablished(Le/b/a/a/c;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Le/b/a/a/i;->onConnectionAttached(Le/b/a/a/c;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Le/b/a/a/o/c;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public t0(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZ)I
    .locals 7

    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/b/a/a/o/c;->t:Le/b/a/a/o/e/a;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Le/b/a/a/o/e/a;->e(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZ)I

    move-result p1

    return p1
.end method

.method public declared-synchronized u(Le/b/a/a/l;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Le/b/a/a/o/c;->j:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->q(I)V

    iget-object v0, p0, Le/b/a/a/o/c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public v0()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/c;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public synthetic w1(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Le/b/a/a/a;->a(Le/b/a/a/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized x(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/b/a/a/o/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/l;

    invoke-interface {v1, p1}, Le/b/a/a/l;->x(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public x0(I)Le/b/a/a/d;
    .locals 3

    iget-object v0, p0, Le/b/a/a/o/c;->o:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/b/a/a/d;

    invoke-virtual {v2}, Le/b/a/a/d;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Le/b/a/a/d;

    return-object v1
.end method

.method public y0(I)Le/b/a/a/f;
    .locals 3

    iget-object v0, p0, Le/b/a/a/o/c;->q:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/b/a/a/f;

    invoke-interface {v2}, Le/b/a/a/f;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Le/b/a/a/f;

    return-object v1
.end method

.method public final z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/c;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method
