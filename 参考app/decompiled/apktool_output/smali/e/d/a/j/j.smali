.class public Le/d/a/j/j;
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

    const-string p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->q0([Ljava/lang/String;I)V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    .line 1
    iget-object v0, v0, Le/d/a/j/i;->g:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v0, v0, Le/d/a/j/i;->g:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v0, v0, Le/d/a/j/i;->j:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v0, v0, Le/d/a/j/i;->a:Ld/k/d/e;

    invoke-static {v0, v1}, Ld/b/k/m$i;->y0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/d/a/j/a;->b()V

    return-void

    :cond_1
    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v0, v0, Le/d/a/j/i;->a:Ld/k/d/e;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Ld/b/k/m$i;->y0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v2, v2, Le/d/a/j/i;->a:Ld/k/d/e;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Ld/b/k/m$i;->y0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v2, v0, Le/d/a/j/i;->q:Le/d/a/g/a;

    if-nez v2, :cond_4

    iget-object v0, v0, Le/d/a/j/i;->r:Le/d/a/g/b;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/d/a/j/j;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v2, v1, Le/d/a/j/i;->r:Le/d/a/g/b;

    if-eqz v2, :cond_5

    .line 3
    iget-object v1, p0, Le/d/a/j/a;->b:Le/d/a/j/c;

    const/4 v3, 0x1

    .line 4
    invoke-interface {v2, v1, v0, v3}, Le/d/a/g/b;->a(Le/d/a/j/c;Ljava/util/List;Z)V

    goto :goto_1

    :cond_5
    iget-object v1, v1, Le/d/a/j/i;->q:Le/d/a/g/a;

    .line 5
    iget-object v2, p0, Le/d/a/j/a;->b:Le/d/a/j/c;

    .line 6
    invoke-interface {v1, v2, v0}, Le/d/a/g/a;->a(Le/d/a/j/c;Ljava/util/List;)V

    :goto_1
    return-void

    :cond_6
    invoke-virtual {p0}, Le/d/a/j/a;->b()V

    return-void
.end method
