.class public final Lg/a/z0/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/a/z0/k;

.field public static final b:Z

.field public static final c:Lg/a/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/a/z0/k;

    invoke-direct {v0}, Lg/a/z0/k;-><init>()V

    sput-object v0, Lg/a/z0/k;->a:Lg/a/z0/k;

    const-string v0, "kotlinx.coroutines.fast.service.loader"

    .line 1
    invoke-static {v0}, Lg/a/z0/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3
    :goto_0
    sput-boolean v0, Lg/a/z0/k;->b:Z

    const/4 v0, 0x0

    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    .line 4
    :try_start_0
    invoke-static {}, La;->b()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Ld/b/k/m$i;->d(Ljava/util/Iterator;)Lf/p/b;

    move-result-object v2

    invoke-static {v2}, Ld/b/k/m$i;->B1(Lf/p/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    invoke-interface {v4}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v4

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    invoke-interface {v6}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v6

    if-ge v4, v6, :cond_4

    move-object v0, v5

    move v4, v6

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    check-cast v0, Lkotlinx/coroutines/internal/MainDispatcherFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_5

    .line 5
    :try_start_1
    invoke-interface {v0, v2}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->createDispatcher(Ljava/util/List;)Lg/a/o0;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    sput-object v0, Lg/a/z0/k;->c:Lg/a/o0;

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-interface {v0}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->hintOnError()Ljava/lang/String;

    .line 8
    throw v1

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 10
    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
