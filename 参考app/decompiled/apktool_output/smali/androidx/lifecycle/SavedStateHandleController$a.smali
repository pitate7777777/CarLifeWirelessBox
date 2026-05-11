.class public final Landroidx/lifecycle/SavedStateHandleController$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/r/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/r/c;)V
    .locals 8

    instance-of v0, p1, Ld/m/v;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ld/m/v;

    invoke-interface {v0}, Ld/m/v;->s()Ld/m/u;

    move-result-object v0

    invoke-interface {p1}, Ld/r/c;->i()Ld/r/a;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v0, Ld/m/u;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3
    iget-object v5, v0, Ld/m/u;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/m/q;

    .line 4
    invoke-interface {p1}, Ld/m/h;->b()Ld/m/d;

    move-result-object v5

    const-string v6, "androidx.lifecycle.savedstate.vm.tag"

    .line 5
    iget-object v7, v4, Ld/m/q;->a:Ljava/util/Map;

    if-nez v7, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    monitor-enter v7

    :try_start_0
    iget-object v4, v4, Ld/m/q;->a:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    check-cast v4, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz v4, :cond_0

    .line 7
    iget-boolean v6, v4, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    if-nez v6, :cond_0

    if-eqz v6, :cond_2

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already attached to lifecycleOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, v4, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-virtual {v5, v4}, Ld/m/d;->a(Ld/m/g;)V

    throw v2

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, v0, Ld/m/u;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-class p1, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {v1, p1}, Ld/r/a;->a(Ljava/lang/Class;)V

    :cond_4
    return-void

    .line 12
    :cond_5
    throw v2

    .line 13
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
