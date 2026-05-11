.class public Le/d/a/j/k;
.super Le/d/a/j/a;
.source ""


# direct methods
.method public constructor <init>(Le/d/a/j/i;)V
    .locals 0

    invoke-direct {p0, p1}, Le/d/a/j/a;-><init>(Le/d/a/j/i;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    .line 1
    invoke-virtual {p1}, Le/d/a/j/i;->c()Le/d/a/j/e;

    move-result-object v0

    .line 2
    iput-object p1, v0, Le/d/a/j/e;->Z:Le/d/a/j/i;

    iput-object p0, v0, Le/d/a/j/e;->a0:Le/d/a/j/b;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->C0(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Le/d/a/j/e;->F0()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    .line 1
    iget-object v0, v0, Le/d/a/j/i;->g:Ljava/util/Set;

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_4

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/d/a/j/a;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v2, v0, Le/d/a/j/i;->q:Le/d/a/g/a;

    if-nez v2, :cond_2

    iget-object v0, v0, Le/d/a/j/i;->r:Le/d/a/g/b;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Le/d/a/j/a;->b()V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v2, v1, Le/d/a/j/i;->r:Le/d/a/g/b;

    if-eqz v2, :cond_3

    .line 3
    iget-object v1, p0, Le/d/a/j/a;->b:Le/d/a/j/c;

    const/4 v3, 0x1

    .line 4
    invoke-interface {v2, v1, v0, v3}, Le/d/a/g/b;->a(Le/d/a/j/c;Ljava/util/List;Z)V

    goto :goto_1

    :cond_3
    iget-object v1, v1, Le/d/a/j/i;->q:Le/d/a/g/a;

    .line 5
    iget-object v2, p0, Le/d/a/j/a;->b:Le/d/a/j/c;

    .line 6
    invoke-interface {v1, v2, v0}, Le/d/a/g/a;->a(Le/d/a/j/c;Ljava/util/List;)V

    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Le/d/a/j/a;->b()V

    return-void
.end method
