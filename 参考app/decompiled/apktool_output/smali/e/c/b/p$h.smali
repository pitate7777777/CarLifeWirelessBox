.class public Le/c/b/p$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/p$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Le/c/b/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Le/c/b/p$h;->a:I

    return-void
.end method


# virtual methods
.method public a(Le/c/b/r$e;Le/c/b/r$e;)Le/c/b/r$e;
    .locals 1

    iget p2, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Le/c/b/p$h;->a:I

    return-object p1
.end method

.method public b(Le/c/b/r$h;Le/c/b/r$h;)Le/c/b/r$h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/c/b/r$h<",
            "TT;>;",
            "Le/c/b/r$h<",
            "TT;>;)",
            "Le/c/b/r$h<",
            "TT;>;"
        }
    .end annotation

    iget p2, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Le/c/b/p$h;->a:I

    return-object p1
.end method

.method public c(Le/c/b/d0;Le/c/b/d0;)Le/c/b/d0;
    .locals 1

    iget p2, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Le/c/b/d0;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Le/c/b/p$h;->a:I

    return-object p1
.end method

.method public d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget p1, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, Le/c/b/p$h;->a:I

    return-object p2
.end method

.method public e(ZZZZ)Z
    .locals 0

    iget p1, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Le/c/b/r;->a(Z)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, Le/c/b/p$h;->a:I

    return p2
.end method

.method public f(Le/c/b/r$f;Le/c/b/r$f;)Le/c/b/r$f;
    .locals 1

    iget p2, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Le/c/b/p$h;->a:I

    return-object p1
.end method

.method public g(ZLe/c/b/g;ZLe/c/b/g;)Le/c/b/g;
    .locals 0

    iget p1, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Le/c/b/g;->hashCode()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, Le/c/b/p$h;->a:I

    return-object p2
.end method

.method public h(ZFZF)F
    .locals 0

    iget p1, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, Le/c/b/p$h;->a:I

    return p2
.end method

.method public i(ZJZJ)J
    .locals 0

    iget p1, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Le/c/b/r;->b(J)I

    move-result p4

    add-int/2addr p4, p1

    iput p4, p0, Le/c/b/p$h;->a:I

    return-wide p2
.end method

.method public j(ZDZD)D
    .locals 0

    iget p1, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p4

    invoke-static {p4, p5}, Le/c/b/r;->b(J)I

    move-result p4

    add-int/2addr p4, p1

    iput p4, p0, Le/c/b/p$h;->a:I

    return-wide p2
.end method

.method public k(Le/c/b/r$g;Le/c/b/r$g;)Le/c/b/r$g;
    .locals 1

    iget p2, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Le/c/b/p$h;->a:I

    return-object p1
.end method

.method public l(ZIZI)I
    .locals 0

    iget p1, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    add-int/2addr p1, p2

    iput p1, p0, Le/c/b/p$h;->a:I

    return p2
.end method

.method public m(Le/c/b/n;Le/c/b/n;)Le/c/b/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/n<",
            "Le/c/b/p$f;",
            ">;",
            "Le/c/b/n<",
            "Le/c/b/p$f;",
            ">;)",
            "Le/c/b/n<",
            "Le/c/b/p$f;",
            ">;"
        }
    .end annotation

    iget p2, p0, Le/c/b/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Le/c/b/n;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Le/c/b/p$h;->a:I

    return-object p1
.end method
