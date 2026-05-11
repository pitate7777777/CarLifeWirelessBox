.class public abstract Ld/k/d/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/k/d/r$g;,
        Ld/k/d/r$f;,
        Ld/k/d/r$e;
    }
.end annotation


# instance fields
.field public A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/k/d/r$g;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ld/k/d/v;

.field public D:Ljava/lang/Runnable;

.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/k/d/r$e;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Ld/k/d/y;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/k/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ld/k/d/p;

.field public g:Landroidx/activity/OnBackPressedDispatcher;

.field public final h:Ld/a/b;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet<",
            "Ld/h/h/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Ld/k/d/g0$a;

.field public final l:Ld/k/d/q;

.field public m:I

.field public n:Ld/k/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/k/d/o<",
            "*>;"
        }
    .end annotation
.end field

.field public o:Ld/k/d/k;

.field public p:Landroidx/fragment/app/Fragment;

.field public q:Landroidx/fragment/app/Fragment;

.field public r:Ld/k/d/n;

.field public s:Ld/k/d/n;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/k/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    new-instance v0, Ld/k/d/y;

    invoke-direct {v0}, Ld/k/d/y;-><init>()V

    iput-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    new-instance v0, Ld/k/d/p;

    invoke-direct {v0, p0}, Ld/k/d/p;-><init>(Ld/k/d/r;)V

    iput-object v0, p0, Ld/k/d/r;->f:Ld/k/d/p;

    new-instance v0, Ld/k/d/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld/k/d/r$a;-><init>(Ld/k/d/r;Z)V

    iput-object v0, p0, Ld/k/d/r;->h:Ld/a/b;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ld/k/d/r;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ld/k/d/r;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ld/k/d/r$b;

    invoke-direct {v0, p0}, Ld/k/d/r$b;-><init>(Ld/k/d/r;)V

    iput-object v0, p0, Ld/k/d/r;->k:Ld/k/d/g0$a;

    new-instance v0, Ld/k/d/q;

    invoke-direct {v0, p0}, Ld/k/d/q;-><init>(Ld/k/d/r;)V

    iput-object v0, p0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v0, -0x1

    iput v0, p0, Ld/k/d/r;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Ld/k/d/r;->r:Ld/k/d/n;

    new-instance v0, Ld/k/d/r$c;

    invoke-direct {v0, p0}, Ld/k/d/r$c;-><init>(Ld/k/d/r;)V

    iput-object v0, p0, Ld/k/d/r;->s:Ld/k/d/n;

    new-instance v0, Ld/k/d/r$d;

    invoke-direct {v0, p0}, Ld/k/d/r$d;-><init>(Ld/k/d/r;)V

    iput-object v0, p0, Ld/k/d/r;->D:Ljava/lang/Runnable;

    return-void
.end method

