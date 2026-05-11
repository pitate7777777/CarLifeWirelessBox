.class public Ld/f/b/h/l/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/f/b/h/l/b$a;,
        Ld/f/b/h/l/b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/f/b/h/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ld/f/b/h/l/b$a;

.field public c:Ld/f/b/h/e;


# direct methods
.method public constructor <init>(Ld/f/b/h/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/f/b/h/l/b;->a:Ljava/util/ArrayList;

    new-instance v0, Ld/f/b/h/l/b$a;

    invoke-direct {v0}, Ld/f/b/h/l/b$a;-><init>()V

    iput-object v0, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    iput-object p1, p0, Ld/f/b/h/l/b;->c:Ld/f/b/h/e;

    return-void
.end method


# virtual methods
.method public final a(Ld/f/b/h/l/b$b;Ld/f/b/h/d;I)Z
    .locals 5

    sget-object v0, Ld/f/b/h/d$a;->e:Ld/f/b/h/d$a;

    sget-object v1, Ld/f/b/h/d$a;->g:Ld/f/b/h/d$a;

    iget-object v2, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    invoke-virtual {p2}, Ld/f/b/h/d;->m()Ld/f/b/h/d$a;

    move-result-object v3

    iput-object v3, v2, Ld/f/b/h/l/b$a;->a:Ld/f/b/h/d$a;

    iget-object v2, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    invoke-virtual {p2}, Ld/f/b/h/d;->q()Ld/f/b/h/d$a;

    move-result-object v3

    iput-object v3, v2, Ld/f/b/h/l/b$a;->b:Ld/f/b/h/d$a;

    iget-object v2, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    invoke-virtual {p2}, Ld/f/b/h/d;->r()I

    move-result v3

    iput v3, v2, Ld/f/b/h/l/b$a;->c:I

    iget-object v2, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    invoke-virtual {p2}, Ld/f/b/h/d;->l()I

    move-result v3

    iput v3, v2, Ld/f/b/h/l/b$a;->d:I

    iget-object v2, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    const/4 v3, 0x0

    iput-boolean v3, v2, Ld/f/b/h/l/b$a;->i:Z

    iput p3, v2, Ld/f/b/h/l/b$a;->j:I

    iget-object p3, v2, Ld/f/b/h/l/b$a;->a:Ld/f/b/h/d$a;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v4, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    iget-object v4, v4, Ld/f/b/h/l/b$a;->b:Ld/f/b/h/d$a;

    if-ne v4, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz p3, :cond_2

    iget p3, p2, Ld/f/b/h/d;->U:F

    cmpl-float p3, p3, v4

    if-lez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget v1, p2, Ld/f/b/h/d;->U:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x4

    if-eqz p3, :cond_4

    iget-object p3, p2, Ld/f/b/h/d;->p:[I

    aget p3, p3, v3

    if-ne p3, v4, :cond_4

    iget-object p3, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    iput-object v0, p3, Ld/f/b/h/l/b$a;->a:Ld/f/b/h/d$a;

    :cond_4
    if-eqz v1, :cond_5

    iget-object p3, p2, Ld/f/b/h/d;->p:[I

    aget p3, p3, v2

    if-ne p3, v4, :cond_5

    iget-object p3, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    iput-object v0, p3, Ld/f/b/h/l/b$a;->b:Ld/f/b/h/d$a;

    :cond_5
    iget-object p3, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Ld/f/b/h/d;Ld/f/b/h/l/b$a;)V

    iget-object p1, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    iget p1, p1, Ld/f/b/h/l/b$a;->e:I

    invoke-virtual {p2, p1}, Ld/f/b/h/d;->M(I)V

    iget-object p1, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    iget p1, p1, Ld/f/b/h/l/b$a;->f:I

    invoke-virtual {p2, p1}, Ld/f/b/h/d;->H(I)V

    iget-object p1, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    iget-boolean p3, p1, Ld/f/b/h/l/b$a;->h:Z

    .line 1
    iput-boolean p3, p2, Ld/f/b/h/d;->A:Z

    .line 2
    iget p1, p1, Ld/f/b/h/l/b$a;->g:I

    invoke-virtual {p2, p1}, Ld/f/b/h/d;->E(I)V

    iget-object p1, p0, Ld/f/b/h/l/b;->b:Ld/f/b/h/l/b$a;

    iput v3, p1, Ld/f/b/h/l/b$a;->j:I

    iget-boolean p1, p1, Ld/f/b/h/l/b$a;->i:Z

    return p1
.end method

.method public final b(Ld/f/b/h/e;II)V
    .locals 3

    .line 1
    iget v0, p1, Ld/f/b/h/d;->Z:I

    .line 2
    iget v1, p1, Ld/f/b/h/d;->a0:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Ld/f/b/h/d;->K(I)V

    invoke-virtual {p1, v2}, Ld/f/b/h/d;->J(I)V

    .line 4
    iput p2, p1, Ld/f/b/h/d;->S:I

    iget v2, p1, Ld/f/b/h/d;->Z:I

    if-ge p2, v2, :cond_0

    iput v2, p1, Ld/f/b/h/d;->S:I

    .line 5
    :cond_0
    iput p3, p1, Ld/f/b/h/d;->T:I

    iget p2, p1, Ld/f/b/h/d;->a0:I

    if-ge p3, p2, :cond_1

    iput p2, p1, Ld/f/b/h/d;->T:I

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Ld/f/b/h/d;->K(I)V

    invoke-virtual {p1, v1}, Ld/f/b/h/d;->J(I)V

    iget-object p1, p0, Ld/f/b/h/l/b;->c:Ld/f/b/h/e;

    invoke-virtual {p1}, Ld/f/b/h/e;->P()V

    return-void
.end method

.method public c(Ld/f/b/h/e;)V
    .locals 5

    sget-object v0, Ld/f/b/h/d$a;->g:Ld/f/b/h/d$a;

    iget-object v1, p0, Ld/f/b/h/l/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p1, Ld/f/b/h/k;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p1, Ld/f/b/h/k;->o0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/f/b/h/d;

    invoke-virtual {v3}, Ld/f/b/h/d;->m()Ld/f/b/h/d$a;

    move-result-object v4

    if-eq v4, v0, :cond_0

    invoke-virtual {v3}, Ld/f/b/h/d;->q()Ld/f/b/h/d$a;

    move-result-object v4

    if-ne v4, v0, :cond_1

    :cond_0
    iget-object v4, p0, Ld/f/b/h/l/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ld/f/b/h/e;->W()V

    return-void
.end method
