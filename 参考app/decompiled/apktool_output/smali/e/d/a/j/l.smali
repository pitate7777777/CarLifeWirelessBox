.class public Le/d/a/j/l;
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

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v1, Le/d/a/j/i;->k:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    invoke-virtual {p1, v0, p0}, Le/d/a/j/i;->f(Ljava/util/Set;Le/d/a/j/b;)V

    return-void
.end method

.method public c()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v1, Le/d/a/j/i;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v3, v3, Le/d/a/j/i;->a:Ld/k/d/e;

    invoke-static {v3, v2}, Ld/b/k/m$i;->y0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v3, v3, Le/d/a/j/i;->k:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Le/d/a/j/a;->b()V

    return-void

    :cond_2
    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-boolean v2, v1, Le/d/a/j/i;->h:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Le/d/a/j/i;->q:Le/d/a/g/a;

    if-nez v2, :cond_3

    iget-object v1, v1, Le/d/a/j/i;->r:Le/d/a/g/b;

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    const/4 v2, 0x0

    iput-boolean v2, v1, Le/d/a/j/i;->h:Z

    iget-object v1, v1, Le/d/a/j/i;->l:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v2, v1, Le/d/a/j/i;->r:Le/d/a/g/b;

    if-eqz v2, :cond_4

    .line 1
    iget-object v1, p0, Le/d/a/j/a;->b:Le/d/a/j/c;

    const/4 v3, 0x1

    .line 2
    invoke-interface {v2, v1, v0, v3}, Le/d/a/g/b;->a(Le/d/a/j/c;Ljava/util/List;Z)V

    goto :goto_1

    :cond_4
    iget-object v1, v1, Le/d/a/j/i;->q:Le/d/a/g/a;

    .line 3
    iget-object v2, p0, Le/d/a/j/a;->b:Le/d/a/j/c;

    .line 4
    invoke-interface {v1, v2, v0}, Le/d/a/g/a;->a(Le/d/a/j/c;Ljava/util/List;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Le/d/a/j/a;->d:Le/d/a/j/i;

    iget-object v1, v0, Le/d/a/j/i;->f:Ljava/util/Set;

    invoke-virtual {v0, v1, p0}, Le/d/a/j/i;->f(Ljava/util/Set;Le/d/a/j/b;)V

    :goto_1
    return-void
.end method
