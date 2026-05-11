.class public Le/b/b/o/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ld/k/d/r;

.field public b:Le/b/b/o/g;


# direct methods
.method public constructor <init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 9

    const-string v0, "CarLifeFragmentManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ld/k/d/e;->E()Ld/k/d/r;

    move-result-object p1

    iput-object p1, p0, Le/b/b/o/h;->a:Ld/k/d/r;

    if-eqz p1, :cond_3

    .line 1
    new-instance v3, Ld/k/d/a;

    invoke-direct {v3, p1}, Ld/k/d/a;-><init>(Ld/k/d/r;)V

    .line 2
    iget-object p1, p0, Le/b/b/o/h;->a:Ld/k/d/r;

    invoke-virtual {p1}, Ld/k/d/r;->L()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Le/b/b/o/p;->F0()Le/b/b/o/p;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mListFragment size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v7}, Ld/k/d/z;->h(Landroidx/fragment/app/Fragment;)Ld/k/d/z;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v5, "mListFragment is null"

    aput-object v5, p1, v2

    invoke-static {v0, p1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->B()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f090140

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {v3, p1, v4, v5, v1}, Ld/k/d/z;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 4
    :cond_2
    invoke-virtual {v3}, Ld/k/d/z;->d()I

    iput-object v4, p0, Le/b/b/o/h;->b:Le/b/b/o/g;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 5
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "CarLifeFragmentManager create fail"

    aput-object v3, v1, v2

    .line 6
    invoke-static {v0, v1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Le/b/b/o/g;)V
    .locals 8

    if-eqz p1, :cond_5

    iget-object v0, p0, Le/b/b/o/h;->b:Le/b/b/o/g;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Le/b/b/o/h;->a:Ld/k/d/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/k/d/r;->H(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Le/b/b/o/h;->a:Ld/k/d/r;

    if-eqz v1, :cond_4

    .line 1
    new-instance v2, Ld/k/d/a;

    invoke-direct {v2, v1}, Ld/k/d/a;-><init>(Ld/k/d/r;)V

    .line 2
    const-class v1, Le/b/b/o/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Le/b/b/o/h;->b:Le/b/b/o/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "CarLifeFragmentManager"

    const/4 v5, 0x1

    if-nez v1, :cond_1

    :try_start_1
    const-class v1, Le/b/b/o/s;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Le/b/b/o/h;->b:Le/b/b/o/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Le/b/b/o/h;->b:Le/b/b/o/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v4, v1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Le/b/b/o/h;->b:Le/b/b/o/g;

    invoke-virtual {v2, v1}, Ld/k/d/z;->h(Landroidx/fragment/app/Fragment;)Ld/k/d/z;

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Le/b/b/o/h;->b:Le/b/b/o/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v4, v1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Le/b/b/o/h;->b:Le/b/b/o/g;

    invoke-virtual {v2, v1}, Ld/k/d/z;->g(Landroidx/fragment/app/Fragment;)Ld/k/d/z;

    :goto_1
    if-eqz v0, :cond_2

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Show"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v4, v1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ld/k/d/z;->i(Landroidx/fragment/app/Fragment;)Ld/k/d/z;

    goto :goto_2

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->B()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f090140

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v2, v0, p1, v1, v5}, Ld/k/d/z;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 4
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ld/k/d/z;->d()I

    iput-object p1, p0, Le/b/b/o/h;->b:Le/b/b/o/g;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 5
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method
