.class public final Ld/k/d/a;
.super Ld/k/d/z;
.source ""

# interfaces
.implements Ld/k/d/r$e;


# instance fields
.field public final r:Ld/k/d/r;

.field public s:Z

.field public t:I


# direct methods
.method public constructor <init>(Ld/k/d/r;)V
    .locals 2

    invoke-virtual {p1}, Ld/k/d/r;->K()Ld/k/d/n;

    move-result-object v0

    iget-object v1, p1, Ld/k/d/r;->n:Ld/k/d/o;

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, v1, Ld/k/d/o;->f:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Ld/k/d/z;-><init>(Ld/k/d/n;Ljava/lang/ClassLoader;)V

    const/4 v0, -0x1

    iput v0, p0, Ld/k/d/a;->t:I

    iput-object p1, p0, Ld/k/d/a;->r:Ld/k/d/r;

    return-void
.end method

.method public static q(Ld/k/d/z$a;)Z
    .locals 2

    iget-object p0, p0, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->D:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-nez v1, :cond_1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->N:Landroidx/fragment/app/Fragment$b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Landroidx/fragment/app/Fragment$b;->p:Z

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Ld/k/d/z;->g:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Ld/k/d/a;->r:Ld/k/d/r;

    .line 1
    iget-object p2, p1, Ld/k/d/r;->d:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Ld/k/d/r;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object p1, p1, Ld/k/d/r;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld/k/d/a;->k(Z)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/k/d/a;->k(Z)I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld/k/d/z;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/k/d/z;->h:Z

    .line 2
    iget-object v0, p0, Ld/k/d/a;->r:Ld/k/d/r;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ld/k/d/r;->C(Ld/k/d/r$e;Z)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ld/k/d/z;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    iget-object p1, p0, Ld/k/d/a;->r:Ld/k/d/r;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    return-void
.end method

.method public g(Landroidx/fragment/app/Fragment;)Ld/k/d/z;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld/k/d/a;->r:Ld/k/d/r;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot hide Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ld/k/d/z$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Ld/k/d/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Ld/k/d/z;->b(Ld/k/d/z$a;)V

    return-object p0
.end method

.method public h(Landroidx/fragment/app/Fragment;)Ld/k/d/z;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld/k/d/a;->r:Ld/k/d/r;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ld/k/d/z$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Ld/k/d/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Ld/k/d/z;->b(Ld/k/d/z$a;)V

    return-object p0
.end method

.method public i(Landroidx/fragment/app/Fragment;)Ld/k/d/z;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld/k/d/a;->r:Ld/k/d/r;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ld/k/d/z$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Ld/k/d/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Ld/k/d/z;->b(Ld/k/d/z$a;)V

    return-object p0
.end method

