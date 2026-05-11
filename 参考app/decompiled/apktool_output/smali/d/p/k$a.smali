.class public Ld/p/k$a;
.super Ld/h/l/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/p/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Ld/p/k;


# direct methods
.method public constructor <init>(Ld/p/k;)V
    .locals 0

    iput-object p1, p0, Ld/p/k$a;->d:Ld/p/k;

    invoke-direct {p0}, Ld/h/l/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Ld/h/l/x/b;)V
    .locals 2

    iget-object v0, p0, Ld/p/k$a;->d:Ld/p/k;

    iget-object v0, v0, Ld/p/k;->g:Ld/h/l/a;

    invoke-virtual {v0, p1, p2}, Ld/h/l/a;->d(Landroid/view/View;Ld/h/l/x/b;)V

    iget-object v0, p0, Ld/p/k$a;->d:Ld/p/k;

    iget-object v0, v0, Ld/p/k;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->e()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 2
    :goto_0
    iget-object v0, p0, Ld/p/k$a;->d:Ld/p/k;

    iget-object v0, v0, Ld/p/k;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    instance-of v1, v0, Ld/p/g;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Ld/p/g;

    invoke-virtual {v0, p1}, Ld/p/g;->i(I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->z(Ld/h/l/x/b;)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Ld/p/k$a;->d:Ld/p/k;

    iget-object v0, v0, Ld/p/k;->g:Ld/h/l/a;

    invoke-virtual {v0, p1, p2, p3}, Ld/h/l/a;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
