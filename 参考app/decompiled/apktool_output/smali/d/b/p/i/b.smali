.class public abstract Ld/b/p/i/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/b/p/i/m;


# instance fields
.field public e:Landroid/content/Context;

.field public f:Landroid/content/Context;

.field public g:Ld/b/p/i/g;

.field public h:Landroid/view/LayoutInflater;

.field public i:Ld/b/p/i/m$a;

.field public j:I

.field public k:I

.field public l:Ld/b/p/i/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/b/p/i/b;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ld/b/p/i/b;->h:Landroid/view/LayoutInflater;

    iput p2, p0, Ld/b/p/i/b;->j:I

    iput p3, p0, Ld/b/p/i/b;->k:I

    return-void
.end method


# virtual methods
.method public b(Ld/b/p/i/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    instance-of v0, p2, Ld/b/p/i/n$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Ld/b/p/i/n$a;

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Ld/b/p/i/b;->h:Landroid/view/LayoutInflater;

    iget v0, p0, Ld/b/p/i/b;->k:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Ld/b/p/i/n$a;

    .line 2
    :goto_0
    move-object p3, p0

    check-cast p3, Ld/b/q/c;

    .line 3
    invoke-interface {p2, p1, v1}, Ld/b/p/i/n$a;->e(Ld/b/p/i/i;I)V

    iget-object p1, p3, Ld/b/p/i/b;->l:Ld/b/p/i/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    move-object v0, p2

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Ld/b/p/i/g$b;)V

    iget-object p1, p3, Ld/b/q/c;->A:Ld/b/q/c$b;

    if-nez p1, :cond_1

    new-instance p1, Ld/b/q/c$b;

    invoke-direct {p1, p3}, Ld/b/q/c$b;-><init>(Ld/b/q/c;)V

    iput-object p1, p3, Ld/b/q/c;->A:Ld/b/q/c$b;

    :cond_1
    iget-object p1, p3, Ld/b/q/c;->A:Ld/b/q/c$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    .line 4
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public e(Ld/b/p/i/g;Ld/b/p/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Ld/b/p/i/g;Ld/b/p/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(Ld/b/p/i/m$a;)V
    .locals 0

    iput-object p1, p0, Ld/b/p/i/b;->i:Ld/b/p/i/m$a;

    return-void
.end method

.method public i(Ld/b/p/i/r;)Z
    .locals 1

    iget-object v0, p0, Ld/b/p/i/b;->i:Ld/b/p/i/m$a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld/b/p/i/b;->g:Ld/b/p/i/g;

    :goto_0
    invoke-interface {v0, p1}, Ld/b/p/i/m$a;->b(Ld/b/p/i/g;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public j(Z)V
    .locals 9

    iget-object p1, p0, Ld/b/p/i/b;->l:Ld/b/p/i/n;

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld/b/p/i/b;->g:Ld/b/p/i/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ld/b/p/i/g;->i()V

    iget-object v0, p0, Ld/b/p/i/b;->g:Ld/b/p/i/g;

    invoke-virtual {v0}, Ld/b/p/i/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/b/p/i/i;

    .line 1
    invoke-virtual {v5}, Ld/b/p/i/i;->g()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Ld/b/p/i/n$a;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Ld/b/p/i/n$a;

    invoke-interface {v7}, Ld/b/p/i/n$a;->getItemData()Ld/b/p/i/i;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p0, v5, v6, p1}, Ld/b/p/i/b;->b(Ld/b/p/i/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eq v5, v7, :cond_2

    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v8, v6, :cond_4

    .line 3
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v5, p0, Ld/b/p/i/b;->l:Ld/b/p/i/n;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    .line 4
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_9

    move-object v0, p0

    check-cast v0, Ld/b/q/c;

    .line 5
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, v0, Ld/b/q/c;->m:Ld/b/q/c$d;

    if-ne v2, v0, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    .line 6
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method
