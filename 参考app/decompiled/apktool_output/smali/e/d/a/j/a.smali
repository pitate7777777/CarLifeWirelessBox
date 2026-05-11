.class public abstract Le/d/a/j/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/d/a/j/b;


# instance fields
.field public a:Le/d/a/j/b;

.field public b:Le/d/a/j/c;

.field public c:Le/d/a/j/d;

.field public d:Le/d/a/j/i;


# direct methods
.method public constructor <init>(Le/d/a/j/i;)V
    .locals 1

    const-string v0, "pb"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    new-instance v0, Le/d/a/j/c;

    invoke-direct {v0, p1, p0}, Le/d/a/j/c;-><init>(Le/d/a/j/i;Le/d/a/j/b;)V

    iput-object v0, p0, Le/d/a/j/a;->b:Le/d/a/j/c;

    new-instance p1, Le/d/a/j/d;

    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    invoke-direct {p1, v0, p0}, Le/d/a/j/d;-><init>(Le/d/a/j/i;Le/d/a/j/b;)V

    iput-object p1, p0, Le/d/a/j/a;->c:Le/d/a/j/d;

    new-instance p1, Le/d/a/j/c;

    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    invoke-direct {p1, v0, p0}, Le/d/a/j/c;-><init>(Le/d/a/j/i;Le/d/a/j/b;)V

    iput-object p1, p0, Le/d/a/j/a;->b:Le/d/a/j/c;

    new-instance p1, Le/d/a/j/d;

    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    invoke-direct {p1, v0, p0}, Le/d/a/j/d;-><init>(Le/d/a/j/i;Le/d/a/j/b;)V

    iput-object p1, p0, Le/d/a/j/a;->c:Le/d/a/j/d;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    iget-object v0, p0, Le/d/a/j/a;->a:Le/d/a/j/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/d/a/j/b;->c()V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v1, Le/d/a/j/i;->l:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v1, Le/d/a/j/i;->m:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v1, Le/d/a/j/i;->j:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    .line 1
    iget-object v1, v1, Le/d/a/j/i;->g:Ljava/util/Set;

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    invoke-virtual {v1}, Le/d/a/j/i;->a()Ld/k/d/e;

    move-result-object v1

    invoke-static {v1, v2}, Ld/b/k/m$i;->y0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v1, Le/d/a/j/i;->k:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    .line 3
    iget-object v1, v1, Le/d/a/j/i;->g:Ljava/util/Set;

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x17

    if-eqz v1, :cond_4

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    invoke-virtual {v1}, Le/d/a/j/i;->d()I

    move-result v1

    if-lt v1, v3, :cond_4

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    invoke-virtual {v1}, Le/d/a/j/i;->a()Ld/k/d/e;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v1, Le/d/a/j/i;->k:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    .line 5
    iget-object v1, v1, Le/d/a/j/i;->g:Ljava/util/Set;

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_6

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    invoke-virtual {v1}, Le/d/a/j/i;->d()I

    move-result v1

    if-lt v1, v3, :cond_6

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    invoke-virtual {v1}, Le/d/a/j/i;->a()Ld/k/d/e;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v1, Le/d/a/j/i;->k:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    .line 7
    iget-object v1, v1, Le/d/a/j/i;->g:Ljava/util/Set;

    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_7

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v1, Le/d/a/j/i;->k:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v1, Le/d/a/j/i;->p:Le/d/a/g/d;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v4, v4, Le/d/a/j/i;->k:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, v3, v0}, Le/d/a/g/d;->a(ZLjava/util/List;Ljava/util/List;)V

    :cond_9
    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    .line 9
    invoke-virtual {v0}, Le/d/a/j/i;->b()Ld/k/d/r;

    move-result-object v1

    const-string v2, "InvisibleFragment"

    invoke-virtual {v1, v2}, Ld/k/d/r;->H(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Le/d/a/j/i;->b()Ld/k/d/r;

    move-result-object v0

    .line 10
    new-instance v2, Ld/k/d/a;

    invoke-direct {v2, v0}, Ld/k/d/a;-><init>(Ld/k/d/r;)V

    .line 11
    invoke-virtual {v2, v1}, Ld/k/d/z;->h(Landroidx/fragment/app/Fragment;)Ld/k/d/z;

    invoke-virtual {v2}, Ld/k/d/z;->d()I

    :cond_a
    :goto_4
    return-void
.end method

.method public d()Le/d/a/j/d;
    .locals 1

    iget-object v0, p0, Le/d/a/j/a;->c:Le/d/a/j/d;

    return-object v0
.end method

.method public e()Le/d/a/j/c;
    .locals 1

    iget-object v0, p0, Le/d/a/j/a;->b:Le/d/a/j/c;

    return-object v0
.end method
