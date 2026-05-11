.class public Ld/k/d/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/k/d/q$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ld/k/d/q$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ld/k/d/r;


# direct methods
.method public constructor <init>(Ld/k/d/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Ld/k/d/q;->b:Ld/k/d/r;

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Ld/k/d/q;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/k/d/q$a;

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Ld/k/d/q$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Ld/k/d/q;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/k/d/q$a;

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Ld/k/d/q$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Ld/k/d/q;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/k/d/q$a;

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Ld/k/d/q$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public d(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Ld/k/d/q;->d(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/q$a;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Ld/k/d/q$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public e(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Ld/k/d/q;->e(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/q$a;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Ld/k/d/q$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public f(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Ld/k/d/q;->f(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/q$a;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Ld/k/d/q$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public g(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Ld/k/d/q;->g(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/k/d/q$a;

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Ld/k/d/q$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Ld/k/d/q;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/k/d/q$a;

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Ld/k/d/q$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public i(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Ld/k/d/q;->i(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/q$a;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Ld/k/d/q$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Ld/k/d/q;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/k/d/q$a;

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Ld/k/d/q$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public k(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Ld/k/d/q;->k(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/q$a;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Ld/k/d/q$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public l(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Ld/k/d/q;->l(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/q$a;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Ld/k/d/q$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, p3, v1}, Ld/k/d/q;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/k/d/q$a;

    if-eqz p4, :cond_1

    iget-boolean p2, p2, Ld/k/d/q$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public n(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Ld/k/d/q;->b:Ld/k/d/r;

    .line 1
    iget-object v0, v0, Ld/k/d/r;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/k/d/r;->l:Ld/k/d/q;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Ld/k/d/q;->n(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Ld/k/d/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/k/d/q$a;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Ld/k/d/q$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method