.method public static N(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A(Z)V
    .locals 2

    iget-boolean v0, p0, Ld/k/d/r;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Ld/k/d/r;->n:Ld/k/d/o;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Ld/k/d/r;->w:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ld/k/d/r;->n:Ld/k/d/o;

    .line 1
    iget-object v1, v1, Ld/k/d/o;->g:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p0}, Ld/k/d/r;->Q()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_3
    :goto_0
    iget-object p1, p0, Ld/k/d/r;->y:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/k/d/r;->y:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/k/d/r;->z:Ljava/util/ArrayList;

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/k/d/r;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v0}, Ld/k/d/r;->E(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, Ld/k/d/r;->b:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Ld/k/d/r;->b:Z

    throw v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B(Z)Z
    .locals 9

    invoke-virtual {p0, p1}, Ld/k/d/r;->A(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ld/k/d/r;->y:Ljava/util/ArrayList;

    iget-object v3, p0, Ld/k/d/r;->z:Ljava/util/ArrayList;

    .line 1
    iget-object v4, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v4

    const/4 v7, 0x0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    iget-object v8, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/k/d/r$e;

    invoke-interface {v8, v2, v3}, Ld/k/d/r$e;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Ld/k/d/r;->n:Ld/k/d/o;

    .line 2
    iget-object v2, v2, Ld/k/d/o;->g:Landroid/os/Handler;

    .line 3
    iget-object v3, p0, Ld/k/d/r;->D:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    if-eqz v7, :cond_2

    .line 4
    iput-boolean p1, p0, Ld/k/d/r;->b:Z

    :try_start_1
    iget-object v1, p0, Ld/k/d/r;->y:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/k/d/r;->z:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Ld/k/d/r;->Z(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ld/k/d/r;->f()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ld/k/d/r;->f()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Ld/k/d/r;->k0()V

    invoke-virtual {p0}, Ld/k/d/r;->w()V

    iget-object p1, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {p1}, Ld/k/d/y;->b()V

    return v1

    :catchall_1
    move-exception p1

    .line 5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public C(Ld/k/d/r$e;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Ld/k/d/r;->n:Ld/k/d/o;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ld/k/d/r;->w:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Ld/k/d/r;->A(Z)V

    iget-object p2, p0, Ld/k/d/r;->y:Ljava/util/ArrayList;

    iget-object v0, p0, Ld/k/d/r;->z:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Ld/k/d/r$e;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/k/d/r;->b:Z

    :try_start_0
    iget-object p1, p0, Ld/k/d/r;->y:Ljava/util/ArrayList;

    iget-object p2, p0, Ld/k/d/r;->z:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ld/k/d/r;->Z(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ld/k/d/r;->f()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ld/k/d/r;->f()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ld/k/d/r;->k0()V

    invoke-virtual {p0}, Ld/k/d/r;->w()V

    iget-object p1, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {p1}, Ld/k/d/y;->b()V

    return-void
.end method

.method public final D(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/a;

    iget-boolean v12, v0, Ld/k/d/z;->p:Z

    iget-object v0, v7, Ld/k/d/r;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Ld/k/d/r;->A:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v0, v7, Ld/k/d/r;->A:Ljava/util/ArrayList;

    iget-object v1, v7, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v1}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1
    iget-object v0, v7, Ld/k/d/r;->q:Landroidx/fragment/app/Fragment;

    move v1, v10

    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v1, v11, :cond_12

    .line 2
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/k/d/a;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x3

    if-nez v4, :cond_c

    iget-object v4, v7, Ld/k/d/r;->A:Ljava/util/ArrayList;

    const/4 v14, 0x0

    .line 3
    :goto_2
    iget-object v13, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v14, v13, :cond_b

    iget-object v13, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ld/k/d/z$a;

    iget v15, v13, Ld/k/d/z$a;->a:I

    if-eq v15, v6, :cond_a

    const/4 v6, 0x2

    const/16 v10, 0x9

    if-eq v15, v6, :cond_3

    if-eq v15, v5, :cond_2

    const/4 v6, 0x6

    if-eq v15, v6, :cond_2

    const/4 v6, 0x7

    if-eq v15, v6, :cond_a

    const/16 v6, 0x8

    if-eq v15, v6, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v6, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    new-instance v15, Ld/k/d/z$a;

    invoke-direct {v15, v10, v0}, Ld/k/d/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v14, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    iget-object v0, v13, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    goto/16 :goto_6

    :cond_2
    iget-object v6, v13, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, v13, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    if-ne v6, v0, :cond_8

    iget-object v0, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    new-instance v13, Ld/k/d/z$a;

    invoke-direct {v13, v10, v6}, Ld/k/d/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_3
    iget-object v6, v13, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    iget v15, v6, Landroidx/fragment/app/Fragment;->A:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v5, v17

    const/16 v18, 0x0

    :goto_3
    if-ltz v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    check-cast v10, Landroidx/fragment/app/Fragment;

    iget v9, v10, Landroidx/fragment/app/Fragment;->A:I

    if-ne v9, v15, :cond_6

    if-ne v10, v6, :cond_4

    move/from16 v19, v15

    const/16 v18, 0x1

    goto :goto_5

    :cond_4
    if-ne v10, v0, :cond_5

    iget-object v0, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    new-instance v9, Ld/k/d/z$a;

    move/from16 v19, v15

    const/16 v15, 0x9

    invoke-direct {v9, v15, v10}, Ld/k/d/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v14, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    move/from16 v19, v15

    const/16 v15, 0x9

    :goto_4
    new-instance v9, Ld/k/d/z$a;

    const/4 v15, 0x3

    invoke-direct {v9, v15, v10}, Ld/k/d/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    iget v15, v13, Ld/k/d/z$a;->c:I

    iput v15, v9, Ld/k/d/z$a;->c:I

    iget v15, v13, Ld/k/d/z$a;->e:I

    iput v15, v9, Ld/k/d/z$a;->e:I

    iget v15, v13, Ld/k/d/z$a;->d:I

    iput v15, v9, Ld/k/d/z$a;->d:I

    iget v15, v13, Ld/k/d/z$a;->f:I

    iput v15, v9, Ld/k/d/z$a;->f:I

    iget-object v15, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v15, v14, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    add-int/2addr v14, v9

    goto :goto_5

    :cond_6
    move/from16 v19, v15

    :goto_5
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v9, p2

    move/from16 v15, v19

    const/16 v10, 0x9

    goto :goto_3

    :cond_7
    if-eqz v18, :cond_9

    iget-object v5, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v14, -0x1

    :cond_8
    :goto_6
    const/4 v9, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x1

    iput v9, v13, Ld/k/d/z$a;->a:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    const/4 v9, 0x1

    iget-object v5, v13, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v14, v9

    move-object/from16 v9, p2

    move/from16 v10, p3

    const/4 v5, 0x3

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_b
    const/4 v9, 0x1

    goto :goto_a

    :cond_c
    const/4 v9, 0x1

    .line 4
    iget-object v4, v7, Ld/k/d/r;->A:Ljava/util/ArrayList;

    .line 5
    iget-object v5, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v9

    :goto_8
    if-ltz v5, :cond_f

    iget-object v6, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/k/d/z$a;

    iget v10, v6, Ld/k/d/z$a;->a:I

    const/4 v13, 0x3

    if-eq v10, v9, :cond_e

    if-eq v10, v13, :cond_d

    packed-switch v10, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    iget-object v10, v6, Ld/k/d/z$a;->g:Ld/m/d$b;

    iput-object v10, v6, Ld/k/d/z$a;->h:Ld/m/d$b;

    goto :goto_9

    :pswitch_1
    iget-object v0, v6, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_9

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_9

    :cond_d
    :pswitch_3
    iget-object v6, v6, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    :pswitch_4
    iget-object v6, v6, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_f
    :goto_a
    if-nez v2, :cond_11

    .line 6
    iget-boolean v2, v3, Ld/k/d/z;->g:Z

    if-eqz v2, :cond_10

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v2, 0x1

    :goto_c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, p2

    move/from16 v10, p3

    goto/16 :goto_1

    :cond_12
    const/4 v9, 0x1

    iget-object v0, v7, Ld/k/d/r;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v12, :cond_13

    const/4 v5, 0x0

    iget-object v6, v7, Ld/k/d/r;->k:Ld/k/d/g0$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Ld/k/d/g0;->p(Ld/k/d/r;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLd/k/d/g0$a;)V

    :cond_13
    move/from16 v0, p3

    :goto_d
    if-ge v0, v11, :cond_16

    .line 7
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/k/d/a;

    move-object/from16 v10, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ld/k/d/a;->j(I)V

    add-int/lit8 v2, v11, -0x1

    if-ne v0, v2, :cond_14

    const/4 v6, 0x1

    goto :goto_e

    :cond_14
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v1, v6}, Ld/k/d/a;->n(Z)V

    goto :goto_f

    :cond_15
    invoke-virtual {v1, v9}, Ld/k/d/a;->j(I)V

    invoke-virtual {v1}, Ld/k/d/a;->m()V

    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    move-object/from16 v10, p2

    if-eqz v12, :cond_23

    .line 8
    new-instance v0, Ld/e/c;

    invoke-direct {v0}, Ld/e/c;-><init>()V

    invoke-virtual {v7, v0}, Ld/k/d/r;->a(Ld/e/c;)V

    add-int/lit8 v1, v11, -0x1

    move/from16 v13, p3

    move v2, v11

    :goto_10
    if-lt v1, v13, :cond_20

    .line 9
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/k/d/a;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    .line 10
    :goto_11
    iget-object v6, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    iget-object v6, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/k/d/z$a;

    invoke-static {v6}, Ld/k/d/a;->q(Ld/k/d/z$a;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    goto :goto_12

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_18
    const/4 v6, 0x0

    :goto_12
    if-eqz v6, :cond_19

    add-int/lit8 v5, v1, 0x1

    .line 11
    invoke-virtual {v3, v8, v5, v11}, Ld/k/d/a;->p(Ljava/util/ArrayList;II)Z

    move-result v5

    if-nez v5, :cond_19

    const/4 v6, 0x1

    goto :goto_13

    :cond_19
    const/4 v6, 0x0

    :goto_13
    if-eqz v6, :cond_1f

    iget-object v5, v7, Ld/k/d/r;->B:Ljava/util/ArrayList;

    if-nez v5, :cond_1a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v7, Ld/k/d/r;->B:Ljava/util/ArrayList;

    :cond_1a
    new-instance v5, Ld/k/d/r$g;

    invoke-direct {v5, v3, v4}, Ld/k/d/r$g;-><init>(Ld/k/d/a;Z)V

    iget-object v6, v7, Ld/k/d/r;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 12
    :goto_14
    iget-object v14, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_1c

    iget-object v14, v3, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ld/k/d/z$a;

    invoke-static {v14}, Ld/k/d/a;->q(Ld/k/d/z$a;)Z

    move-result v15

    if-eqz v15, :cond_1b

    iget-object v14, v14, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v14, v5}, Landroidx/fragment/app/Fragment;->z0(Landroidx/fragment/app/Fragment$d;)V

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_1c
    if-eqz v4, :cond_1d

    .line 13
    invoke-virtual {v3}, Ld/k/d/a;->m()V

    const/4 v14, 0x0

    goto :goto_15

    :cond_1d
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ld/k/d/a;->n(Z)V

    :goto_15
    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1e

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v8, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1e
    invoke-virtual {v7, v0}, Ld/k/d/r;->a(Ld/e/c;)V

    goto :goto_16

    :cond_1f
    const/4 v14, 0x0

    :goto_16
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_10

    :cond_20
    const/4 v14, 0x0

    .line 14
    iget v1, v0, Ld/e/c;->g:I

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_22

    .line 15
    iget-object v4, v0, Ld/e/c;->f:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 16
    check-cast v4, Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->o:Z

    if-nez v5, :cond_21

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->t0()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v4, Landroidx/fragment/app/Fragment;->Q:F

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_22
    move v4, v2

    goto :goto_18

    :cond_23
    move/from16 v13, p3

    const/4 v14, 0x0

    move v4, v11

    :goto_18
    if-eq v4, v13, :cond_24

    if-eqz v12, :cond_24

    const/4 v5, 0x1

    .line 17
    iget-object v6, v7, Ld/k/d/r;->k:Ld/k/d/g0$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v0 .. v6}, Ld/k/d/g0;->p(Ld/k/d/r;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLd/k/d/g0$a;)V

    iget v0, v7, Ld/k/d/r;->m:I

    invoke-virtual {v7, v0, v9}, Ld/k/d/r;->T(IZ)V

    :cond_24
    :goto_19
    if-ge v13, v11, :cond_28

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/a;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, v0, Ld/k/d/a;->t:I

    if-ltz v1, :cond_25

    const/4 v1, -0x1

    iput v1, v0, Ld/k/d/a;->t:I

    goto :goto_1a

    :cond_25
    const/4 v1, -0x1

    .line 18
    :goto_1a
    iget-object v2, v0, Ld/k/d/z;->q:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    :goto_1b
    iget-object v3, v0, Ld/k/d/z;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    iget-object v3, v0, Ld/k/d/z;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_26
    const/4 v2, 0x0

    iput-object v2, v0, Ld/k/d/z;->q:Ljava/util/ArrayList;

    goto :goto_1c

    :cond_27
    const/4 v2, 0x0

    :goto_1c
    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    :cond_28
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ld/k/d/r;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Ld/k/d/r;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/k/d/r$g;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    iget-boolean v6, v3, Ld/k/d/r$g;->a:Z

    if-nez v6, :cond_1

    iget-object v6, v3, Ld/k/d/r$g;->b:Ld/k/d/a;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Ld/k/d/r;->B:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1
    :cond_1
    iget v6, v3, Ld/k/d/r$g;->c:I

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 2
    iget-object v6, v3, Ld/k/d/r$g;->b:Ld/k/d/a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Ld/k/d/a;->p(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget-object v6, p0, Ld/k/d/r;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_4

    iget-boolean v6, v3, Ld/k/d/r$g;->a:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Ld/k/d/r$g;->b:Ld/k/d/a;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3
    :goto_3
    iget-object v5, v3, Ld/k/d/r$g;->b:Ld/k/d/a;

    iget-object v6, v5, Ld/k/d/a;->r:Ld/k/d/r;

    iget-boolean v3, v3, Ld/k/d/r$g;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, Ld/k/d/r;->g(Ld/k/d/a;ZZZ)V

    goto :goto_4

    .line 4
    :cond_4
    invoke-virtual {v3}, Ld/k/d/r$g;->a()V

    :cond_5
    :goto_4
    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    return-void
.end method

.method public F(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0, p1}, Ld/k/d/y;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public G(I)Landroidx/fragment/app/Fragment;
    .locals 4

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    .line 1
    iget-object v1, v0, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    iget-object v2, v0, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    iget v3, v2, Landroidx/fragment/app/Fragment;->z:I

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ld/k/d/y;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/k/d/x;

    if-eqz v1, :cond_2

    .line 2
    iget-object v2, v1, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 3
    iget v1, v2, Landroidx/fragment/app/Fragment;->z:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public H(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 5

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1
    iget-object v2, v0, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    iget-object v3, v0, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->B:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ld/k/d/y;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/k/d/x;

    if-eqz v2, :cond_2

    .line 2
    iget-object v2, v2, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->B:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    throw v1
.end method

.method public I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    .line 1
    iget-object v0, v0, Ld/k/d/y;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/k/d/x;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v1, p1}, Ld/k/d/r;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final J(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    iget v0, p1, Landroidx/fragment/app/Fragment;->A:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Ld/k/d/r;->o:Ld/k/d/k;

    invoke-virtual {v0}, Ld/k/d/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/k/d/r;->o:Ld/k/d/k;

    iget p1, p1, Landroidx/fragment/app/Fragment;->A:I

    invoke-virtual {v0, p1}, Ld/k/d/k;->a(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public K()Ld/k/d/n;
    .locals 1

    iget-object v0, p0, Ld/k/d/r;->r:Ld/k/d/n;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    invoke-virtual {v0}, Ld/k/d/r;->K()Ld/k/d/n;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Ld/k/d/r;->s:Ld/k/d/n;

    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public M(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->C:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->C:Z

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->P:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->P:Z

    invoke-virtual {p0, p1}, Ld/k/d/r;->h0(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public final O(Landroidx/fragment/app/Fragment;)Z
    .locals 5

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->G:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_5

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    .line 1
    iget-object v0, p1, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Ld/k/d/r;->O(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    :cond_2
    if-eqz v3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method public P(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    .line 1
    iget-object v2, v1, Ld/k/d/r;->q:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Ld/k/d/r;->P(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Ld/k/d/r;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ld/k/d/r;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public R(Landroidx/fragment/app/Fragment;)V
    .locals 7

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/k/d/y;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ld/k/d/x;

    iget-object v1, p0, Ld/k/d/r;->l:Ld/k/d/q;

    invoke-direct {v0, v1, p1}, Ld/k/d/x;-><init>(Ld/k/d/q;Landroidx/fragment/app/Fragment;)V

    iget-object v1, p0, Ld/k/d/r;->n:Ld/k/d/o;

    .line 1
    iget-object v1, v1, Ld/k/d/o;->f:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/k/d/x;->a(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Ld/k/d/r;->c:Ld/k/d/y;

    .line 3
    iget-object v1, v1, Ld/k/d/y;->b:Ljava/util/HashMap;

    .line 4
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 5
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->F:Z

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eqz v1, :cond_5

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->E:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Ld/k/d/r;->Q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Ld/k/d/r;->N(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Ignoring addRetainedFragment as the state is already saved"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Ld/k/d/r;->C:Ld/k/d/v;

    .line 8
    iget-object v5, v1, Ld/k/d/v;->b:Ljava/util/HashMap;

    iget-object v6, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, v1, Ld/k/d/v;->b:Ljava/util/HashMap;

    iget-object v5, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    .line 9
    invoke-static {v3}, Ld/k/d/r;->N(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating retained Fragments: Added "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0, p1}, Ld/k/d/r;->a0(Landroidx/fragment/app/Fragment;)V

    :cond_4
    :goto_2
    iput-boolean v4, p1, Landroidx/fragment/app/Fragment;->F:Z

    :cond_5
    iget v1, p0, Ld/k/d/r;->m:I

    .line 11
    iput v1, v0, Ld/k/d/x;->c:I

    .line 12
    invoke-static {v3}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added fragment to active set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public S(Landroidx/fragment/app/Fragment;)V
    .locals 8

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/k/d/y;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ld/k/d/r;->m:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "since it is not added to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1
    :cond_1
    iget v0, p0, Ld/k/d/r;->m:I

    invoke-virtual {p0, p1, v0}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object v3, p0, Ld/k/d/r;->c:Ld/k/d/y;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 3
    iget-object v5, p1, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v3, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    iget-object v6, v3, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    iget-object v7, v6, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    if-ne v7, v5, :cond_3

    iget-object v7, v6, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v7, :cond_3

    move-object v4, v6

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 4
    iget-object v0, v4, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_5
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->O:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget v0, p1, Landroidx/fragment/app/Fragment;->Q:F

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_6

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iput v3, p1, Landroidx/fragment/app/Fragment;->Q:F

    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->O:Z

    iget-object v0, p0, Ld/k/d/r;->n:Ld/k/d/o;

    .line 5
    iget-object v0, v0, Ld/k/d/o;->f:Landroid/content/Context;

    .line 6
    iget-object v3, p0, Ld/k/d/r;->o:Ld/k/d/k;

    invoke-static {v0, v3, p1, v1}, Ld/b/k/m$i;->E0(Landroid/content/Context;Ld/k/d/k;Landroidx/fragment/app/Fragment;Z)Ld/k/d/i;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v3, v0, Ld/k/d/i;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_7

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_7
    iget-object v3, v0, Ld/k/d/i;->b:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, v0, Ld/k/d/i;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 7
    :cond_8
    throw v4

    .line 8
    :cond_9
    :goto_1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->P:Z

    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ld/k/d/r;->n:Ld/k/d/o;

    .line 10
    iget-object v0, v0, Ld/k/d/o;->f:Landroid/content/Context;

    .line 11
    iget-object v3, p0, Ld/k/d/r;->o:Ld/k/d/k;

    iget-boolean v4, p1, Landroidx/fragment/app/Fragment;->C:Z

    xor-int/2addr v4, v1

    invoke-static {v0, v3, p1, v4}, Ld/b/k/m$i;->E0(Landroid/content/Context;Ld/k/d/k;Landroidx/fragment/app/Fragment;Z)Ld/k/d/i;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v3, v0, Ld/k/d/i;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_c

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->C()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->x0(Z)V

    goto :goto_2

    :cond_a
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v5, v0, Ld/k/d/i;->b:Landroid/animation/Animator;

    new-instance v6, Ld/k/d/s;

    invoke-direct {v6, p0, v3, v4, p1}, Ld/k/d/s;-><init>(Ld/k/d/r;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_b
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, v0, Ld/k/d/i;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_d

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    iget-object v4, v0, Ld/k/d/i;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Ld/k/d/i;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_d
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->C()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x8

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->C()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->x0(Z)V

    :cond_f
    :goto_4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Ld/k/d/r;->O(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Ld/k/d/r;->t:Z

    :cond_10
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->P:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->C:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->U(Z)V

    :cond_11
    return-void
.end method

.method public T(IZ)V
    .locals 1

    iget-object v0, p0, Ld/k/d/r;->n:Ld/k/d/o;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Ld/k/d/r;->m:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Ld/k/d/r;->m:I

    iget-object p1, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {p1}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p2}, Ld/k/d/r;->S(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {p1}, Ld/k/d/y;->f()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_4

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->O:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, p2}, Ld/k/d/r;->S(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ld/k/d/r;->j0()V

    iget-boolean p1, p0, Ld/k/d/r;->t:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Ld/k/d/r;->n:Ld/k/d/o;

    if-eqz p1, :cond_6

    iget p2, p0, Ld/k/d/r;->m:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    check-cast p1, Ld/k/d/e$a;

    .line 1
    iget-object p1, p1, Ld/k/d/e$a;->i:Ld/k/d/e;

    invoke-virtual {p1}, Ld/k/d/e;->H()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ld/k/d/r;->t:Z

    :cond_6
    return-void
.end method

.method public U(Landroidx/fragment/app/Fragment;I)V
    .locals 13

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Ld/k/d/y;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/x;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/k/d/x;

    iget-object v2, p0, Ld/k/d/r;->l:Ld/k/d/q;

    invoke-direct {v0, v2, p1}, Ld/k/d/x;-><init>(Ld/k/d/q;Landroidx/fragment/app/Fragment;)V

    .line 3
    iput v1, v0, Ld/k/d/x;->c:I

    .line 4
    :cond_0
    iget v2, v0, Ld/k/d/x;->c:I

    iget-object v3, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->q:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->r:Z

    if-eqz v4, :cond_1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_1
    if-ge v2, v5, :cond_2

    iget v3, v3, Landroidx/fragment/app/Fragment;->e:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    :goto_0
    iget-object v3, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->o:Z

    if-nez v3, :cond_4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_4
    iget-object v3, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->p:Z

    const/4 v6, -0x1

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->D()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_5
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_6
    :goto_1
    iget-object v3, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->L:Z

    const/4 v7, 0x3

    if-eqz v4, :cond_7

    iget v3, v3, Landroidx/fragment/app/Fragment;->e:I

    if-ge v3, v7, :cond_7

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_7
    iget-object v3, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->T:Ld/m/d$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v5, :cond_9

    if-eq v3, v7, :cond_8

    if-eq v3, v4, :cond_a

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_8
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_9
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    :cond_a
    :goto_2
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v2, p1, Landroidx/fragment/app/Fragment;->e:I

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-gt v2, p2, :cond_37

    if-ge v2, p2, :cond_b

    iget-object v2, p0, Ld/k/d/r;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0, p1}, Ld/k/d/r;->e(Landroidx/fragment/app/Fragment;)V

    :cond_b
    iget v2, p1, Landroidx/fragment/app/Fragment;->e:I

    if-eq v2, v6, :cond_c

    if-eqz v2, :cond_15

    if-eq v2, v1, :cond_1a

    if-eq v2, v5, :cond_2f

    if-eq v2, v7, :cond_33

    goto/16 :goto_20

    :cond_c
    if-le p2, v6, :cond_15

    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "moveto ATTACHED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->k:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_10

    iget-object v9, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ld/k/d/r;->F(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->k:Landroidx/fragment/app/Fragment;

    iget v9, v2, Landroidx/fragment/app/Fragment;->e:I

    if-ge v9, v1, :cond_e

    invoke-virtual {p0, v2, v1}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    :cond_e
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->k:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    iput-object v2, p1, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    iput-object v3, p1, Landroidx/fragment/app/Fragment;->k:Landroidx/fragment/app/Fragment;

    goto :goto_3

    :cond_f
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " declared target fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " that does not belong to this FragmentManager!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_10
    :goto_3
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 6
    iget-object v9, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v9, v2}, Ld/k/d/y;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 7
    iget v9, v2, Landroidx/fragment/app/Fragment;->e:I

    if-ge v9, v1, :cond_12

    invoke-virtual {p0, v2, v1}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    goto :goto_4

    :cond_11
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " declared target fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " that does not belong to this FragmentManager!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_12
    :goto_4
    iget-object v2, p0, Ld/k/d/r;->n:Ld/k/d/o;

    iget-object v9, p0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    .line 8
    iget-object v10, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iput-object v2, v10, Landroidx/fragment/app/Fragment;->w:Ld/k/d/o;

    iput-object v9, v10, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/Fragment;

    iput-object p0, v10, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    iget-object v9, v0, Ld/k/d/x;->a:Ld/k/d/q;

    .line 9
    iget-object v11, v2, Ld/k/d/o;->f:Landroid/content/Context;

    .line 10
    invoke-virtual {v9, v10, v11, v8}, Ld/k/d/q;->g(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    iget-object v9, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 11
    iget-object v10, v9, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    iget-object v11, v9, Landroidx/fragment/app/Fragment;->w:Ld/k/d/o;

    new-instance v12, Ld/k/d/d;

    invoke-direct {v12, v9}, Ld/k/d/d;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v10, v11, v12, v9}, Ld/k/d/r;->c(Ld/k/d/o;Ld/k/d/k;Landroidx/fragment/app/Fragment;)V

    iput v8, v9, Landroidx/fragment/app/Fragment;->e:I

    iput-boolean v8, v9, Landroidx/fragment/app/Fragment;->I:Z

    iget-object v10, v9, Landroidx/fragment/app/Fragment;->w:Ld/k/d/o;

    .line 12
    iget-object v10, v10, Ld/k/d/o;->f:Landroid/content/Context;

    .line 13
    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->I(Landroid/content/Context;)V

    iget-boolean v10, v9, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v10, :cond_14

    .line 14
    iget-object v9, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/Fragment;

    if-nez v9, :cond_13

    move-object v9, v2

    check-cast v9, Ld/k/d/e$a;

    .line 15
    iget-object v9, v9, Ld/k/d/e$a;->i:Ld/k/d/e;

    invoke-virtual {v9}, Ld/k/d/e;->G()V

    goto :goto_5

    .line 16
    :cond_13
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->J()V

    :goto_5
    iget-object v9, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v10, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 17
    iget-object v2, v2, Ld/k/d/o;->f:Landroid/content/Context;

    .line 18
    invoke-virtual {v9, v10, v2, v8}, Ld/k/d/q;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    goto :goto_6

    .line 19
    :cond_14
    new-instance p1, Ld/k/d/n0;

    const-string p2, "Fragment "

    const-string v0, " did not call through to super.onAttach()"

    invoke-static {p2, v9, v0}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    :goto_6
    if-lez p2, :cond_1a

    .line 20
    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "moveto CREATED: "

    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const-string v10, "FragmentManager"

    invoke-static {v2, v9, v10}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_16
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v9, v2, Landroidx/fragment/app/Fragment;->S:Z

    if-nez v9, :cond_18

    iget-object v9, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v10, v2, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v9, v2, v10, v8}, Ld/k/d/q;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v2, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    .line 21
    iget-object v10, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v10}, Ld/k/d/r;->V()V

    iput v1, v2, Landroidx/fragment/app/Fragment;->e:I

    iput-boolean v8, v2, Landroidx/fragment/app/Fragment;->I:Z

    iget-object v10, v2, Landroidx/fragment/app/Fragment;->X:Ld/r/b;

    invoke-virtual {v10, v9}, Ld/r/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {v2, v9}, Landroidx/fragment/app/Fragment;->L(Landroid/os/Bundle;)V

    iput-boolean v1, v2, Landroidx/fragment/app/Fragment;->S:Z

    iget-boolean v9, v2, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v9, :cond_17

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->U:Ld/m/i;

    sget-object v9, Ld/m/d$a;->ON_CREATE:Ld/m/d$a;

    invoke-virtual {v2, v9}, Ld/m/i;->d(Ld/m/d$a;)V

    .line 22
    iget-object v2, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v9, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v10, v9, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v9, v10, v8}, Ld/k/d/q;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_7

    .line 23
    :cond_17
    new-instance p1, Ld/k/d/n0;

    const-string p2, "Fragment "

    const-string v0, " did not call through to super.onCreate()"

    invoke-static {p2, v2, v0}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_18
    iget-object v9, v2, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    if-eqz v9, :cond_19

    const-string v10, "android:support:fragments"

    .line 25
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    if-eqz v9, :cond_19

    iget-object v10, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v10, v9}, Ld/k/d/r;->b0(Landroid/os/Parcelable;)V

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v2}, Ld/k/d/r;->l()V

    .line 26
    :cond_19
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iput v1, v2, Landroidx/fragment/app/Fragment;->e:I

    :cond_1a
    :goto_7
    const/16 v2, 0x8

    if-le p2, v6, :cond_1d

    .line 27
    iget-object v9, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v10, v9, Landroidx/fragment/app/Fragment;->q:Z

    if-eqz v10, :cond_1d

    iget-boolean v10, v9, Landroidx/fragment/app/Fragment;->r:Z

    if-eqz v10, :cond_1d

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->t:Z

    if-nez v9, :cond_1d

    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v9, "moveto CREATE_VIEW: "

    invoke-static {v9}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const-string v11, "FragmentManager"

    invoke-static {v9, v10, v11}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_1b
    iget-object v9, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v10, v9, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->n0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v10

    iget-object v11, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v3, v11}, Landroidx/fragment/app/Fragment;->m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v9, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v9, :cond_1d

    invoke-virtual {v9, v8}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v9, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v10, v9, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    sget v11, Ld/k/b;->fragment_container_view_tag:I

    invoke-virtual {v10, v11, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v9, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v10, v9, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v10, :cond_1c

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget-object v9, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v10, v9, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    iget-object v11, v9, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/Fragment;->j0(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v9, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v10, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v11, v10, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    iget-object v12, v10, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11, v12, v8}, Ld/k/d/q;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_1d
    if-le p2, v1, :cond_2f

    .line 28
    iget-object v9, p0, Ld/k/d/r;->o:Ld/k/d/k;

    .line 29
    iget-object v10, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v10, v10, Landroidx/fragment/app/Fragment;->q:Z

    if-eqz v10, :cond_1e

    goto/16 :goto_b

    :cond_1e
    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v10

    if-eqz v10, :cond_1f

    const-string v10, "moveto CREATE_VIEW: "

    invoke-static {v10}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const-string v12, "FragmentManager"

    invoke-static {v10, v11, v12}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_1f
    iget-object v10, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v11, v10, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    if-eqz v11, :cond_20

    goto :goto_9

    :cond_20
    iget v10, v10, Landroidx/fragment/app/Fragment;->A:I

    if-eqz v10, :cond_23

    if-eq v10, v6, :cond_22

    invoke-virtual {v9, v10}, Ld/k/d/k;->a(I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/view/ViewGroup;

    if-nez v11, :cond_24

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v9, v6, Landroidx/fragment/app/Fragment;->s:Z

    if-eqz v9, :cond_21

    goto :goto_9

    :cond_21
    :try_start_0
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget p2, p2, Landroidx/fragment/app/Fragment;->A:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const-string p1, "unknown"

    :goto_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, "No view found for id 0x"

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create fragment "

    invoke-static {p2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for a container view with no id"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    move-object v11, v3

    :cond_24
    :goto_9
    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iput-object v11, v6, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    iget-object v9, v6, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v6, v9}, Landroidx/fragment/app/Fragment;->n0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v10, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v6, v9, v11, v10}, Landroidx/fragment/app/Fragment;->m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v6, :cond_28

    invoke-virtual {v6, v8}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v6, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    sget v10, Ld/k/b;->fragment_container_view_tag:I

    invoke-virtual {v9, v10, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v11, :cond_25

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_25
    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v9, v6, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v9, :cond_26

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-static {v2}, Ld/h/l/p;->Y(Landroid/view/View;)V

    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v6, v2, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    iget-object v9, v2, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v6, v9}, Landroidx/fragment/app/Fragment;->j0(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v2, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v6, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    iget-object v10, v6, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v6, v9, v10, v8}, Ld/k/d/q;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v6, v2, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_27

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    if-eqz v6, :cond_27

    const/4 v6, 0x1

    goto :goto_a

    :cond_27
    const/4 v6, 0x0

    :goto_a
    iput-boolean v6, v2, Landroidx/fragment/app/Fragment;->O:Z

    .line 30
    :cond_28
    :goto_b
    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const-string v9, "FragmentManager"

    invoke-static {v2, v6, v9}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_29
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v6, v2, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    .line 31
    iget-object v9, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v9}, Ld/k/d/r;->V()V

    iput v5, v2, Landroidx/fragment/app/Fragment;->e:I

    iput-boolean v8, v2, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {v2, v6}, Landroidx/fragment/app/Fragment;->F(Landroid/os/Bundle;)V

    iget-boolean v6, v2, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v6, :cond_2e

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    .line 32
    iput-boolean v8, v2, Ld/k/d/r;->u:Z

    iput-boolean v8, v2, Ld/k/d/r;->v:Z

    invoke-virtual {v2, v5}, Ld/k/d/r;->v(I)V

    .line 33
    iget-object v2, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v6, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v6, v9, v8}, Ld/k/d/q;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 34
    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "moveto RESTORE_VIEW_STATE: "

    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const-string v9, "FragmentManager"

    invoke-static {v2, v6, v9}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_2a
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v6, v2, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v6, :cond_2d

    .line 35
    iget-object v9, v2, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    if-eqz v9, :cond_2b

    invoke-virtual {v6, v9}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    :cond_2b
    iput-boolean v8, v2, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->k0()V

    iget-boolean v6, v2, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v6, :cond_2c

    iget-object v6, v2, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v6, :cond_2d

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->V:Ld/k/d/m0;

    sget-object v6, Ld/m/d$a;->ON_CREATE:Ld/m/d$a;

    .line 36
    iget-object v2, v2, Ld/k/d/m0;->e:Ld/m/i;

    invoke-virtual {v2, v6}, Ld/m/i;->d(Ld/m/d$a;)V

    goto :goto_c

    .line 37
    :cond_2c
    new-instance p1, Ld/k/d/n0;

    const-string p2, "Fragment "

    const-string v0, " did not call through to super.onViewStateRestored()"

    invoke-static {p2, v2, v0}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_2d
    :goto_c
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    goto :goto_d

    .line 39
    :cond_2e
    new-instance p1, Ld/k/d/n0;

    const-string p2, "Fragment "

    const-string v0, " did not call through to super.onActivityCreated()"

    invoke-static {p2, v2, v0}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    :goto_d
    if-le p2, v5, :cond_33

    .line 40
    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "moveto STARTED: "

    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const-string v6, "FragmentManager"

    invoke-static {v2, v5, v6}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_30
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 41
    iget-object v5, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v5}, Ld/k/d/r;->V()V

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v5, v1}, Ld/k/d/r;->B(Z)Z

    iput v7, v2, Landroidx/fragment/app/Fragment;->e:I

    iput-boolean v8, v2, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->h0()V

    iget-boolean v5, v2, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v5, :cond_32

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->U:Ld/m/i;

    sget-object v6, Ld/m/d$a;->ON_START:Ld/m/d$a;

    invoke-virtual {v5, v6}, Ld/m/i;->d(Ld/m/d$a;)V

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v5, :cond_31

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->V:Ld/k/d/m0;

    sget-object v6, Ld/m/d$a;->ON_START:Ld/m/d$a;

    .line 42
    iget-object v5, v5, Ld/k/d/m0;->e:Ld/m/i;

    invoke-virtual {v5, v6}, Ld/m/i;->d(Ld/m/d$a;)V

    .line 43
    :cond_31
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    .line 44
    iput-boolean v8, v2, Ld/k/d/r;->u:Z

    iput-boolean v8, v2, Ld/k/d/r;->v:Z

    invoke-virtual {v2, v7}, Ld/k/d/r;->v(I)V

    .line 45
    iget-object v2, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v5, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v5, v8}, Ld/k/d/q;->k(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_e

    .line 46
    :cond_32
    new-instance p1, Ld/k/d/n0;

    const-string p2, "Fragment "

    const-string v0, " did not call through to super.onStart()"

    invoke-static {p2, v2, v0}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    :goto_e
    if-le p2, v7, :cond_6b

    .line 47
    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "moveto RESUMED: "

    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const-string v6, "FragmentManager"

    invoke-static {v2, v5, v6}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_34
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 48
    iget-object v5, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v5}, Ld/k/d/r;->V()V

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v5, v1}, Ld/k/d/r;->B(Z)Z

    iput v4, v2, Landroidx/fragment/app/Fragment;->e:I

    iput-boolean v8, v2, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->f0()V

    iget-boolean v1, v2, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v1, :cond_36

    iget-object v1, v2, Landroidx/fragment/app/Fragment;->U:Ld/m/i;

    sget-object v5, Ld/m/d$a;->ON_RESUME:Ld/m/d$a;

    invoke-virtual {v1, v5}, Ld/m/i;->d(Ld/m/d$a;)V

    iget-object v1, v2, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v1, :cond_35

    iget-object v1, v2, Landroidx/fragment/app/Fragment;->V:Ld/k/d/m0;

    sget-object v5, Ld/m/d$a;->ON_RESUME:Ld/m/d$a;

    .line 49
    iget-object v1, v1, Ld/k/d/m0;->e:Ld/m/i;

    invoke-virtual {v1, v5}, Ld/m/i;->d(Ld/m/d$a;)V

    .line 50
    :cond_35
    iget-object v1, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    .line 51
    iput-boolean v8, v1, Ld/k/d/r;->u:Z

    iput-boolean v8, v1, Ld/k/d/r;->v:Z

    invoke-virtual {v1, v4}, Ld/k/d/r;->v(I)V

    .line 52
    iget-object v1, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v8}, Ld/k/d/q;->i(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iput-object v3, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    iput-object v3, v0, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    goto/16 :goto_20

    .line 53
    :cond_36
    new-instance p1, Ld/k/d/n0;

    const-string p2, "Fragment "

    const-string v0, " did not call through to super.onResume()"

    invoke-static {p2, v2, v0}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    if-le v2, p2, :cond_6b

    if-eqz v2, :cond_64

    if-eq v2, v1, :cond_4b

    if-eq v2, v5, :cond_40

    if-eq v2, v7, :cond_3c

    if-eq v2, v4, :cond_38

    goto/16 :goto_20

    :cond_38
    if-ge p2, v4, :cond_3c

    .line 54
    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "movefrom RESUMED: "

    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const-string v9, "FragmentManager"

    invoke-static {v2, v4, v9}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_39
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 55
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    .line 56
    invoke-virtual {v4, v7}, Ld/k/d/r;->v(I)V

    .line 57
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v4, :cond_3a

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->V:Ld/k/d/m0;

    sget-object v9, Ld/m/d$a;->ON_PAUSE:Ld/m/d$a;

    .line 58
    iget-object v4, v4, Ld/k/d/m0;->e:Ld/m/i;

    invoke-virtual {v4, v9}, Ld/m/i;->d(Ld/m/d$a;)V

    .line 59
    :cond_3a
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->U:Ld/m/i;

    sget-object v9, Ld/m/d$a;->ON_PAUSE:Ld/m/d$a;

    invoke-virtual {v4, v9}, Ld/m/i;->d(Ld/m/d$a;)V

    iput v7, v2, Landroidx/fragment/app/Fragment;->e:I

    iput-boolean v8, v2, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->a0()V

    iget-boolean v4, v2, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v4, :cond_3b

    .line 60
    iget-object v2, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v4, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v4, v8}, Ld/k/d/q;->f(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_f

    .line 61
    :cond_3b
    new-instance p1, Ld/k/d/n0;

    const-string p2, "Fragment "

    const-string v0, " did not call through to super.onPause()"

    invoke-static {p2, v2, v0}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    :goto_f
    if-ge p2, v7, :cond_40

    .line 62
    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string v2, "movefrom STARTED: "

    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const-string v9, "FragmentManager"

    invoke-static {v2, v4, v9}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_3d
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 63
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    .line 64
    iput-boolean v1, v4, Ld/k/d/r;->v:Z

    invoke-virtual {v4, v5}, Ld/k/d/r;->v(I)V

    .line 65
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v4, :cond_3e

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->V:Ld/k/d/m0;

    sget-object v9, Ld/m/d$a;->ON_STOP:Ld/m/d$a;

    .line 66
    iget-object v4, v4, Ld/k/d/m0;->e:Ld/m/i;

    invoke-virtual {v4, v9}, Ld/m/i;->d(Ld/m/d$a;)V

    .line 67
    :cond_3e
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->U:Ld/m/i;

    sget-object v9, Ld/m/d$a;->ON_STOP:Ld/m/d$a;

    invoke-virtual {v4, v9}, Ld/m/i;->d(Ld/m/d$a;)V

    iput v5, v2, Landroidx/fragment/app/Fragment;->e:I

    iput-boolean v8, v2, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->i0()V

    iget-boolean v4, v2, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v4, :cond_3f

    .line 68
    iget-object v2, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v4, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v4, v8}, Ld/k/d/q;->l(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_10

    .line 69
    :cond_3f
    new-instance p1, Ld/k/d/n0;

    const-string p2, "Fragment "

    const-string v0, " did not call through to super.onStop()"

    invoke-static {p2, v2, v0}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    :goto_10
    if-ge p2, v5, :cond_4b

    .line 70
    invoke-static {v7}, Ld/k/d/r;->N(I)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v2, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v2, :cond_42

    iget-object v2, p0, Ld/k/d/r;->n:Ld/k/d/o;

    check-cast v2, Ld/k/d/e$a;

    .line 71
    iget-object v2, v2, Ld/k/d/e$a;->i:Ld/k/d/e;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_42

    .line 72
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    if-nez v2, :cond_42

    invoke-virtual {v0}, Ld/k/d/x;->b()V

    :cond_42
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v2, :cond_49

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    if-eqz v4, :cond_49

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->E()Z

    move-result v2

    if-nez v2, :cond_49

    iget v2, p0, Ld/k/d/r;->m:I

    const/4 v4, 0x0

    if-le v2, v6, :cond_43

    iget-boolean v2, p0, Ld/k/d/r;->w:Z

    if-nez v2, :cond_43

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_43

    iget v2, p1, Landroidx/fragment/app/Fragment;->Q:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_43

    iget-object v2, p0, Ld/k/d/r;->n:Ld/k/d/o;

    .line 73
    iget-object v2, v2, Ld/k/d/o;->f:Landroid/content/Context;

    .line 74
    iget-object v3, p0, Ld/k/d/r;->o:Ld/k/d/k;

    invoke-static {v2, v3, p1, v8}, Ld/b/k/m$i;->E0(Landroid/content/Context;Ld/k/d/k;Landroidx/fragment/app/Fragment;Z)Ld/k/d/i;

    move-result-object v3

    :cond_43
    iput v4, p1, Landroidx/fragment/app/Fragment;->Q:F

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v3, :cond_48

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->A0(I)V

    iget-object v5, p0, Ld/k/d/r;->k:Ld/k/d/g0$a;

    .line 75
    iget-object v8, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    iget-object v7, p1, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v11, Ld/h/h/a;

    invoke-direct {v11}, Ld/h/h/a;-><init>()V

    new-instance v6, Ld/k/d/f;

    invoke-direct {v6, p1}, Ld/k/d/f;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 76
    monitor-enter v11

    .line 77
    :catch_1
    :goto_11
    :try_start_1
    iget-boolean v9, v11, Ld/h/h/a;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_44

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_11

    .line 78
    :cond_44
    :try_start_3
    iget-object v9, v11, Ld/h/h/a;->b:Ld/h/h/a$a;

    if-ne v9, v6, :cond_45

    goto :goto_12

    :cond_45
    iput-object v6, v11, Ld/h/h/a;->b:Ld/h/h/a$a;

    iget-boolean v9, v11, Ld/h/h/a;->a:Z

    if-eqz v9, :cond_46

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v6}, Ld/k/d/f;->a()V

    goto :goto_13

    :cond_46
    :goto_12
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :goto_13
    move-object v10, v5

    check-cast v10, Ld/k/d/r$b;

    invoke-virtual {v10, p1, v11}, Ld/k/d/r$b;->b(Landroidx/fragment/app/Fragment;Ld/h/h/a;)V

    iget-object v5, v3, Ld/k/d/i;->a:Landroid/view/animation/Animation;

    if-eqz v5, :cond_47

    new-instance v5, Ld/k/d/j;

    iget-object v3, v3, Ld/k/d/i;->a:Landroid/view/animation/Animation;

    invoke-direct {v5, v3, v7, v8}, Ld/k/d/j;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->u0(Landroid/view/View;)V

    new-instance v3, Ld/k/d/g;

    invoke-direct {v3, v7, p1, v10, v11}, Ld/k/d/g;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ld/k/d/g0$a;Ld/h/h/a;)V

    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_14

    :cond_47
    iget-object v3, v3, Ld/k/d/i;->b:Landroid/animation/Animator;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->v0(Landroid/animation/Animator;)V

    new-instance v5, Ld/k/d/h;

    move-object v6, v5

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Ld/k/d/h;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Ld/k/d/g0$a;Ld/h/h/a;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_14

    :catchall_0
    move-exception p1

    .line 80
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    .line 81
    :cond_48
    :goto_14
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_49

    return-void

    :cond_49
    iget-object v2, p0, Ld/k/d/r;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4a

    invoke-virtual {p0, p1}, Ld/k/d/r;->h(Landroidx/fragment/app/Fragment;)V

    goto :goto_15

    :cond_4a
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->A0(I)V

    :cond_4b
    :goto_15
    if-ge p2, v1, :cond_64

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v2, :cond_4c

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Z

    move-result v2

    if-nez v2, :cond_4c

    const/4 v2, 0x1

    goto :goto_16

    :cond_4c
    const/4 v2, 0x0

    :goto_16
    if-nez v2, :cond_4e

    iget-object v2, p0, Ld/k/d/r;->C:Ld/k/d/v;

    invoke-virtual {v2, p1}, Ld/k/d/v;->b(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_17

    :cond_4d
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    if-eqz v2, :cond_54

    .line 82
    iget-object v3, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v3, v2}, Ld/k/d/y;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 83
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v3, :cond_54

    .line 84
    iput-object v2, p1, Landroidx/fragment/app/Fragment;->k:Landroidx/fragment/app/Fragment;

    goto :goto_19

    .line 85
    :cond_4e
    :goto_17
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 86
    iget-object v3, p0, Ld/k/d/r;->c:Ld/k/d/y;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ld/k/d/y;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_19

    :cond_4f
    const/4 v3, 0x2

    invoke-static {v3}, Ld/k/d/r;->N(I)Z

    move-result v3

    if-eqz v3, :cond_50

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed fragment from active set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    iget-object v3, p0, Ld/k/d/r;->c:Ld/k/d/y;

    if-eqz v3, :cond_63

    .line 87
    iget-object v4, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 88
    iget-object v5, v3, Ld/k/d/y;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_51
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/k/d/x;

    if-eqz v6, :cond_51

    .line 89
    iget-object v6, v6, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 90
    iget-object v7, v4, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    iget-object v8, v6, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    iput-object v4, v6, Landroidx/fragment/app/Fragment;->k:Landroidx/fragment/app/Fragment;

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    goto :goto_18

    :cond_52
    const/4 v5, 0x0

    iget-object v6, v3, Ld/k/d/y;->b:Ljava/util/HashMap;

    iget-object v7, v4, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    if-eqz v5, :cond_53

    invoke-virtual {v3, v5}, Ld/k/d/y;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    iput-object v3, v4, Landroidx/fragment/app/Fragment;->k:Landroidx/fragment/app/Fragment;

    .line 91
    :cond_53
    invoke-virtual {p0, v2}, Ld/k/d/r;->a0(Landroidx/fragment/app/Fragment;)V

    .line 92
    :cond_54
    :goto_19
    iget-object v2, p0, Ld/k/d/r;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->A0(I)V

    const/4 p2, 0x1

    goto/16 :goto_1e

    :cond_55
    iget-object v2, p0, Ld/k/d/r;->n:Ld/k/d/o;

    iget-object v3, p0, Ld/k/d/r;->C:Ld/k/d/v;

    const/4 v4, 0x3

    .line 93
    invoke-static {v4}, Ld/k/d/r;->N(I)Z

    move-result v4

    const-string v5, "FragmentManager"

    if-eqz v4, :cond_56

    const-string v4, "movefrom CREATED: "

    invoke-static {v4}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v4, v6, v5}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_56
    iget-object v4, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v6, v4, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v6, :cond_57

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->D()Z

    move-result v4

    if-nez v4, :cond_57

    const/4 v4, 0x1

    goto :goto_1a

    :cond_57
    const/4 v4, 0x0

    :goto_1a
    if-nez v4, :cond_59

    iget-object v6, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v6}, Ld/k/d/v;->b(Landroidx/fragment/app/Fragment;)Z

    move-result v6

    if-eqz v6, :cond_58

    goto :goto_1b

    :cond_58
    const/4 v6, 0x0

    goto :goto_1c

    :cond_59
    :goto_1b
    const/4 v6, 0x1

    :goto_1c
    if-eqz v6, :cond_62

    instance-of v6, v2, Ld/m/v;

    if-eqz v6, :cond_5a

    .line 94
    iget-boolean v2, v3, Ld/k/d/v;->f:Z

    goto :goto_1d

    .line 95
    :cond_5a
    iget-object v2, v2, Ld/k/d/o;->f:Landroid/content/Context;

    .line 96
    instance-of v6, v2, Landroid/app/Activity;

    if-eqz v6, :cond_5b

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    xor-int/2addr v2, v1

    goto :goto_1d

    :cond_5b
    const/4 v2, 0x1

    :goto_1d
    if-nez v4, :cond_5c

    if-eqz v2, :cond_5f

    :cond_5c
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_61

    const/4 v4, 0x3

    .line 97
    invoke-static {v4}, Ld/k/d/r;->N(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing non-config state for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    iget-object v4, v3, Ld/k/d/v;->c:Ljava/util/HashMap;

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/k/d/v;

    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Ld/k/d/v;->a()V

    iget-object v4, v3, Ld/k/d/v;->c:Ljava/util/HashMap;

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    iget-object v4, v3, Ld/k/d/v;->d:Ljava/util/HashMap;

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/m/u;

    if-eqz v4, :cond_5f

    invoke-virtual {v4}, Ld/m/u;->a()V

    iget-object v3, v3, Ld/k/d/v;->d:Ljava/util/HashMap;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_5f
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 99
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v3}, Ld/k/d/r;->n()V

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->U:Ld/m/i;

    sget-object v4, Ld/m/d$a;->ON_DESTROY:Ld/m/d$a;

    invoke-virtual {v3, v4}, Ld/m/i;->d(Ld/m/d$a;)V

    const/4 v3, 0x0

    iput v3, v2, Landroidx/fragment/app/Fragment;->e:I

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->I:Z

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->S:Z

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->Q()V

    iget-boolean v4, v2, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v4, :cond_60

    .line 100
    iget-object v2, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v4, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v4, v3}, Ld/k/d/q;->d(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_1e

    .line 101
    :cond_60
    new-instance p1, Ld/k/d/n0;

    const-string p2, "Fragment "

    const-string v0, " did not call through to super.onDestroy()"

    invoke-static {p2, v2, v0}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    const/4 p1, 0x0

    .line 102
    throw p1

    .line 103
    :cond_62
    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    iput v3, v2, Landroidx/fragment/app/Fragment;->e:I

    goto :goto_1e

    :cond_63
    const/4 p1, 0x0

    .line 104
    throw p1

    :cond_64
    :goto_1e
    if-gez p2, :cond_6b

    .line 105
    iget-object v2, p0, Ld/k/d/r;->C:Ld/k/d/v;

    const/4 v3, 0x3

    .line 106
    invoke-static {v3}, Ld/k/d/r;->N(I)Z

    move-result v3

    const-string v4, "FragmentManager"

    if-eqz v3, :cond_65

    const-string v3, "movefrom ATTACHED: "

    invoke-static {v3}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v3, v5, v4}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_65
    iget-object v3, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const/4 v5, -0x1

    .line 107
    iput v5, v3, Landroidx/fragment/app/Fragment;->e:I

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->S()V

    const/4 v5, 0x0

    iput-object v5, v3, Landroidx/fragment/app/Fragment;->R:Landroid/view/LayoutInflater;

    iget-boolean v5, v3, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v5, :cond_6a

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    .line 108
    iget-boolean v6, v5, Ld/k/d/r;->w:Z

    if-nez v6, :cond_66

    .line 109
    invoke-virtual {v5}, Ld/k/d/r;->n()V

    new-instance v5, Ld/k/d/t;

    invoke-direct {v5}, Ld/k/d/t;-><init>()V

    iput-object v5, v3, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    .line 110
    :cond_66
    iget-object v3, v0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v5, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ld/k/d/q;->e(Landroidx/fragment/app/Fragment;Z)V

    iget-object v3, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const/4 v5, -0x1

    iput v5, v3, Landroidx/fragment/app/Fragment;->e:I

    const/4 v5, 0x0

    iput-object v5, v3, Landroidx/fragment/app/Fragment;->w:Ld/k/d/o;

    iput-object v5, v3, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/Fragment;

    iput-object v5, v3, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    iget-boolean v5, v3, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v5, :cond_67

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->D()Z

    move-result v3

    if-nez v3, :cond_67

    goto :goto_1f

    :cond_67
    const/4 v1, 0x0

    :goto_1f
    if-nez v1, :cond_68

    iget-object v1, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v1}, Ld/k/d/v;->b(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_6b

    :cond_68
    const/4 v1, 0x3

    invoke-static {v1}, Ld/k/d/r;->N(I)Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v1, "initState called for fragment: "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v2, v4}, Le/a/a/a/a;->i(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_69
    iget-object v0, v0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 111
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->z()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->o:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->p:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->q:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->r:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->s:Z

    iput v1, v0, Landroidx/fragment/app/Fragment;->u:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    new-instance v3, Ld/k/d/t;

    invoke-direct {v3}, Ld/k/d/t;-><init>()V

    iput-object v3, v0, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    iput-object v2, v0, Landroidx/fragment/app/Fragment;->w:Ld/k/d/o;

    iput v1, v0, Landroidx/fragment/app/Fragment;->z:I

    iput v1, v0, Landroidx/fragment/app/Fragment;->A:I

    iput-object v2, v0, Landroidx/fragment/app/Fragment;->B:Ljava/lang/String;

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->C:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->D:Z

    goto :goto_20

    .line 112
    :cond_6a
    new-instance p1, Ld/k/d/n0;

    const-string p2, "Fragment "

    const-string v0, " did not call through to super.onDetach()"

    invoke-static {p2, v3, v0}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_6b
    :goto_20
    iget v0, p1, Landroidx/fragment/app/Fragment;->e:I

    if-eq v0, p2, :cond_6d

    const/4 v0, 0x3

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    iput p2, p1, Landroidx/fragment/app/Fragment;->e:I

    :cond_6d
    return-void
.end method

.method public V()V
    .locals 2

    iget-object v0, p0, Ld/k/d/r;->n:Ld/k/d/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/k/d/r;->u:Z

    iput-boolean v0, p0, Ld/k/d/r;->v:Z

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 1
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v1}, Ld/k/d/r;->V()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public W()Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ld/k/d/r;->B(Z)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/k/d/r;->A(Z)V

    iget-object v1, p0, Ld/k/d/r;->q:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->k()Ld/k/d/r;

    move-result-object v1

    invoke-virtual {v1}, Ld/k/d/r;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Ld/k/d/r;->y:Ljava/util/ArrayList;

    iget-object v4, p0, Ld/k/d/r;->z:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ld/k/d/r;->X(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Ld/k/d/r;->b:Z

    :try_start_0
    iget-object v0, p0, Ld/k/d/r;->y:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/k/d/r;->z:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Ld/k/d/r;->Z(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ld/k/d/r;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ld/k/d/r;->f()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ld/k/d/r;->k0()V

    invoke-virtual {p0}, Ld/k/d/r;->w()V

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->b()V

    move v0, v1

    :goto_1
    return v0
.end method

.method public X(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    iget-object v0, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    :cond_1
    iget-object p4, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    const/4 v0, -0x1

    if-nez p3, :cond_3

    if-ltz p4, :cond_b

    :cond_3
    iget-object v3, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    if-ltz v3, :cond_6

    iget-object v4, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/k/d/a;

    if-eqz p3, :cond_4

    .line 1
    iget-object v5, v4, Ld/k/d/z;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    if-ltz p4, :cond_5

    iget v4, v4, Ld/k/d/a;->t:I

    if-ne p4, v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-gez v3, :cond_7

    return v1

    :cond_7
    and-int/2addr p5, v2

    if-eqz p5, :cond_a

    :cond_8
    :goto_2
    add-int/2addr v3, v0

    if-ltz v3, :cond_a

    iget-object p5, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ld/k/d/a;

    if-eqz p3, :cond_9

    .line 3
    iget-object v4, p5, Ld/k/d/z;->i:Ljava/lang/String;

    .line 4
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_9
    if-ltz p4, :cond_a

    iget p5, p5, Ld/k/d/a;->t:I

    if-ne p4, p5, :cond_a

    goto :goto_2

    :cond_a
    move v0, v3

    :cond_b
    iget-object p3, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v0, p3, :cond_c

    return v1

    :cond_c
    iget-object p3, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_3
    if-le p3, v0, :cond_d

    iget-object p4, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_d
    :goto_4
    return v2
.end method

.method public Y(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0, p1}, Ld/k/d/y;->h(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Ld/k/d/r;->O(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Ld/k/d/r;->t:Z

    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->p:Z

    invoke-virtual {p0, p1}, Ld/k/d/r;->h0(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public final Z(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Ld/k/d/r;->E(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/k/d/a;

    iget-boolean v3, v3, Ld/k/d/z;->p:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Ld/k/d/r;->D(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/k/d/a;

    iget-boolean v3, v3, Ld/k/d/z;->p:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Ld/k/d/r;->D(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Ld/k/d/r;->D(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ld/e/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/e/c<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Ld/k/d/r;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v1}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    iget v3, v2, Landroidx/fragment/app/Fragment;->e:I

    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v2, v0}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->C:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->O:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ld/e/c;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a0(Landroidx/fragment/app/Fragment;)V
    .locals 4

    invoke-virtual {p0}, Ld/k/d/r;->Q()Z

    move-result v0

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-static {v2}, Ld/k/d/r;->N(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ignoring removeRetainedFragment as the state is already saved"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ld/k/d/r;->C:Ld/k/d/v;

    .line 1
    iget-object v0, v0, Ld/k/d/v;->b:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    invoke-static {v2}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating retained Fragments: Removed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Ld/k/d/r;->R(Landroidx/fragment/app/Fragment;)V

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->D:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0, p1}, Ld/k/d/y;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->p:Z

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-nez v1, :cond_1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->P:Z

    :cond_1
    invoke-virtual {p0, p1}, Ld/k/d/r;->O(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/k/d/r;->t:Z

    :cond_2
    return-void
.end method

.method public b0(Landroid/os/Parcelable;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Ld/k/d/u;

    iget-object v2, v1, Ld/k/d/u;->e:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Ld/k/d/r;->c:Ld/k/d/y;

    .line 1
    iget-object v2, v2, Ld/k/d/y;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v2, v1, Ld/k/d/u;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "): "

    const/4 v5, 0x2

    const-string v6, "FragmentManager"

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/k/d/w;

    if-eqz v3, :cond_2

    iget-object v7, v0, Ld/k/d/r;->C:Ld/k/d/v;

    iget-object v8, v3, Ld/k/d/w;->f:Ljava/lang/String;

    .line 3
    iget-object v7, v7, Ld/k/d/v;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_4

    .line 4
    invoke-static {v5}, Ld/k/d/r;->N(I)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreSaveState: re-attaching retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v8, Ld/k/d/x;

    iget-object v9, v0, Ld/k/d/r;->l:Ld/k/d/q;

    invoke-direct {v8, v9, v7, v3}, Ld/k/d/x;-><init>(Ld/k/d/q;Landroidx/fragment/app/Fragment;Ld/k/d/w;)V

    goto :goto_1

    :cond_4
    new-instance v8, Ld/k/d/x;

    iget-object v7, v0, Ld/k/d/r;->l:Ld/k/d/q;

    iget-object v9, v0, Ld/k/d/r;->n:Ld/k/d/o;

    .line 5
    iget-object v9, v9, Ld/k/d/o;->f:Landroid/content/Context;

    .line 6
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ld/k/d/r;->K()Ld/k/d/n;

    move-result-object v10

    invoke-direct {v8, v7, v9, v10, v3}, Ld/k/d/x;-><init>(Ld/k/d/q;Ljava/lang/ClassLoader;Ld/k/d/n;Ld/k/d/w;)V

    .line 7
    :goto_1
    iget-object v3, v8, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 8
    iput-object v0, v3, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    invoke-static {v5}, Ld/k/d/r;->N(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "restoreSaveState: active ("

    invoke-static {v5}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, v0, Ld/k/d/r;->n:Ld/k/d/o;

    .line 9
    iget-object v3, v3, Ld/k/d/o;->f:Landroid/content/Context;

    .line 10
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v8, v3}, Ld/k/d/x;->a(Ljava/lang/ClassLoader;)V

    iget-object v3, v0, Ld/k/d/r;->c:Ld/k/d/y;

    .line 11
    iget-object v3, v3, Ld/k/d/y;->b:Ljava/util/HashMap;

    .line 12
    iget-object v4, v8, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 13
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v3, v0, Ld/k/d/r;->m:I

    .line 15
    iput v3, v8, Ld/k/d/x;->c:I

    goto/16 :goto_0

    .line 16
    :cond_6
    iget-object v2, v0, Ld/k/d/r;->C:Ld/k/d/v;

    .line 17
    iget-object v2, v2, Ld/k/d/v;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    iget-object v8, v0, Ld/k/d/r;->c:Ld/k/d/y;

    iget-object v9, v3, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ld/k/d/y;->c(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v5}, Ld/k/d/r;->N(I)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discarding retained Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " that was not found in the set of active Fragments "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Ld/k/d/u;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v0, v3, v7}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    iput-boolean v7, v3, Landroidx/fragment/app/Fragment;->p:Z

    const/4 v7, -0x1

    invoke-virtual {v0, v3, v7}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    goto :goto_2

    :cond_9
    iget-object v2, v0, Ld/k/d/r;->c:Ld/k/d/y;

    iget-object v3, v1, Ld/k/d/u;->f:Ljava/util/ArrayList;

    .line 19
    iget-object v8, v2, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ld/k/d/y;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-static {v5}, Ld/k/d/r;->N(I)Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: added ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v2, v9}, Ld/k/d/y;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for ("

    const-string v3, ")"

    invoke-static {v2, v8, v3}, Le/a/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_c
    iget-object v2, v1, Ld/k/d/u;->g:[Ld/k/d/b;

    if-eqz v2, :cond_12

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Ld/k/d/u;->g:[Ld/k/d/b;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    iget-object v8, v1, Ld/k/d/u;->g:[Ld/k/d/b;

    array-length v9, v8

    if-ge v3, v9, :cond_13

    aget-object v8, v8, v3

    if-eqz v8, :cond_11

    .line 21
    new-instance v9, Ld/k/d/a;

    invoke-direct {v9, v0}, Ld/k/d/a;-><init>(Ld/k/d/r;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    iget-object v12, v8, Ld/k/d/b;->e:[I

    array-length v12, v12

    if-ge v10, v12, :cond_f

    new-instance v12, Ld/k/d/z$a;

    invoke-direct {v12}, Ld/k/d/z$a;-><init>()V

    iget-object v13, v8, Ld/k/d/b;->e:[I

    add-int/lit8 v14, v10, 0x1

    aget v10, v13, v10

    iput v10, v12, Ld/k/d/z$a;->a:I

    invoke-static {v5}, Ld/k/d/r;->N(I)Z

    move-result v10

    if-eqz v10, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Instantiate "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " op #"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " base fragment #"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Ld/k/d/b;->e:[I

    aget v13, v13, v14

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v10, v8, Ld/k/d/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 22
    iget-object v13, v0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v13, v10}, Ld/k/d/y;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v10

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    .line 23
    :goto_6
    iput-object v10, v12, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    invoke-static {}, Ld/m/d$b;->values()[Ld/m/d$b;

    move-result-object v10

    iget-object v13, v8, Ld/k/d/b;->g:[I

    aget v13, v13, v11

    aget-object v10, v10, v13

    iput-object v10, v12, Ld/k/d/z$a;->g:Ld/m/d$b;

    invoke-static {}, Ld/m/d$b;->values()[Ld/m/d$b;

    move-result-object v10

    iget-object v13, v8, Ld/k/d/b;->h:[I

    aget v13, v13, v11

    aget-object v10, v10, v13

    iput-object v10, v12, Ld/k/d/z$a;->h:Ld/m/d$b;

    iget-object v10, v8, Ld/k/d/b;->e:[I

    add-int/lit8 v13, v14, 0x1

    aget v14, v10, v14

    iput v14, v12, Ld/k/d/z$a;->c:I

    add-int/lit8 v15, v13, 0x1

    aget v13, v10, v13

    iput v13, v12, Ld/k/d/z$a;->d:I

    add-int/lit8 v16, v15, 0x1

    aget v15, v10, v15

    iput v15, v12, Ld/k/d/z$a;->e:I

    add-int/lit8 v17, v16, 0x1

    aget v10, v10, v16

    iput v10, v12, Ld/k/d/z$a;->f:I

    iput v14, v9, Ld/k/d/z;->b:I

    iput v13, v9, Ld/k/d/z;->c:I

    iput v15, v9, Ld/k/d/z;->d:I

    iput v10, v9, Ld/k/d/z;->e:I

    invoke-virtual {v9, v12}, Ld/k/d/z;->b(Ld/k/d/z$a;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v17

    goto/16 :goto_5

    :cond_f
    iget v10, v8, Ld/k/d/b;->i:I

    iput v10, v9, Ld/k/d/z;->f:I

    iget-object v10, v8, Ld/k/d/b;->j:Ljava/lang/String;

    iput-object v10, v9, Ld/k/d/z;->i:Ljava/lang/String;

    iget v10, v8, Ld/k/d/b;->k:I

    iput v10, v9, Ld/k/d/a;->t:I

    iput-boolean v7, v9, Ld/k/d/z;->g:Z

    iget v10, v8, Ld/k/d/b;->l:I

    iput v10, v9, Ld/k/d/z;->j:I

    iget-object v10, v8, Ld/k/d/b;->m:Ljava/lang/CharSequence;

    iput-object v10, v9, Ld/k/d/z;->k:Ljava/lang/CharSequence;

    iget v10, v8, Ld/k/d/b;->n:I

    iput v10, v9, Ld/k/d/z;->l:I

    iget-object v10, v8, Ld/k/d/b;->o:Ljava/lang/CharSequence;

    iput-object v10, v9, Ld/k/d/z;->m:Ljava/lang/CharSequence;

    iget-object v10, v8, Ld/k/d/b;->p:Ljava/util/ArrayList;

    iput-object v10, v9, Ld/k/d/z;->n:Ljava/util/ArrayList;

    iget-object v10, v8, Ld/k/d/b;->q:Ljava/util/ArrayList;

    iput-object v10, v9, Ld/k/d/z;->o:Ljava/util/ArrayList;

    iget-boolean v8, v8, Ld/k/d/b;->r:Z

    iput-boolean v8, v9, Ld/k/d/z;->p:Z

    invoke-virtual {v9, v7}, Ld/k/d/a;->j(I)V

    .line 24
    invoke-static {v5}, Ld/k/d/r;->N(I)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "restoreAllState: back stack #"

    const-string v10, " (index "

    invoke-static {v8, v3, v10}, Le/a/a/a/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v9, Ld/k/d/a;->t:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ld/h/k/b;

    invoke-direct {v8, v6}, Ld/h/k/b;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v8, "  "

    invoke-virtual {v9, v8, v10, v2}, Ld/k/d/a;->l(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    :cond_10
    iget-object v8, v0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_11
    const/4 v1, 0x0

    .line 25
    throw v1

    :cond_12
    const/4 v2, 0x0

    .line 26
    iput-object v2, v0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    :cond_13
    iget-object v2, v0, Ld/k/d/r;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, v1, Ld/k/d/u;->h:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, v1, Ld/k/d/u;->i:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 27
    iget-object v2, v0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v2, v1}, Ld/k/d/y;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 28
    iput-object v1, v0, Ld/k/d/r;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ld/k/d/r;->s(Landroidx/fragment/app/Fragment;)V

    :cond_14
    return-void
.end method

.method public c(Ld/k/d/o;Ld/k/d/k;Landroidx/fragment/app/Fragment;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/k/d/o<",
            "*>;",
            "Ld/k/d/k;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ld/k/d/r;->n:Ld/k/d/o;

    if-nez v0, :cond_c

    iput-object p1, p0, Ld/k/d/r;->n:Ld/k/d/o;

    iput-object p2, p0, Ld/k/d/r;->o:Ld/k/d/k;

    iput-object p3, p0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ld/k/d/r;->k0()V

    :cond_0
    instance-of p2, p1, Ld/a/c;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Ld/a/c;

    invoke-interface {p2}, Ld/a/c;->g()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Ld/k/d/r;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_1

    move-object p2, p3

    :cond_1
    iget-object v0, p0, Ld/k/d/r;->g:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Ld/k/d/r;->h:Ld/a/b;

    if-eqz v0, :cond_3

    .line 1
    invoke-interface {p2}, Ld/m/h;->b()Ld/m/d;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ld/m/i;

    .line 2
    iget-object v2, v2, Ld/m/i;->b:Ld/m/d$b;

    .line 3
    sget-object v3, Ld/m/d$b;->e:Ld/m/d$b;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v2, v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Ld/m/d;Ld/a/b;)V

    .line 4
    iget-object p2, v1, Ld/a/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_4
    :goto_0
    if-eqz p3, :cond_6

    .line 6
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    .line 7
    iget-object p1, p1, Ld/k/d/r;->C:Ld/k/d/v;

    .line 8
    iget-object p2, p1, Ld/k/d/v;->c:Ljava/util/HashMap;

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/k/d/v;

    if-nez p2, :cond_5

    new-instance p2, Ld/k/d/v;

    iget-boolean v0, p1, Ld/k/d/v;->e:Z

    invoke-direct {p2, v0}, Ld/k/d/v;-><init>(Z)V

    iget-object p1, p1, Ld/k/d/v;->c:Ljava/util/HashMap;

    iget-object p3, p3, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_5
    iput-object p2, p0, Ld/k/d/r;->C:Ld/k/d/v;

    goto :goto_3

    :cond_6
    instance-of p2, p1, Ld/m/v;

    if-eqz p2, :cond_b

    check-cast p1, Ld/m/v;

    invoke-interface {p1}, Ld/m/v;->s()Ld/m/u;

    move-result-object p1

    .line 10
    sget-object p2, Ld/k/d/v;->h:Ld/m/r;

    const-class p3, Ld/k/d/v;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-static {v1, v0}, Le/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p1, Ld/m/u;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/m/q;

    .line 13
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    instance-of p1, p2, Ld/m/t;

    if-eqz p1, :cond_9

    check-cast p2, Ld/m/t;

    goto :goto_2

    :cond_7
    instance-of v1, p2, Ld/m/s;

    if-eqz v1, :cond_8

    check-cast p2, Ld/m/s;

    invoke-virtual {p2, v0, p3}, Ld/m/s;->a(Ljava/lang/String;Ljava/lang/Class;)Ld/m/q;

    move-result-object p2

    goto :goto_1

    :cond_8
    check-cast p2, Ld/k/d/v$a;

    invoke-virtual {p2, p3}, Ld/k/d/v$a;->a(Ljava/lang/Class;)Ld/m/q;

    move-result-object p2

    :goto_1
    move-object v1, p2

    .line 14
    iget-object p1, p1, Ld/m/u;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/m/q;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ld/m/q;->a()V

    .line 15
    :cond_9
    :goto_2
    check-cast v1, Ld/k/d/v;

    .line 16
    iput-object v1, p0, Ld/k/d/r;->C:Ld/k/d/v;

    goto :goto_3

    .line 17
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_b
    new-instance p1, Ld/k/d/v;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ld/k/d/v;-><init>(Z)V

    iput-object p1, p0, Ld/k/d/r;->C:Ld/k/d/v;

    :goto_3
    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c0()Landroid/os/Parcelable;
    .locals 11

    .line 1
    iget-object v0, p0, Ld/k/d/r;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Ld/k/d/r;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/k/d/r;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/r$g;

    invoke-virtual {v0}, Ld/k/d/r$g;->a()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ld/k/d/r;->y()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/k/d/r;->B(Z)Z

    iput-boolean v0, p0, Ld/k/d/r;->u:Z

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Ld/k/d/y;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Ld/k/d/y;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/k/d/x;

    if-eqz v4, :cond_1

    .line 4
    iget-object v6, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 5
    new-instance v7, Ld/k/d/w;

    invoke-direct {v7, v6}, Ld/k/d/w;-><init>(Landroidx/fragment/app/Fragment;)V

    iget-object v8, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget v8, v8, Landroidx/fragment/app/Fragment;->e:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_a

    iget-object v8, v7, Ld/k/d/w;->q:Landroid/os/Bundle;

    if-nez v8, :cond_a

    .line 6
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget-object v9, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 7
    invoke-virtual {v9, v8}, Landroidx/fragment/app/Fragment;->g0(Landroid/os/Bundle;)V

    iget-object v10, v9, Landroidx/fragment/app/Fragment;->X:Ld/r/b;

    invoke-virtual {v10, v8}, Ld/r/b;->b(Landroid/os/Bundle;)V

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v9}, Ld/k/d/r;->c0()Landroid/os/Parcelable;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v10, "android:support:fragments"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    :cond_2
    iget-object v9, v4, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object v10, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v9, v10, v8, v1}, Ld/k/d/q;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v8, v2

    :cond_3
    iget-object v9, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Ld/k/d/x;->b()V

    :cond_4
    iget-object v9, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    if-eqz v9, :cond_6

    if-nez v8, :cond_5

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :cond_5
    iget-object v9, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    const-string v10, "android:view_state"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_6
    iget-object v9, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->M:Z

    if-nez v9, :cond_8

    if-nez v8, :cond_7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :cond_7
    iget-object v9, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->M:Z

    const-string v10, "android:user_visible_hint"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    :cond_8
    iput-object v8, v7, Ld/k/d/w;->q:Landroid/os/Bundle;

    iget-object v9, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    if-eqz v9, :cond_b

    if-nez v8, :cond_9

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v7, Ld/k/d/w;->q:Landroid/os/Bundle;

    :cond_9
    iget-object v8, v7, Ld/k/d/w;->q:Landroid/os/Bundle;

    iget-object v9, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    const-string v10, "android:target_state"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->m:I

    if-eqz v4, :cond_b

    iget-object v8, v7, Ld/k/d/w;->q:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_a
    iget-object v4, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    iput-object v4, v7, Ld/k/d/w;->q:Landroid/os/Bundle;

    .line 10
    :cond_b
    :goto_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ld/k/d/r;->N(I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved state of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Ld/k/d/w;->q:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 11
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v5}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-object v2

    :cond_e
    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    .line 12
    iget-object v4, v0, Ld/k/d/y;->a:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v6, v0, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    monitor-exit v4

    move-object v6, v2

    goto :goto_4

    :cond_f
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    iget-object v8, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ld/k/d/r;->N(I)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding fragment ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_11
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_4
    iget-object v0, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    new-array v2, v0, [Ld/k/d/b;

    :goto_5
    if-ge v1, v0, :cond_13

    new-instance v4, Ld/k/d/b;

    iget-object v7, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/k/d/a;

    invoke-direct {v4, v7}, Ld/k/d/b;-><init>(Ld/k/d/a;)V

    aput-object v4, v2, v1

    invoke-static {v5}, Ld/k/d/r;->N(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "FragmentManager"

    const-string v7, "saveAllState: adding back stack #"

    const-string v8, ": "

    invoke-static {v7, v1, v8}, Le/a/a/a/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    new-instance v0, Ld/k/d/u;

    invoke-direct {v0}, Ld/k/d/u;-><init>()V

    iput-object v3, v0, Ld/k/d/u;->e:Ljava/util/ArrayList;

    iput-object v6, v0, Ld/k/d/u;->f:Ljava/util/ArrayList;

    iput-object v2, v0, Ld/k/d/u;->g:[Ld/k/d/b;

    iget-object v1, p0, Ld/k/d/r;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Ld/k/d/u;->h:I

    iget-object v1, p0, Ld/k/d/r;->q:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_14

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    iput-object v1, v0, Ld/k/d/u;->i:Ljava/lang/String;

    :cond_14
    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 15
    :cond_15
    throw v2
.end method

.method public d(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->D:Z

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->o:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v1, p1}, Ld/k/d/y;->a(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Ld/k/d/r;->O(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/k/d/r;->t:Z

    :cond_2
    return-void
.end method

.method public d0()V
    .locals 5

    iget-object v0, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld/k/d/r;->B:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld/k/d/r;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Ld/k/d/r;->n:Ld/k/d/o;

    .line 1
    iget-object v1, v1, Ld/k/d/o;->g:Landroid/os/Handler;

    .line 2
    iget-object v2, p0, Ld/k/d/r;->D:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Ld/k/d/r;->n:Ld/k/d/o;

    .line 3
    iget-object v1, v1, Ld/k/d/o;->g:Landroid/os/Handler;

    .line 4
    iget-object v2, p0, Ld/k/d/r;->D:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Ld/k/d/r;->k0()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e(Landroidx/fragment/app/Fragment;)V
    .locals 5

    iget-object v0, p0, Ld/k/d/r;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/h/h/a;

    .line 1
    monitor-enter v2

    :try_start_0
    iget-boolean v3, v2, Ld/h/h/a;->a:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v2, Ld/h/h/a;->a:Z

    iput-boolean v3, v2, Ld/h/h/a;->c:Z

    iget-object v3, v2, Ld/h/h/a;->b:Ld/h/h/a$a;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v3, Ld/k/d/f;

    :try_start_1
    invoke-virtual {v3}, Ld/k/d/f;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-enter v2

    :try_start_2
    iput-boolean v4, v2, Ld/h/h/a;->c:Z

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    :goto_1
    monitor-enter v2

    :try_start_4
    iput-boolean v4, v2, Ld/h/h/a;->c:Z

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    .line 2
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0, p1}, Ld/k/d/r;->h(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Ld/k/d/r;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public e0(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Ld/k/d/r;->J(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ld/k/d/l;

    if-eqz v0, :cond_0

    check-cast p1, Ld/k/d/l;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ld/k/d/l;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/k/d/r;->b:Z

    iget-object v0, p0, Ld/k/d/r;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Ld/k/d/r;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public f0(Landroidx/fragment/app/Fragment;Ld/m/d$b;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld/k/d/r;->F(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->w:Ld/k/d/o;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->T:Ld/m/d$b;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public g(Ld/k/d/a;ZZZ)V
    .locals 8

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Ld/k/d/a;->n(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ld/k/d/a;->m()V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Ld/k/d/r;->k:Ld/k/d/g0$a;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Ld/k/d/g0;->p(Ld/k/d/r;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLd/k/d/g0$a;)V

    :cond_1
    if-eqz p4, :cond_2

    iget p2, p0, Ld/k/d/r;->m:I

    invoke-virtual {p0, p2, v7}, Ld/k/d/r;->T(IZ)V

    :cond_2
    iget-object p2, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {p2}, Ld/k/d/y;->f()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Landroidx/fragment/app/Fragment;->O:Z

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->A:I

    invoke-virtual {p1, v0}, Ld/k/d/a;->o(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->Q:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    iget-object v2, p3, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    iput v1, p3, Landroidx/fragment/app/Fragment;->Q:F

    goto :goto_1

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p3, Landroidx/fragment/app/Fragment;->Q:F

    const/4 v0, 0x0

    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->O:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public g0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld/k/d/r;->F(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->w:Ld/k/d/o;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Ld/k/d/r;->q:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Ld/k/d/r;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Ld/k/d/r;->s(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Ld/k/d/r;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Ld/k/d/r;->s(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final h(Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ld/k/d/r;->v(I)V

    .line 3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->V:Ld/k/d/m0;

    sget-object v2, Ld/m/d$a;->ON_DESTROY:Ld/m/d$a;

    .line 4
    iget-object v0, v0, Ld/k/d/m0;->e:Ld/m/i;

    invoke-virtual {v0, v2}, Ld/m/i;->d(Ld/m/d$a;)V

    .line 5
    :cond_0
    iput v1, p1, Landroidx/fragment/app/Fragment;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->R()V

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Ld/n/a/a;->b(Ld/m/h;)Ld/n/a/a;

    move-result-object v1

    check-cast v1, Ld/n/a/b;

    .line 6
    iget-object v1, v1, Ld/n/a/b;->b:Ld/n/a/b$c;

    .line 7
    iget-object v2, v1, Ld/n/a/b$c;->b:Ld/e/i;

    invoke-virtual {v2}, Ld/e/i;->i()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, v1, Ld/n/a/b$c;->b:Ld/e/i;

    invoke-virtual {v4, v3}, Ld/e/i;->j(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/n/a/b$a;

    .line 8
    iget-object v4, v4, Ld/n/a/b$a;->j:Ld/m/h;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->t:Z

    .line 10
    iget-object v1, p0, Ld/k/d/r;->l:Ld/k/d/q;

    invoke-virtual {v1, p1, v0}, Ld/k/d/q;->n(Landroidx/fragment/app/Fragment;Z)V

    const/4 v1, 0x0

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->J:Landroid/view/ViewGroup;

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->V:Ld/k/d/m0;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->W:Ld/m/m;

    invoke-virtual {v2, v1}, Ld/m/m;->g(Ljava/lang/Object;)V

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->r:Z

    return-void

    .line 11
    :cond_2
    new-instance v0, Ld/k/d/n0;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-static {v1, p1, v2}, Le/a/a/a/a;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld/k/d/n0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h0(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-virtual {p0, p1}, Ld/k/d/r;->J(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Ld/k/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget v1, Ld/k/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    sget v1, Ld/k/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->r()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->y0(I)V

    :cond_1
    return-void
.end method

.method public i(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->D:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->D:Z

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0, p1}, Ld/k/d/y;->h(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Ld/k/d/r;->O(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Ld/k/d/r;->t:Z

    :cond_2
    invoke-virtual {p0, p1}, Ld/k/d/r;->h0(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public i0(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->C:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->P:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->P:Z

    :cond_1
    return-void
.end method

.method public j(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v1, p1}, Ld/k/d/r;->j(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j0()V
    .locals 3

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 1
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ld/k/d/r;->b:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld/k/d/r;->x:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->L:Z

    iget v2, p0, Ld/k/d/r;->m:I

    invoke-virtual {p0, v1, v2}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public k(Landroid/view/MenuItem;)Z
    .locals 5

    iget v0, p0, Ld/k/d/r;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 1
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->C:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->K()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v3, p1}, Ld/k/d/r;->k(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    return v2

    :cond_4
    return v1
.end method

.method public final k0()V
    .locals 4

    iget-object v0, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Ld/k/d/r;->h:Ld/a/b;

    .line 1
    iput-boolean v2, v1, Ld/a/b;->a:Z

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ld/k/d/r;->h:Ld/a/b;

    .line 3
    iget-object v1, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    .line 4
    iget-object v1, p0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1}, Ld/k/d/r;->P(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 5
    :goto_1
    iput-boolean v2, v0, Ld/a/b;->a:Z

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/k/d/r;->u:Z

    iput-boolean v0, p0, Ld/k/d/r;->v:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/k/d/r;->v(I)V

    return-void
.end method

.method public m(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    iget v0, p0, Ld/k/d/r;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_1

    invoke-virtual {v6, p1, p2}, Landroidx/fragment/app/Fragment;->l0(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ld/k/d/r;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    :goto_1
    iget-object p1, p0, Ld/k/d/r;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    iget-object p1, p0, Ld/k/d/r;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    if-eqz p1, :cond_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1
    :cond_6
    throw v3

    .line 2
    :cond_7
    iput-object v4, p0, Ld/k/d/r;->e:Ljava/util/ArrayList;

    return v5
.end method

.method public n()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/k/d/r;->w:Z

    invoke-virtual {p0, v0}, Ld/k/d/r;->B(Z)Z

    invoke-virtual {p0}, Ld/k/d/r;->y()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ld/k/d/r;->v(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/k/d/r;->n:Ld/k/d/o;

    iput-object v0, p0, Ld/k/d/r;->o:Ld/k/d/k;

    iput-object v0, p0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Ld/k/d/r;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ld/k/d/r;->h:Ld/a/b;

    .line 1
    iget-object v1, v1, Ld/a/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/a/a;

    invoke-interface {v2}, Ld/a/a;->cancel()V

    goto :goto_0

    .line 2
    :cond_0
    iput-object v0, p0, Ld/k/d/r;->g:Landroidx/activity/OnBackPressedDispatcher;

    :cond_1
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->o0()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p(Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->X()V

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v1, p1}, Ld/k/d/r;->p(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q(Landroid/view/MenuItem;)Z
    .locals 5

    iget v0, p0, Ld/k/d/r;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 1
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->C:Z

    if-nez v4, :cond_3

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->H:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->Y()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v3, p1}, Ld/k/d/r;->q(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    return v2

    :cond_4
    return v1
.end method

.method public r(Landroid/view/Menu;)V
    .locals 3

    iget v0, p0, Ld/k/d/r;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 1
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->C:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->H:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->Z()V

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v1, p1}, Ld/k/d/r;->r(Landroid/view/Menu;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final s(Landroidx/fragment/app/Fragment;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld/k/d/r;->F(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    invoke-virtual {v0, p1}, Ld/k/d/r;->P(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->n:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->d0()V

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    .line 2
    invoke-virtual {p1}, Ld/k/d/r;->k0()V

    iget-object v0, p1, Ld/k/d/r;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ld/k/d/r;->s(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public t(Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->b0()V

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->x:Ld/k/d/r;

    invoke-virtual {v1, p1}, Ld/k/d/r;->t(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    :goto_0
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ld/k/d/r;->n:Ld/k/d/o;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/k/d/r;->n:Ld/k/d/o;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/view/Menu;)Z
    .locals 4

    iget v0, p0, Ld/k/d/r;->m:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v0}, Ld/k/d/y;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->p0(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final v(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Ld/k/d/r;->b:Z

    iget-object v2, p0, Ld/k/d/r;->c:Ld/k/d/y;

    invoke-virtual {v2, p1}, Ld/k/d/y;->d(I)V

    invoke-virtual {p0, p1, v1}, Ld/k/d/r;->T(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Ld/k/d/r;->b:Z

    invoke-virtual {p0, v0}, Ld/k/d/r;->B(Z)Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Ld/k/d/r;->b:Z

    throw p1
.end method

.method public final w()V
    .locals 1

    iget-boolean v0, p0, Ld/k/d/r;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/k/d/r;->x:Z

    invoke-virtual {p0}, Ld/k/d/r;->j0()V

    :cond_0
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "    "

    invoke-static {p1, v0}, Le/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld/k/d/r;->c:Ld/k/d/y;

    if-eqz v1, :cond_8

    const-string v2, "    "

    .line 1
    invoke-static {p1, v2}, Le/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Ld/k/d/y;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Ld/k/d/y;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/k/d/x;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 2
    iget-object v4, v4, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/Fragment;->e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, v1, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    iget-object v3, v1, Ld/k/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4
    :cond_2
    iget-object p2, p0, Ld/k/d/r;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Ld/k/d/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_4

    iget-object v2, p0, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/k/d/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ld/k/d/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v0, p3, v3}, Ld/k/d/a;->l(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/k/d/r;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge p4, v0, :cond_5

    iget-object v1, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/k/d/r$e;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ld/k/d/r;->n:Ld/k/d/o;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ld/k/d/r;->o:Ld/k/d/k;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Ld/k/d/r;->m:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Ld/k/d/r;->u:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Ld/k/d/r;->v:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Ld/k/d/r;->w:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Ld/k/d/r;->t:Z

    if-eqz p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Ld/k/d/r;->t:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Ld/k/d/r;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/k/d/r;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1}, Ld/k/d/r;->e(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->w()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z(Ld/k/d/r$e;Z)V
    .locals 2

    if-nez p2, :cond_3

    iget-object v0, p0, Ld/k/d/r;->n:Ld/k/d/o;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Ld/k/d/r;->w:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ld/k/d/r;->Q()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_3
    :goto_0
    iget-object v0, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld/k/d/r;->n:Ld/k/d/o;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p2, p0, Ld/k/d/r;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ld/k/d/r;->d0()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
