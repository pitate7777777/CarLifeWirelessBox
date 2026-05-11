.class public Ld/q/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/q/d/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/q/d/a$a;,
        Ld/q/d/a$b;
    }
.end annotation


# instance fields
.field public a:Ld/h/k/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/h/k/d<",
            "Ld/q/d/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/q/d/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/q/d/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ld/q/d/a$a;

.field public final e:Z

.field public final f:Ld/q/d/p;

.field public g:I


# direct methods
.method public constructor <init>(Ld/q/d/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/h/k/d;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ld/h/k/d;-><init>(I)V

    iput-object v0, p0, Ld/q/d/a;->a:Ld/h/k/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/q/d/a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Ld/q/d/a;->g:I

    iput-object p1, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iput-boolean v0, p0, Ld/q/d/a;->e:Z

    new-instance p1, Ld/q/d/p;

    invoke-direct {p1, p0}, Ld/q/d/p;-><init>(Ld/q/d/p$a;)V

    iput-object p1, p0, Ld/q/d/a;->f:Ld/q/d/p;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 7

    iget-object v0, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/q/d/a$b;

    iget v4, v3, Ld/q/d/a$b;->a:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget v3, v3, Ld/q/d/a$b;->d:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Ld/q/d/a;->f(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    :cond_0
    if-ne v4, v6, :cond_2

    iget v4, v3, Ld/q/d/a$b;->b:I

    iget v3, v3, Ld/q/d/a$b;->d:I

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Ld/q/d/a;->f(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget-object v4, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/q/d/a$b;

    check-cast v3, Ld/q/d/w;

    .line 1
    invoke-virtual {v3, v4}, Ld/q/d/w;->a(Ld/q/d/a$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ld/q/d/a;->l(Ljava/util/List;)V

    iput v1, p0, Ld/q/d/a;->g:I

    return-void
.end method

.method public c()V
    .locals 8

    invoke-virtual {p0}, Ld/q/d/a;->b()V

    iget-object v0, p0, Ld/q/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Ld/q/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/q/d/a$b;

    iget v4, v3, Ld/q/d/a$b;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    check-cast v4, Ld/q/d/w;

    .line 1
    invoke-virtual {v4, v3}, Ld/q/d/w;->a(Ld/q/d/a$b;)V

    .line 2
    iget-object v4, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget v5, v3, Ld/q/d/a$b;->b:I

    iget v3, v3, Ld/q/d/a$b;->d:I

    check-cast v4, Ld/q/d/w;

    invoke-virtual {v4, v5, v3}, Ld/q/d/w;->e(II)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    check-cast v4, Ld/q/d/w;

    .line 3
    invoke-virtual {v4, v3}, Ld/q/d/w;->a(Ld/q/d/a$b;)V

    .line 4
    iget-object v4, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget v5, v3, Ld/q/d/a$b;->b:I

    iget v6, v3, Ld/q/d/a$b;->d:I

    iget-object v3, v3, Ld/q/d/a$b;->c:Ljava/lang/Object;

    check-cast v4, Ld/q/d/w;

    invoke-virtual {v4, v5, v6, v3}, Ld/q/d/w;->c(IILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    check-cast v4, Ld/q/d/w;

    .line 5
    invoke-virtual {v4, v3}, Ld/q/d/w;->a(Ld/q/d/a$b;)V

    .line 6
    iget-object v4, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget v6, v3, Ld/q/d/a$b;->b:I

    iget v3, v3, Ld/q/d/a$b;->d:I

    check-cast v4, Ld/q/d/w;

    .line 7
    iget-object v7, v4, Ld/q/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6, v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->T(IIZ)V

    iget-object v4, v4, Ld/q/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v5, v4, Landroidx/recyclerview/widget/RecyclerView;->n0:Z

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->k0:Landroidx/recyclerview/widget/RecyclerView$x;

    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    add-int/2addr v5, v3

    iput v5, v4, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    goto :goto_1

    .line 8
    :cond_3
    iget-object v4, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    check-cast v4, Ld/q/d/w;

    .line 9
    invoke-virtual {v4, v3}, Ld/q/d/w;->a(Ld/q/d/a$b;)V

    .line 10
    iget-object v4, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget v5, v3, Ld/q/d/a$b;->b:I

    iget v3, v3, Ld/q/d/a$b;->d:I

    check-cast v4, Ld/q/d/w;

    invoke-virtual {v4, v5, v3}, Ld/q/d/w;->d(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ld/q/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ld/q/d/a;->l(Ljava/util/List;)V

    iput v1, p0, Ld/q/d/a;->g:I

    return-void
.end method

.method public final d(Ld/q/d/a$b;)V
    .locals 13

    iget v0, p1, Ld/q/d/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/16 v2, 0x8

    if-eq v0, v2, :cond_b

    iget v2, p1, Ld/q/d/a$b;->b:I

    invoke-virtual {p0, v2, v0}, Ld/q/d/a;->m(II)I

    move-result v0

    iget v2, p1, Ld/q/d/a$b;->b:I

    iget v3, p1, Ld/q/d/a$b;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x1

    :goto_1
    iget v9, p1, Ld/q/d/a$b;->d:I

    const/4 v10, 0x0

    if-ge v7, v9, :cond_8

    iget v9, p1, Ld/q/d/a$b;->b:I

    mul-int v11, v3, v7

    add-int/2addr v11, v9

    iget v9, p1, Ld/q/d/a$b;->a:I

    invoke-virtual {p0, v11, v9}, Ld/q/d/a;->m(II)I

    move-result v9

    iget v11, p1, Ld/q/d/a$b;->a:I

    if-eq v11, v4, :cond_3

    if-eq v11, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v0, 0x1

    if-ne v9, v11, :cond_4

    goto :goto_2

    :cond_3
    if-ne v9, v0, :cond_4

    :goto_2
    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    iget v11, p1, Ld/q/d/a$b;->a:I

    iget-object v12, p1, Ld/q/d/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v11, v0, v8, v12}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Ld/q/d/a;->e(Ld/q/d/a$b;I)V

    .line 1
    iget-boolean v11, p0, Ld/q/d/a;->e:Z

    if-nez v11, :cond_6

    iput-object v10, v0, Ld/q/d/a$b;->c:Ljava/lang/Object;

    iget-object v10, p0, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v10, v0}, Ld/h/k/d;->b(Ljava/lang/Object;)Z

    .line 2
    :cond_6
    iget v0, p1, Ld/q/d/a$b;->a:I

    if-ne v0, v5, :cond_7

    add-int/2addr v2, v8

    :cond_7
    move v0, v9

    const/4 v8, 0x1

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    iget-object v1, p1, Ld/q/d/a$b;->c:Ljava/lang/Object;

    .line 3
    iget-boolean v3, p0, Ld/q/d/a;->e:Z

    if-nez v3, :cond_9

    iput-object v10, p1, Ld/q/d/a$b;->c:Ljava/lang/Object;

    iget-object v3, p0, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v3, p1}, Ld/h/k/d;->b(Ljava/lang/Object;)Z

    :cond_9
    if-lez v8, :cond_a

    .line 4
    iget p1, p1, Ld/q/d/a$b;->a:I

    invoke-virtual {p0, p1, v0, v8, v1}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ld/q/d/a;->e(Ld/q/d/a$b;I)V

    .line 5
    iget-boolean v0, p0, Ld/q/d/a;->e:Z

    if-nez v0, :cond_a

    iput-object v10, p1, Ld/q/d/a$b;->c:Ljava/lang/Object;

    iget-object v0, p0, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v0, p1}, Ld/h/k/d;->b(Ljava/lang/Object;)Z

    :cond_a
    return-void

    .line 6
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ld/q/d/a$b;I)V
    .locals 3

    iget-object v0, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    check-cast v0, Ld/q/d/w;

    .line 1
    invoke-virtual {v0, p1}, Ld/q/d/w;->a(Ld/q/d/a$b;)V

    .line 2
    iget v0, p1, Ld/q/d/a$b;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget v1, p1, Ld/q/d/a$b;->d:I

    iget-object p1, p1, Ld/q/d/a$b;->c:Ljava/lang/Object;

    check-cast v0, Ld/q/d/w;

    invoke-virtual {v0, p2, v1, p1}, Ld/q/d/w;->c(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget p1, p1, Ld/q/d/a$b;->d:I

    check-cast v0, Ld/q/d/w;

    .line 3
    iget-object v1, v0, Ld/q/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->T(IIZ)V

    iget-object p2, v0, Ld/q/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v2, p2, Landroidx/recyclerview/widget/RecyclerView;->n0:Z

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->k0:Landroidx/recyclerview/widget/RecyclerView$x;

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    add-int/2addr v0, p1

    iput v0, p2, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    :goto_0
    return-void
.end method

.method public f(II)I
    .locals 5

    iget-object v0, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    iget-object v1, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/q/d/a$b;

    iget v2, v1, Ld/q/d/a$b;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget v2, v1, Ld/q/d/a$b;->b:I

    if-ne v2, p1, :cond_0

    iget p1, v1, Ld/q/d/a$b;->d:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v1, v1, Ld/q/d/a$b;->d:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v3, v1, Ld/q/d/a$b;->b:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iget v1, v1, Ld/q/d/a$b;->d:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v1, v1, Ld/q/d/a$b;->d:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Ld/q/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(IIILjava/lang/Object;)Ld/q/d/a$b;
    .locals 1

    iget-object v0, p0, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v0}, Ld/h/k/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/q/d/a$b;

    if-nez v0, :cond_0

    new-instance v0, Ld/q/d/a$b;

    invoke-direct {v0, p1, p2, p3, p4}, Ld/q/d/a$b;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput p1, v0, Ld/q/d/a$b;->a:I

    iput p2, v0, Ld/q/d/a$b;->b:I

    iput p3, v0, Ld/q/d/a$b;->d:I

    iput-object p4, v0, Ld/q/d/a$b;->c:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final i(Ld/q/d/a$b;)V
    .locals 5

    iget-object v0, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Ld/q/d/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget v1, p1, Ld/q/d/a$b;->b:I

    iget p1, p1, Ld/q/d/a$b;->d:I

    check-cast v0, Ld/q/d/w;

    invoke-virtual {v0, v1, p1}, Ld/q/d/w;->e(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget v1, p1, Ld/q/d/a$b;->b:I

    iget v2, p1, Ld/q/d/a$b;->d:I

    iget-object p1, p1, Ld/q/d/a$b;->c:Ljava/lang/Object;

    check-cast v0, Ld/q/d/w;

    invoke-virtual {v0, v1, v2, p1}, Ld/q/d/w;->c(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget v2, p1, Ld/q/d/a$b;->b:I

    iget p1, p1, Ld/q/d/a$b;->d:I

    check-cast v0, Ld/q/d/w;

    .line 1
    iget-object v3, v0, Ld/q/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->T(IIZ)V

    iget-object p1, v0, Ld/q/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->n0:Z

    goto :goto_0

    .line 2
    :cond_3
    iget-object v0, p0, Ld/q/d/a;->d:Ld/q/d/a$a;

    iget v1, p1, Ld/q/d/a$b;->b:I

    iget p1, p1, Ld/q/d/a$b;->d:I

    check-cast v0, Ld/q/d/w;

    invoke-virtual {v0, v1, p1}, Ld/q/d/w;->d(II)V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Ld/q/d/a;->f:Ld/q/d/p;

    iget-object v2, v0, Ld/q/d/a;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 1
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x8

    const/4 v9, -0x1

    if-ltz v4, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld/q/d/a$b;

    iget v10, v10, Ld/q/d/a$b;->a:I

    if-ne v10, v8, :cond_1

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_2
    const/4 v7, 0x4

    const/4 v10, 0x2

    if-eq v4, v9, :cond_23

    add-int/lit8 v8, v4, 0x1

    .line 2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ld/q/d/a$b;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ld/q/d/a$b;

    iget v13, v12, Ld/q/d/a$b;->a:I

    if-eq v13, v5, :cond_1e

    if-eq v13, v10, :cond_c

    if-eq v13, v7, :cond_4

    goto :goto_0

    .line 3
    :cond_4
    iget v6, v11, Ld/q/d/a$b;->d:I

    iget v9, v12, Ld/q/d/a$b;->b:I

    if-ge v6, v9, :cond_5

    add-int/lit8 v9, v9, -0x1

    iput v9, v12, Ld/q/d/a$b;->b:I

    goto :goto_3

    :cond_5
    iget v10, v12, Ld/q/d/a$b;->d:I

    add-int/2addr v9, v10

    if-ge v6, v9, :cond_6

    add-int/lit8 v10, v10, -0x1

    iput v10, v12, Ld/q/d/a$b;->d:I

    iget-object v6, v1, Ld/q/d/p;->a:Ld/q/d/p$a;

    iget v9, v11, Ld/q/d/a$b;->b:I

    iget-object v10, v12, Ld/q/d/a$b;->c:Ljava/lang/Object;

    check-cast v6, Ld/q/d/a;

    invoke-virtual {v6, v7, v9, v5, v10}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v5

    goto :goto_4

    :cond_6
    :goto_3
    move-object v5, v3

    :goto_4
    iget v6, v11, Ld/q/d/a$b;->b:I

    iget v9, v12, Ld/q/d/a$b;->b:I

    if-gt v6, v9, :cond_7

    add-int/lit8 v9, v9, 0x1

    iput v9, v12, Ld/q/d/a$b;->b:I

    goto :goto_5

    :cond_7
    iget v10, v12, Ld/q/d/a$b;->d:I

    add-int/2addr v9, v10

    if-ge v6, v9, :cond_8

    sub-int/2addr v9, v6

    iget-object v10, v1, Ld/q/d/p;->a:Ld/q/d/p$a;

    add-int/lit8 v6, v6, 0x1

    iget-object v13, v12, Ld/q/d/a$b;->c:Ljava/lang/Object;

    check-cast v10, Ld/q/d/a;

    invoke-virtual {v10, v7, v6, v9, v13}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v6

    iget v7, v12, Ld/q/d/a$b;->d:I

    sub-int/2addr v7, v9

    iput v7, v12, Ld/q/d/a$b;->d:I

    goto :goto_6

    :cond_8
    :goto_5
    move-object v6, v3

    :goto_6
    invoke-interface {v2, v8, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v7, v12, Ld/q/d/a$b;->d:I

    if-lez v7, :cond_9

    invoke-interface {v2, v4, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v7, v1, Ld/q/d/p;->a:Ld/q/d/p$a;

    check-cast v7, Ld/q/d/a;

    .line 4
    iget-boolean v8, v7, Ld/q/d/a;->e:Z

    if-nez v8, :cond_a

    iput-object v3, v12, Ld/q/d/a$b;->c:Ljava/lang/Object;

    iget-object v7, v7, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v7, v12}, Ld/h/k/d;->b(Ljava/lang/Object;)Z

    :cond_a
    :goto_7
    if-eqz v5, :cond_b

    .line 5
    invoke-interface {v2, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_b
    if-eqz v6, :cond_0

    invoke-interface {v2, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6
    :cond_c
    iget v7, v11, Ld/q/d/a$b;->b:I

    iget v9, v11, Ld/q/d/a$b;->d:I

    iget v13, v12, Ld/q/d/a$b;->b:I

    if-ge v7, v9, :cond_e

    if-ne v13, v7, :cond_d

    iget v13, v12, Ld/q/d/a$b;->d:I

    sub-int/2addr v9, v7

    if-ne v13, v9, :cond_d

    const/4 v6, 0x0

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_9

    :cond_e
    add-int/lit8 v14, v9, 0x1

    if-ne v13, v14, :cond_f

    iget v13, v12, Ld/q/d/a$b;->d:I

    sub-int/2addr v7, v9

    if-ne v13, v7, :cond_f

    const/4 v6, 0x1

    :goto_8
    move v7, v6

    const/4 v6, 0x1

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_9
    iget v9, v11, Ld/q/d/a$b;->d:I

    iget v13, v12, Ld/q/d/a$b;->b:I

    if-ge v9, v13, :cond_10

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Ld/q/d/a$b;->b:I

    goto :goto_a

    :cond_10
    iget v14, v12, Ld/q/d/a$b;->d:I

    add-int/2addr v13, v14

    if-ge v9, v13, :cond_11

    add-int/lit8 v14, v14, -0x1

    iput v14, v12, Ld/q/d/a$b;->d:I

    iput v10, v11, Ld/q/d/a$b;->a:I

    iput v5, v11, Ld/q/d/a$b;->d:I

    iget v4, v12, Ld/q/d/a$b;->d:I

    if-nez v4, :cond_0

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, v1, Ld/q/d/p;->a:Ld/q/d/p$a;

    check-cast v4, Ld/q/d/a;

    .line 7
    iget-boolean v5, v4, Ld/q/d/a;->e:Z

    if-nez v5, :cond_0

    iput-object v3, v12, Ld/q/d/a$b;->c:Ljava/lang/Object;

    iget-object v4, v4, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v4, v12}, Ld/h/k/d;->b(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8
    :cond_11
    :goto_a
    iget v5, v11, Ld/q/d/a$b;->b:I

    iget v9, v12, Ld/q/d/a$b;->b:I

    if-gt v5, v9, :cond_12

    add-int/lit8 v9, v9, 0x1

    iput v9, v12, Ld/q/d/a$b;->b:I

    goto :goto_b

    :cond_12
    iget v13, v12, Ld/q/d/a$b;->d:I

    add-int/2addr v9, v13

    if-ge v5, v9, :cond_13

    sub-int/2addr v9, v5

    iget-object v13, v1, Ld/q/d/p;->a:Ld/q/d/p$a;

    add-int/lit8 v5, v5, 0x1

    check-cast v13, Ld/q/d/a;

    invoke-virtual {v13, v10, v5, v9, v3}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v5

    iget v9, v11, Ld/q/d/a$b;->b:I

    iget v10, v12, Ld/q/d/a$b;->b:I

    sub-int/2addr v9, v10

    iput v9, v12, Ld/q/d/a$b;->d:I

    goto :goto_c

    :cond_13
    :goto_b
    move-object v5, v3

    :goto_c
    if-eqz v6, :cond_14

    invoke-interface {v2, v4, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, v1, Ld/q/d/p;->a:Ld/q/d/p$a;

    check-cast v4, Ld/q/d/a;

    .line 9
    iget-boolean v5, v4, Ld/q/d/a;->e:Z

    if-nez v5, :cond_0

    iput-object v3, v11, Ld/q/d/a$b;->c:Ljava/lang/Object;

    iget-object v4, v4, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v4, v11}, Ld/h/k/d;->b(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    if-eqz v7, :cond_18

    if-eqz v5, :cond_16

    .line 10
    iget v6, v11, Ld/q/d/a$b;->b:I

    iget v7, v5, Ld/q/d/a$b;->b:I

    if-le v6, v7, :cond_15

    iget v7, v5, Ld/q/d/a$b;->d:I

    sub-int/2addr v6, v7

    iput v6, v11, Ld/q/d/a$b;->b:I

    :cond_15
    iget v6, v11, Ld/q/d/a$b;->d:I

    iget v7, v5, Ld/q/d/a$b;->b:I

    if-le v6, v7, :cond_16

    iget v7, v5, Ld/q/d/a$b;->d:I

    sub-int/2addr v6, v7

    iput v6, v11, Ld/q/d/a$b;->d:I

    :cond_16
    iget v6, v11, Ld/q/d/a$b;->b:I

    iget v7, v12, Ld/q/d/a$b;->b:I

    if-le v6, v7, :cond_17

    iget v7, v12, Ld/q/d/a$b;->d:I

    sub-int/2addr v6, v7

    iput v6, v11, Ld/q/d/a$b;->b:I

    :cond_17
    iget v6, v11, Ld/q/d/a$b;->d:I

    iget v7, v12, Ld/q/d/a$b;->b:I

    if-le v6, v7, :cond_1c

    goto :goto_d

    :cond_18
    if-eqz v5, :cond_1a

    iget v6, v11, Ld/q/d/a$b;->b:I

    iget v7, v5, Ld/q/d/a$b;->b:I

    if-lt v6, v7, :cond_19

    iget v7, v5, Ld/q/d/a$b;->d:I

    sub-int/2addr v6, v7

    iput v6, v11, Ld/q/d/a$b;->b:I

    :cond_19
    iget v6, v11, Ld/q/d/a$b;->d:I

    iget v7, v5, Ld/q/d/a$b;->b:I

    if-lt v6, v7, :cond_1a

    iget v7, v5, Ld/q/d/a$b;->d:I

    sub-int/2addr v6, v7

    iput v6, v11, Ld/q/d/a$b;->d:I

    :cond_1a
    iget v6, v11, Ld/q/d/a$b;->b:I

    iget v7, v12, Ld/q/d/a$b;->b:I

    if-lt v6, v7, :cond_1b

    iget v7, v12, Ld/q/d/a$b;->d:I

    sub-int/2addr v6, v7

    iput v6, v11, Ld/q/d/a$b;->b:I

    :cond_1b
    iget v6, v11, Ld/q/d/a$b;->d:I

    iget v7, v12, Ld/q/d/a$b;->b:I

    if-lt v6, v7, :cond_1c

    :goto_d
    iget v7, v12, Ld/q/d/a$b;->d:I

    sub-int/2addr v6, v7

    iput v6, v11, Ld/q/d/a$b;->d:I

    :cond_1c
    invoke-interface {v2, v4, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v6, v11, Ld/q/d/a$b;->b:I

    iget v7, v11, Ld/q/d/a$b;->d:I

    if-eq v6, v7, :cond_1d

    invoke-interface {v2, v8, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1d
    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_e
    if-eqz v5, :cond_0

    invoke-interface {v2, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 11
    :cond_1e
    iget v5, v11, Ld/q/d/a$b;->d:I

    iget v7, v12, Ld/q/d/a$b;->b:I

    if-ge v5, v7, :cond_1f

    const/4 v6, -0x1

    goto :goto_f

    :cond_1f
    const/4 v6, 0x0

    :goto_f
    iget v5, v11, Ld/q/d/a$b;->b:I

    iget v7, v12, Ld/q/d/a$b;->b:I

    if-ge v5, v7, :cond_20

    add-int/lit8 v6, v6, 0x1

    :cond_20
    iget v5, v12, Ld/q/d/a$b;->b:I

    iget v7, v11, Ld/q/d/a$b;->b:I

    if-gt v5, v7, :cond_21

    iget v5, v12, Ld/q/d/a$b;->d:I

    add-int/2addr v7, v5

    iput v7, v11, Ld/q/d/a$b;->b:I

    :cond_21
    iget v5, v12, Ld/q/d/a$b;->b:I

    iget v7, v11, Ld/q/d/a$b;->d:I

    if-gt v5, v7, :cond_22

    iget v5, v12, Ld/q/d/a$b;->d:I

    add-int/2addr v7, v5

    iput v7, v11, Ld/q/d/a$b;->d:I

    :cond_22
    iget v5, v12, Ld/q/d/a$b;->b:I

    add-int/2addr v5, v6

    iput v5, v12, Ld/q/d/a$b;->b:I

    invoke-interface {v2, v4, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v8, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 12
    :cond_23
    iget-object v1, v0, Ld/q/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_39

    iget-object v4, v0, Ld/q/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/q/d/a$b;

    iget v11, v4, Ld/q/d/a$b;->a:I

    if-eq v11, v5, :cond_38

    if-eq v11, v10, :cond_2e

    if-eq v11, v7, :cond_25

    if-eq v11, v8, :cond_24

    goto/16 :goto_1a

    .line 13
    :cond_24
    invoke-virtual {v0, v4}, Ld/q/d/a;->i(Ld/q/d/a$b;)V

    goto/16 :goto_1a

    .line 14
    :cond_25
    iget v11, v4, Ld/q/d/a$b;->b:I

    iget v12, v4, Ld/q/d/a$b;->d:I

    add-int/2addr v12, v11

    move v13, v11

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_11
    if-ge v11, v12, :cond_2a

    iget-object v6, v0, Ld/q/d/a;->d:Ld/q/d/a$a;

    check-cast v6, Ld/q/d/w;

    invoke-virtual {v6, v11}, Ld/q/d/w;->b(I)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object v6

    if-nez v6, :cond_28

    invoke-virtual {v0, v11}, Ld/q/d/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_12

    :cond_26
    if-ne v15, v5, :cond_27

    iget-object v6, v4, Ld/q/d/a$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v7, v13, v14, v6}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v6

    invoke-virtual {v0, v6}, Ld/q/d/a;->i(Ld/q/d/a$b;)V

    move v13, v11

    const/4 v14, 0x0

    :cond_27
    const/4 v15, 0x0

    goto :goto_13

    :cond_28
    :goto_12
    if-nez v15, :cond_29

    iget-object v6, v4, Ld/q/d/a$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v7, v13, v14, v6}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v6

    invoke-virtual {v0, v6}, Ld/q/d/a;->d(Ld/q/d/a$b;)V

    move v13, v11

    const/4 v14, 0x0

    :cond_29
    const/4 v15, 0x1

    :goto_13
    add-int/2addr v14, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_2a
    iget v6, v4, Ld/q/d/a$b;->d:I

    if-eq v14, v6, :cond_2c

    iget-object v6, v4, Ld/q/d/a$b;->c:Ljava/lang/Object;

    .line 15
    iget-boolean v11, v0, Ld/q/d/a;->e:Z

    if-nez v11, :cond_2b

    iput-object v3, v4, Ld/q/d/a$b;->c:Ljava/lang/Object;

    iget-object v11, v0, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v11, v4}, Ld/h/k/d;->b(Ljava/lang/Object;)Z

    .line 16
    :cond_2b
    invoke-virtual {v0, v7, v13, v14, v6}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v4

    :cond_2c
    if-nez v15, :cond_2d

    invoke-virtual {v0, v4}, Ld/q/d/a;->d(Ld/q/d/a$b;)V

    goto/16 :goto_1a

    :cond_2d
    invoke-virtual {v0, v4}, Ld/q/d/a;->i(Ld/q/d/a$b;)V

    goto/16 :goto_1a

    .line 17
    :cond_2e
    iget v6, v4, Ld/q/d/a$b;->b:I

    iget v11, v4, Ld/q/d/a$b;->d:I

    add-int/2addr v11, v6

    move v12, v6

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_14
    if-ge v12, v11, :cond_34

    iget-object v15, v0, Ld/q/d/a;->d:Ld/q/d/a$a;

    check-cast v15, Ld/q/d/w;

    invoke-virtual {v15, v12}, Ld/q/d/w;->b(I)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object v15

    if-nez v15, :cond_31

    invoke-virtual {v0, v12}, Ld/q/d/a;->a(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    goto :goto_16

    :cond_2f
    if-ne v14, v5, :cond_30

    invoke-virtual {v0, v10, v6, v13, v3}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v14

    invoke-virtual {v0, v14}, Ld/q/d/a;->i(Ld/q/d/a$b;)V

    const/4 v14, 0x1

    goto :goto_15

    :cond_30
    const/4 v14, 0x0

    :goto_15
    const/4 v15, 0x0

    goto :goto_18

    :cond_31
    :goto_16
    if-nez v14, :cond_32

    invoke-virtual {v0, v10, v6, v13, v3}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v14

    invoke-virtual {v0, v14}, Ld/q/d/a;->d(Ld/q/d/a$b;)V

    const/4 v14, 0x1

    goto :goto_17

    :cond_32
    const/4 v14, 0x0

    :goto_17
    const/4 v15, 0x1

    :goto_18
    if-eqz v14, :cond_33

    sub-int/2addr v12, v13

    sub-int/2addr v11, v13

    const/4 v13, 0x1

    goto :goto_19

    :cond_33
    add-int/lit8 v13, v13, 0x1

    :goto_19
    add-int/2addr v12, v5

    move v14, v15

    goto :goto_14

    :cond_34
    iget v11, v4, Ld/q/d/a$b;->d:I

    if-eq v13, v11, :cond_36

    .line 18
    iget-boolean v11, v0, Ld/q/d/a;->e:Z

    if-nez v11, :cond_35

    iput-object v3, v4, Ld/q/d/a$b;->c:Ljava/lang/Object;

    iget-object v11, v0, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v11, v4}, Ld/h/k/d;->b(Ljava/lang/Object;)Z

    .line 19
    :cond_35
    invoke-virtual {v0, v10, v6, v13, v3}, Ld/q/d/a;->h(IIILjava/lang/Object;)Ld/q/d/a$b;

    move-result-object v4

    :cond_36
    if-nez v14, :cond_37

    invoke-virtual {v0, v4}, Ld/q/d/a;->d(Ld/q/d/a$b;)V

    goto :goto_1a

    :cond_37
    invoke-virtual {v0, v4}, Ld/q/d/a;->i(Ld/q/d/a$b;)V

    goto :goto_1a

    .line 20
    :cond_38
    invoke-virtual {v0, v4}, Ld/q/d/a;->i(Ld/q/d/a$b;)V

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 21
    :cond_39
    iget-object v1, v0, Ld/q/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 22
    :cond_3a
    throw v3
.end method

.method public k(Ld/q/d/a$b;)V
    .locals 1

    iget-boolean v0, p0, Ld/q/d/a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Ld/q/d/a$b;->c:Ljava/lang/Object;

    iget-object v0, p0, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v0, p1}, Ld/h/k/d;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/q/d/a$b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/q/d/a$b;

    invoke-virtual {p0, v2}, Ld/q/d/a;->k(Ld/q/d/a$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final m(II)I
    .locals 7

    iget-object v0, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ltz v0, :cond_d

    iget-object v3, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/q/d/a$b;

    iget v4, v3, Ld/q/d/a$b;->a:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_8

    iget v2, v3, Ld/q/d/a$b;->b:I

    iget v4, v3, Ld/q/d/a$b;->d:I

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    move v6, v4

    move v4, v2

    move v2, v6

    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v4, :cond_6

    iget v4, v3, Ld/q/d/a$b;->b:I

    if-ne v2, v4, :cond_3

    if-ne p2, v1, :cond_1

    iget v2, v3, Ld/q/d/a$b;->d:I

    add-int/2addr v2, v1

    :goto_2
    iput v2, v3, Ld/q/d/a$b;->d:I

    goto :goto_3

    :cond_1
    if-ne p2, v5, :cond_2

    iget v2, v3, Ld/q/d/a$b;->d:I

    sub-int/2addr v2, v1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_3
    if-ne p2, v1, :cond_4

    add-int/lit8 v4, v4, 0x1

    :goto_4
    iput v4, v3, Ld/q/d/a$b;->b:I

    goto :goto_5

    :cond_4
    if-ne p2, v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_6
    iget v2, v3, Ld/q/d/a$b;->b:I

    if-ge p1, v2, :cond_c

    if-ne p2, v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Ld/q/d/a$b;->b:I

    iget v2, v3, Ld/q/d/a$b;->d:I

    add-int/2addr v2, v1

    :goto_6
    iput v2, v3, Ld/q/d/a$b;->d:I

    goto :goto_8

    :cond_7
    if-ne p2, v5, :cond_c

    add-int/lit8 v2, v2, -0x1

    iput v2, v3, Ld/q/d/a$b;->b:I

    iget v2, v3, Ld/q/d/a$b;->d:I

    sub-int/2addr v2, v1

    goto :goto_6

    :cond_8
    iget v2, v3, Ld/q/d/a$b;->b:I

    if-gt v2, p1, :cond_a

    if-ne v4, v1, :cond_9

    iget v2, v3, Ld/q/d/a$b;->d:I

    sub-int/2addr p1, v2

    goto :goto_8

    :cond_9
    if-ne v4, v5, :cond_c

    iget v2, v3, Ld/q/d/a$b;->d:I

    add-int/2addr p1, v2

    goto :goto_8

    :cond_a
    if-ne p2, v1, :cond_b

    add-int/lit8 v2, v2, 0x1

    :goto_7
    iput v2, v3, Ld/q/d/a$b;->b:I

    goto :goto_8

    :cond_b
    if-ne p2, v5, :cond_c

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_c
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_d
    iget-object p2, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_9
    if-ltz p2, :cond_11

    iget-object v0, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/q/d/a$b;

    iget v1, v0, Ld/q/d/a$b;->a:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_f

    iget v1, v0, Ld/q/d/a$b;->d:I

    iget v4, v0, Ld/q/d/a$b;->b:I

    if-eq v1, v4, :cond_e

    if-gez v1, :cond_10

    :cond_e
    iget-object v1, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1
    iget-boolean v1, p0, Ld/q/d/a;->e:Z

    if-nez v1, :cond_10

    :goto_a
    iput-object v3, v0, Ld/q/d/a$b;->c:Ljava/lang/Object;

    iget-object v1, p0, Ld/q/d/a;->a:Ld/h/k/d;

    invoke-virtual {v1, v0}, Ld/h/k/d;->b(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2
    :cond_f
    iget v1, v0, Ld/q/d/a$b;->d:I

    if-gtz v1, :cond_10

    iget-object v1, p0, Ld/q/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Ld/q/d/a;->e:Z

    if-nez v1, :cond_10

    goto :goto_a

    :cond_10
    :goto_b
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    :cond_11
    return p1
.end method