.method public j(I)V
    .locals 7

    iget-boolean v0, p0, Ld/k/d/z;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/k/d/z$a;

    iget-object v5, v4, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    iget v6, v5, Landroidx/fragment/app/Fragment;->u:I

    add-int/2addr v6, p1

    iput v6, v5, Landroidx/fragment/app/Fragment;->u:I

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Bump nesting of "

    invoke-static {v5}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->u:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public k(Z)I
    .locals 3

    iget-boolean v0, p0, Ld/k/d/a;->s:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Ld/k/d/r;->N(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ld/h/k/b;

    invoke-direct {v0, v2}, Ld/h/k/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    .line 1
    invoke-virtual {p0, v0, v2, v1}, Ld/k/d/a;->l(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_0
    iput-boolean v1, p0, Ld/k/d/a;->s:Z

    iget-boolean v0, p0, Ld/k/d/z;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/k/d/a;->r:Ld/k/d/r;

    .line 3
    iget-object v0, v0, Ld/k/d/r;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 4
    :goto_0
    iput v0, p0, Ld/k/d/a;->t:I

    iget-object v0, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v0, p0, p1}, Ld/k/d/r;->z(Ld/k/d/r$e;Z)V

    iget p1, p0, Ld/k/d/a;->t:I

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ld/k/d/z;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ld/k/d/a;->t:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ld/k/d/a;->s:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Ld/k/d/z;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ld/k/d/z;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Ld/k/d/z;->b:I

    if-nez v0, :cond_1

    iget v0, p0, Ld/k/d/z;->c:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ld/k/d/z;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ld/k/d/z;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Ld/k/d/z;->d:I

    if-nez v0, :cond_3

    iget v0, p0, Ld/k/d/z;->e:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ld/k/d/z;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ld/k/d/z;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Ld/k/d/z;->j:I

    if-nez v0, :cond_5

    iget-object v0, p0, Ld/k/d/z;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ld/k/d/z;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ld/k/d/z;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Ld/k/d/z;->l:I

    if-nez v0, :cond_7

    iget-object v0, p0, Ld/k/d/z;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ld/k/d/z;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ld/k/d/z;->m:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    iget-object v2, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/k/d/z$a;

    iget v3, v2, Ld/k/d/z$a;->a:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "cmd="

    invoke-static {v3}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Ld/k/d/z$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    :pswitch_1
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_3
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_5
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_6
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_8
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_9
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_a
    const-string v3, "NULL"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v3, v2, Ld/k/d/z$a;->c:I

    if-nez v3, :cond_9

    iget v3, v2, Ld/k/d/z$a;->d:I

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Ld/k/d/z$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Ld/k/d/z$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v3, v2, Ld/k/d/z$a;->e:I

    if-nez v3, :cond_b

    iget v3, v2, Ld/k/d/z$a;->f:I

    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Ld/k/d/z$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Ld/k/d/z$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m()V
    .locals 8

    iget-object v0, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/k/d/z$a;

    iget-object v5, v4, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    iget v6, p0, Ld/k/d/z;->f:I

    .line 1
    iget-object v7, v5, Landroidx/fragment/app/Fragment;->N:Landroidx/fragment/app/Fragment$b;

    if-nez v7, :cond_0

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/Fragment$b;

    iget-object v7, v5, Landroidx/fragment/app/Fragment;->N:Landroidx/fragment/app/Fragment$b;

    iput v6, v7, Landroidx/fragment/app/Fragment$b;->e:I

    .line 2
    :cond_1
    :goto_1
    iget v6, v4, Ld/k/d/z$a;->a:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown cmd: "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Ld/k/d/z$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    iget-object v7, v4, Ld/k/d/z$a;->h:Ld/m/d$b;

    invoke-virtual {v6, v5, v7}, Ld/k/d/r;->f0(Landroidx/fragment/app/Fragment;Ld/m/d$b;)V

    goto :goto_2

    :pswitch_2
    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ld/k/d/r;->g0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_3
    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v6, v5}, Ld/k/d/r;->g0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_4
    iget v6, v4, Ld/k/d/z$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v6, v5, v1}, Ld/k/d/r;->e0(Landroidx/fragment/app/Fragment;Z)V

    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v6, v5}, Ld/k/d/r;->d(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_5
    iget v6, v4, Ld/k/d/z$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v6, v5}, Ld/k/d/r;->i(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_6
    iget v6, v4, Ld/k/d/z$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v6, v5, v1}, Ld/k/d/r;->e0(Landroidx/fragment/app/Fragment;Z)V

    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v6, v5}, Ld/k/d/r;->i0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_7
    iget v6, v4, Ld/k/d/z$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v6, v5}, Ld/k/d/r;->M(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_8
    iget v6, v4, Ld/k/d/z$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v6, v5}, Ld/k/d/r;->Y(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_9
    iget v6, v4, Ld/k/d/z$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v6, v5, v1}, Ld/k/d/r;->e0(Landroidx/fragment/app/Fragment;Z)V

    iget-object v6, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v6, v5}, Ld/k/d/r;->b(Landroidx/fragment/app/Fragment;)V

    :goto_2
    iget-boolean v6, p0, Ld/k/d/z;->p:Z

    if-nez v6, :cond_2

    iget v4, v4, Ld/k/d/z$a;->a:I

    if-eq v4, v3, :cond_2

    if-eqz v5, :cond_2

    iget-object v3, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v3, v5}, Ld/k/d/r;->S(Landroidx/fragment/app/Fragment;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Ld/k/d/z;->p:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ld/k/d/a;->r:Ld/k/d/r;

    iget v1, v0, Ld/k/d/r;->m:I

    invoke-virtual {v0, v1, v3}, Ld/k/d/r;->T(IZ)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public n(Z)V
    .locals 8

    iget-object v0, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v2, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/k/d/z$a;

    iget-object v3, v2, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_4

    iget v4, p0, Ld/k/d/z;->f:I

    const/16 v5, 0x2002

    const/16 v6, 0x1003

    const/16 v7, 0x1001

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    const/16 v5, 0x1001

    goto :goto_1

    :cond_1
    const/16 v5, 0x1003

    .line 1
    :cond_2
    :goto_1
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->N:Landroidx/fragment/app/Fragment$b;

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/Fragment$b;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->N:Landroidx/fragment/app/Fragment$b;

    iput v5, v4, Landroidx/fragment/app/Fragment$b;->e:I

    .line 2
    :cond_4
    :goto_2
    iget v4, v2, Ld/k/d/z$a;->a:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown cmd: "

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Ld/k/d/z$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    iget-object v5, v2, Ld/k/d/z$a;->g:Ld/m/d$b;

    invoke-virtual {v4, v3, v5}, Ld/k/d/r;->f0(Landroidx/fragment/app/Fragment;Ld/m/d$b;)V

    goto :goto_3

    :pswitch_2
    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v4, v3}, Ld/k/d/r;->g0(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :pswitch_3
    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ld/k/d/r;->g0(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :pswitch_4
    iget v4, v2, Ld/k/d/z$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v4, v3, v1}, Ld/k/d/r;->e0(Landroidx/fragment/app/Fragment;Z)V

    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v4, v3}, Ld/k/d/r;->i(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :pswitch_5
    iget v4, v2, Ld/k/d/z$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v4, v3}, Ld/k/d/r;->d(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :pswitch_6
    iget v4, v2, Ld/k/d/z$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v4, v3, v1}, Ld/k/d/r;->e0(Landroidx/fragment/app/Fragment;Z)V

    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v4, v3}, Ld/k/d/r;->M(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :pswitch_7
    iget v4, v2, Ld/k/d/z$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v4, v3}, Ld/k/d/r;->i0(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :pswitch_8
    iget v4, v2, Ld/k/d/z$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v4, v3}, Ld/k/d/r;->b(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :pswitch_9
    iget v4, v2, Ld/k/d/z$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->y0(I)V

    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v4, v3, v1}, Ld/k/d/r;->e0(Landroidx/fragment/app/Fragment;Z)V

    iget-object v4, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v4, v3}, Ld/k/d/r;->Y(Landroidx/fragment/app/Fragment;)V

    :goto_3
    iget-boolean v4, p0, Ld/k/d/z;->p:Z

    if-nez v4, :cond_5

    iget v2, v2, Ld/k/d/z$a;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v2, p0, Ld/k/d/a;->r:Ld/k/d/r;

    invoke-virtual {v2, v3}, Ld/k/d/r;->S(Landroidx/fragment/app/Fragment;)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Ld/k/d/z;->p:Z

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    iget-object p1, p0, Ld/k/d/a;->r:Ld/k/d/r;

    iget v0, p1, Ld/k/d/r;->m:I

    invoke-virtual {p1, v0, v1}, Ld/k/d/r;->T(IZ)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public o(I)Z
    .locals 4

    iget-object v0, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/k/d/z$a;

    iget-object v3, v3, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    iget v3, v3, Landroidx/fragment/app/Fragment;->A:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public p(Ljava/util/ArrayList;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/k/d/a;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    iget-object v4, p0, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/k/d/z$a;

    iget-object v4, v4, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1

    iget v4, v4, Landroidx/fragment/app/Fragment;->A:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    move v2, p2

    :goto_2
    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/k/d/a;

    iget-object v6, v5, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    iget-object v8, v5, Ld/k/d/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/k/d/z$a;

    iget-object v8, v8, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_2

    iget v8, v8, Landroidx/fragment/app/Fragment;->A:I

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    :goto_4
    if-ne v8, v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/k/d/a;->t:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/k/d/a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Ld/k/d/z;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/k/d/z;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
