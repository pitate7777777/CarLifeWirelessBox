.class public Landroidx/recyclerview/widget/RecyclerView$f;
.super Landroid/database/Observable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Landroidx/recyclerview/widget/RecyclerView$g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$g;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$u;

    .line 1
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->i(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->k0:Landroidx/recyclerview/widget/RecyclerView$x;

    iput-boolean v1, v4, Landroidx/recyclerview/widget/RecyclerView$x;->f:Z

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->d0(Z)V

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->h:Ld/q/d/a;

    invoke-virtual {v3}, Ld/q/d/a;->g()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(IILjava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v2, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$g;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$u;

    .line 1
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->i(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->h:Ld/q/d/a;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    if-ge p2, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v5, v3, Ld/q/d/a;->b:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v3, v6, p1, p2, p3}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v3, Ld/q/d/a;->g:I

    or-int/2addr v5, v6

    iput v5, v3, Ld/q/d/a;->g:I

    iget-object v3, v3, Ld/q/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_3
    throw v4

    :cond_4
    return-void
.end method
