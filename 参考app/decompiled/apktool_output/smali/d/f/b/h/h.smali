.class public Ld/f/b/h/h;
.super Ld/f/b/h/d;
.source ""

# interfaces
.implements Ld/f/b/h/g;


# instance fields
.field public o0:[Ld/f/b/h/d;

.field public p0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/f/b/h/d;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ld/f/b/h/d;

    iput-object v0, p0, Ld/f/b/h/h;->o0:[Ld/f/b/h/d;

    const/4 v0, 0x0

    iput v0, p0, Ld/f/b/h/h;->p0:I

    return-void
.end method


# virtual methods
.method public P(Ljava/util/ArrayList;ILd/f/b/h/l/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/f/b/h/l/n;",
            ">;I",
            "Ld/f/b/h/l/n;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ld/f/b/h/h;->p0:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ld/f/b/h/h;->o0:[Ld/f/b/h/d;

    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Ld/f/b/h/l/n;->a(Ld/f/b/h/d;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, p0, Ld/f/b/h/h;->p0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ld/f/b/h/h;->o0:[Ld/f/b/h/d;

    aget-object v1, v1, v0

    invoke-static {v1, p2, p1, p3}, Ld/b/k/m$i;->O(Ld/f/b/h/d;ILjava/util/ArrayList;Ld/f/b/h/l/n;)Ld/f/b/h/l/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Ld/f/b/h/e;)V
    .locals 0

    return-void
.end method
