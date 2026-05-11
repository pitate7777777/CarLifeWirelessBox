.class public final Ld/q/d/r;
.super Ld/q/d/s;
.source ""


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld/q/d/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$m;Ld/q/d/q;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v1, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->B(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v1, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->D(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v1, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->E(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v1, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->G(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 1
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$m;->r:I

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 1
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$m;->r:I

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->M()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->M()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 1
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$m;->p:I

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 1
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$m;->o:I

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->P()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 1
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$m;->r:I

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->P()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->M()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public n(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    iget-object v1, p0, Ld/q/d/s;->c:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->U(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Ld/q/d/s;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public o(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    iget-object v1, p0, Ld/q/d/s;->c:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->U(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Ld/q/d/s;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public p(I)V
    .locals 1

    iget-object v0, p0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->b0(I)V

    return-void
.end method
