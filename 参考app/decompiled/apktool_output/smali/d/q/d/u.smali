.class public Ld/q/d/u;
.super Ld/q/d/z;
.source ""


# instance fields
.field public c:Ld/q/d/s;

.field public d:Ld/q/d/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/q/d/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$m;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ld/q/d/u;->e(Landroidx/recyclerview/widget/RecyclerView$m;)Ld/q/d/s;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ld/q/d/u;->c(Landroid/view/View;Ld/q/d/s;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->f()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ld/q/d/u;->f(Landroidx/recyclerview/widget/RecyclerView$m;)Ld/q/d/s;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ld/q/d/u;->c(Landroid/view/View;Ld/q/d/s;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method public final c(Landroid/view/View;Ld/q/d/s;)I
    .locals 1

    invoke-virtual {p2, p1}, Ld/q/d/s;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, p1}, Ld/q/d/s;->c(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p2}, Ld/q/d/s;->k()I

    move-result v0

    invoke-virtual {p2}, Ld/q/d/s;->l()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$m;Ld/q/d/s;)Landroid/view/View;
    .locals 8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->y()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Ld/q/d/s;->k()I

    move-result v2

    invoke-virtual {p2}, Ld/q/d/s;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$m;->x(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, Ld/q/d/s;->e(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p2, v5}, Ld/q/d/s;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$m;)Ld/q/d/s;
    .locals 1

    iget-object v0, p0, Ld/q/d/u;->d:Ld/q/d/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    if-eq v0, p1, :cond_1

    .line 1
    :cond_0
    new-instance v0, Ld/q/d/q;

    invoke-direct {v0, p1}, Ld/q/d/q;-><init>(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 2
    iput-object v0, p0, Ld/q/d/u;->d:Ld/q/d/s;

    :cond_1
    iget-object p1, p0, Ld/q/d/u;->d:Ld/q/d/s;

    return-object p1
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView$m;)Ld/q/d/s;
    .locals 1

    iget-object v0, p0, Ld/q/d/u;->c:Ld/q/d/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld/q/d/s;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    if-eq v0, p1, :cond_1

    .line 1
    :cond_0
    new-instance v0, Ld/q/d/r;

    invoke-direct {v0, p1}, Ld/q/d/r;-><init>(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 2
    iput-object v0, p0, Ld/q/d/u;->c:Ld/q/d/s;

    :cond_1
    iget-object p1, p0, Ld/q/d/u;->c:Ld/q/d/s;

    return-object p1
.end method
