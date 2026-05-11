.class public Lf/o/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_5

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_4

    iput p1, p0, Lf/o/a;->e:I

    if-lez p3, :cond_1

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p2, p3}, Ld/b/k/m$i;->L0(II)I

    move-result v0

    invoke-static {p1, p3}, Ld/b/k/m$i;->L0(II)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v0, p3}, Ld/b/k/m$i;->L0(II)I

    move-result p1

    sub-int/2addr p2, p1

    goto :goto_0

    :cond_1
    if-gez p3, :cond_3

    if-gt p1, p2, :cond_2

    goto :goto_0

    :cond_2
    neg-int v0, p3

    invoke-static {p1, v0}, Ld/b/k/m$i;->L0(II)I

    move-result p1

    invoke-static {p2, v0}, Ld/b/k/m$i;->L0(II)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {p1, v0}, Ld/b/k/m$i;->L0(II)I

    move-result p1

    add-int/2addr p2, p1

    .line 2
    :goto_0
    iput p2, p0, Lf/o/a;->f:I

    iput p3, p0, Lf/o/a;->g:I

    return-void

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step is zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4

    .line 1
    new-instance v0, Lf/o/b;

    iget v1, p0, Lf/o/a;->e:I

    iget v2, p0, Lf/o/a;->f:I

    iget v3, p0, Lf/o/a;->g:I

    invoke-direct {v0, v1, v2, v3}, Lf/o/b;-><init>(III)V

    return-object v0
.end method
