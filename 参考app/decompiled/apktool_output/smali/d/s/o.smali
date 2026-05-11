.class public Ld/s/o;
.super Ld/s/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/s/o$b;
    }
.end annotation


# instance fields
.field public M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/s/i;",
            ">;"
        }
    .end annotation
.end field

.field public N:Z

.field public O:I

.field public P:Z

.field public Q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/s/i;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/s/o;->N:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/s/o;->P:Z

    iput v0, p0, Ld/s/o;->Q:I

    return-void
.end method


# virtual methods
.method public A(J)Ld/s/i;
    .locals 3

    .line 1
    iput-wide p1, p0, Ld/s/i;->g:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    invoke-virtual {v2, p1, p2}, Ld/s/i;->A(J)Ld/s/i;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public B(Ld/s/i$c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ld/s/i;->H:Ld/s/i$c;

    .line 2
    iget v0, p0, Ld/s/o;->Q:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ld/s/o;->Q:I

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    invoke-virtual {v2, p1}, Ld/s/i;->B(Ld/s/i$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public C(Landroid/animation/TimeInterpolator;)Ld/s/i;
    .locals 3

    .line 1
    iget v0, p0, Ld/s/o;->Q:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/s/o;->Q:I

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    invoke-virtual {v2, p1}, Ld/s/i;->C(Landroid/animation/TimeInterpolator;)Ld/s/i;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Ld/s/i;->h:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public D(Ld/s/e;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Ld/s/i;->K:Ld/s/e;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Ld/s/i;->I:Ld/s/e;

    .line 2
    iget v0, p0, Ld/s/o;->Q:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ld/s/o;->Q:I

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/i;

    invoke-virtual {v1, p1}, Ld/s/i;->D(Ld/s/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public E(Ld/s/n;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ld/s/i;->G:Ld/s/n;

    .line 2
    iget v0, p0, Ld/s/o;->Q:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ld/s/o;->Q:I

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    invoke-virtual {v2, p1}, Ld/s/i;->E(Ld/s/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F(J)Ld/s/i;
    .locals 0

    .line 1
    iput-wide p1, p0, Ld/s/i;->f:J

    return-object p0
.end method

.method public H(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, Ld/s/i;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ld/s/i;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public I(Ld/s/i;)Ld/s/o;
    .locals 5

    .line 1
    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Ld/s/i;->v:Ld/s/o;

    .line 2
    iget-wide v0, p0, Ld/s/i;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1, v0, v1}, Ld/s/i;->A(J)Ld/s/i;

    :cond_0
    iget v0, p0, Ld/s/o;->Q:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ld/s/i;->h:Landroid/animation/TimeInterpolator;

    .line 4
    invoke-virtual {p1, v0}, Ld/s/i;->C(Landroid/animation/TimeInterpolator;)Ld/s/i;

    :cond_1
    iget v0, p0, Ld/s/o;->Q:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/s/i;->E(Ld/s/n;)V

    :cond_2
    iget v0, p0, Ld/s/o;->Q:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Ld/s/i;->I:Ld/s/e;

    .line 6
    invoke-virtual {p1, v0}, Ld/s/i;->D(Ld/s/e;)V

    :cond_3
    iget v0, p0, Ld/s/o;->Q:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Ld/s/i;->H:Ld/s/i$c;

    .line 8
    invoke-virtual {p1, v0}, Ld/s/i;->B(Ld/s/i$c;)V

    :cond_4
    return-object p0
.end method

.method public J(I)Ld/s/i;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/s/i;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public K(I)Ld/s/o;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/s/o;->N:Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v0, p0, Ld/s/o;->N:Z

    :goto_0
    return-object p0
.end method

.method public a(Ld/s/i$d;)Ld/s/i;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ld/s/i;->a(Ld/s/i$d;)Ld/s/i;

    return-object p0
.end method

.method public b(Landroid/view/View;)Ld/s/i;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/i;

    invoke-virtual {v1, p1}, Ld/s/i;->b(Landroid/view/View;)Ld/s/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/s/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ld/s/o;->k()Ld/s/i;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 3

    invoke-super {p0}, Ld/s/i;->d()V

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    invoke-virtual {v2}, Ld/s/i;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ld/s/q;)V
    .locals 3

    iget-object v0, p1, Ld/s/q;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Ld/s/i;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/i;

    iget-object v2, p1, Ld/s/q;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Ld/s/i;->t(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ld/s/i;->e(Ld/s/q;)V

    iget-object v2, p1, Ld/s/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Ld/s/q;)V
    .locals 3

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    invoke-virtual {v2, p1}, Ld/s/i;->g(Ld/s/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Ld/s/q;)V
    .locals 3

    iget-object v0, p1, Ld/s/q;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Ld/s/i;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/i;

    iget-object v2, p1, Ld/s/q;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Ld/s/i;->t(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ld/s/i;->h(Ld/s/q;)V

    iget-object v2, p1, Ld/s/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()Ld/s/i;
    .locals 5

    invoke-super {p0}, Ld/s/i;->k()Ld/s/i;

    move-result-object v0

    check-cast v0, Ld/s/o;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ld/s/o;->M:Ljava/util/ArrayList;

    iget-object v1, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/s/i;

    invoke-virtual {v3}, Ld/s/i;->k()Ld/s/i;

    move-result-object v3

    .line 1
    iget-object v4, v0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Ld/s/i;->v:Ld/s/o;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public m(Landroid/view/ViewGroup;Ld/s/r;Ld/s/r;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ld/s/r;",
            "Ld/s/r;",
            "Ljava/util/ArrayList<",
            "Ld/s/q;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ld/s/q;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Ld/s/i;->f:J

    .line 2
    iget-object v3, v0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ld/s/i;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    iget-boolean v5, v0, Ld/s/o;->N:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 3
    :cond_0
    iget-wide v9, v6, Ld/s/i;->f:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 4
    invoke-virtual {v6, v9, v10}, Ld/s/i;->F(J)Ld/s/i;

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1, v2}, Ld/s/i;->F(J)Ld/s/i;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Ld/s/i;->m(Landroid/view/ViewGroup;Ld/s/r;Ld/s/r;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public v(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Ld/s/i;->v(Landroid/view/View;)V

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    invoke-virtual {v2, p1}, Ld/s/i;->v(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Ld/s/i$d;)Ld/s/i;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ld/s/i;->w(Ld/s/i$d;)Ld/s/i;

    return-object p0
.end method

.method public x(Landroid/view/View;)Ld/s/i;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/i;

    invoke-virtual {v1, p1}, Ld/s/i;->x(Landroid/view/View;)Ld/s/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/s/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public y(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Ld/s/i;->y(Landroid/view/View;)V

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    invoke-virtual {v2, p1}, Ld/s/i;->y(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z()V
    .locals 4

    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld/s/i;->G()V

    invoke-virtual {p0}, Ld/s/i;->n()V

    return-void

    .line 1
    :cond_0
    new-instance v0, Ld/s/o$b;

    invoke-direct {v0, p0}, Ld/s/o$b;-><init>(Ld/s/o;)V

    iget-object v1, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    invoke-virtual {v2, v0}, Ld/s/i;->a(Ld/s/i$d;)Ld/s/i;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Ld/s/o;->O:I

    .line 2
    iget-boolean v0, p0, Ld/s/o;->N:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/i;

    iget-object v2, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    new-instance v3, Ld/s/o$a;

    invoke-direct {v3, p0, v2}, Ld/s/o$a;-><init>(Ld/s/o;Ld/s/i;)V

    invoke-virtual {v1, v3}, Ld/s/i;->a(Ld/s/i$d;)Ld/s/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/i;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ld/s/i;->z()V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Ld/s/o;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/i;

    invoke-virtual {v1}, Ld/s/i;->z()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method
