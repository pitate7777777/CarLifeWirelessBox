.class public Landroidx/recyclerview/widget/RecyclerView$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/q/d/b0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$j$c;Landroidx/recyclerview/widget/RecyclerView$j$c;)V
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$a0;->t(Z)V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->P:Landroidx/recyclerview/widget/RecyclerView$j;

    move-object v3, v2

    check-cast v3, Ld/q/d/y;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_1

    .line 2
    iget v1, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->a:I

    iget v2, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    iget v2, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v5, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->a:I

    iget v6, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    iget v7, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->a:I

    iget v8, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Ld/q/d/y;->j(Landroidx/recyclerview/widget/RecyclerView$a0;IIII)Z

    move-result p1

    goto :goto_0

    :cond_1
    check-cast v3, Ld/q/d/k;

    .line 3
    invoke-virtual {v3, p1}, Ld/q/d/k;->o(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, v3, Ld/q/d/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->b0()V

    :cond_2
    return-void

    .line 5
    :cond_3
    throw v1

    .line 6
    :cond_4
    throw v1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$j$c;Landroidx/recyclerview/widget/RecyclerView$j$c;)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$s;->k(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$a0;->t(Z)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->P:Landroidx/recyclerview/widget/RecyclerView$j;

    move-object v2, v1

    check-cast v2, Ld/q/d/y;

    if-eqz v2, :cond_5

    .line 2
    iget v4, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->a:I

    iget v5, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->a:I

    :goto_0
    move v6, v1

    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    :goto_1
    move v7, p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->m()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v4, v6, :cond_2

    if-eq v5, v7, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p2, v6, v7, p3, v1}, Landroid/view/View;->layout(IIII)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ld/q/d/y;->j(Landroidx/recyclerview/widget/RecyclerView$a0;IIII)Z

    move-result p1

    goto :goto_2

    :cond_3
    check-cast v2, Ld/q/d/k;

    .line 3
    invoke-virtual {v2, p1}, Ld/q/d/k;->o(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    iget-object p2, v2, Ld/q/d/k;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->b0()V

    :cond_4
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
