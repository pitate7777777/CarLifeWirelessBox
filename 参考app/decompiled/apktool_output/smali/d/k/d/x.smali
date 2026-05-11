.class public Ld/k/d/x;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ld/k/d/q;

.field public final b:Landroidx/fragment/app/Fragment;

.field public c:I


# direct methods
.method public constructor <init>(Ld/k/d/q;Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ld/k/d/x;->c:I

    iput-object p1, p0, Ld/k/d/x;->a:Ld/k/d/q;

    iput-object p2, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Ld/k/d/q;Landroidx/fragment/app/Fragment;Ld/k/d/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ld/k/d/x;->c:I

    iput-object p1, p0, Ld/k/d/x;->a:Ld/k/d/q;

    iput-object p2, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p2, Landroidx/fragment/app/Fragment;->u:I

    iput-boolean v0, p2, Landroidx/fragment/app/Fragment;->r:Z

    iput-boolean v0, p2, Landroidx/fragment/app/Fragment;->o:Z

    iget-object v0, p2, Landroidx/fragment/app/Fragment;->k:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p2, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    iget-object p2, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->k:Landroidx/fragment/app/Fragment;

    iget-object p1, p3, Ld/k/d/w;->q:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_1
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ld/k/d/q;Ljava/lang/ClassLoader;Ld/k/d/n;Ld/k/d/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ld/k/d/x;->c:I

    iput-object p1, p0, Ld/k/d/x;->a:Ld/k/d/q;

    iget-object p1, p4, Ld/k/d/w;->e:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Ld/k/d/n;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object p1, p4, Ld/k/d/w;->n:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    iget-object p1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object p2, p4, Ld/k/d/w;->n:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->w0(Landroid/os/Bundle;)V

    iget-object p1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object p2, p4, Ld/k/d/w;->f:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    iget-boolean p2, p4, Ld/k/d/w;->g:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->q:Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->s:Z

    iget p2, p4, Ld/k/d/w;->h:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->z:I

    iget p2, p4, Ld/k/d/w;->i:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->A:I

    iget-object p2, p4, Ld/k/d/w;->j:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->B:Ljava/lang/String;

    iget-boolean p2, p4, Ld/k/d/w;->k:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->E:Z

    iget-boolean p2, p4, Ld/k/d/w;->l:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->p:Z

    iget-boolean p2, p4, Ld/k/d/w;->m:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->D:Z

    iget-boolean p2, p4, Ld/k/d/w;->o:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->C:Z

    invoke-static {}, Ld/m/d$b;->values()[Ld/m/d$b;

    move-result-object p2

    iget p3, p4, Ld/k/d/w;->p:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->T:Ld/m/d$b;

    iget-object p1, p4, Ld/k/d/w;->q:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    iget-object p2, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    :goto_0
    const/4 p1, 0x2

    invoke-static {p1}, Ld/k/d/r;->N(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Instantiated fragment "

    invoke-static {p1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;)V
    .locals 3

    iget-object v0, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    iget-object p1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    iget-object p1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidx/fragment/app/Fragment;->m:I

    :cond_1
    iget-object p1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->h:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    iget-object p1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->h:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    :goto_0
    iget-object p1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    if-nez v0, :cond_3

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->L:Z

    :cond_3
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Ld/k/d/x;->b:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method
