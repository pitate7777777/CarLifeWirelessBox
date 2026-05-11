.class public final Le/c/b/d0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final f:Le/c/b/d0;


# instance fields
.field public a:I

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Le/c/b/d0;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Le/c/b/d0;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Le/c/b/d0;->f:Le/c/b/d0;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Le/c/b/d0;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le/c/b/d0;->d:I

    iput p1, p0, Le/c/b/d0;->a:I

    iput-object p2, p0, Le/c/b/d0;->b:[I

    iput-object p3, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Le/c/b/d0;->e:Z

    return-void
.end method

.method public static d(Le/c/b/d0;Le/c/b/d0;)Le/c/b/d0;
    .locals 6

    iget v0, p0, Le/c/b/d0;->a:I

    iget v1, p1, Le/c/b/d0;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Le/c/b/d0;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Le/c/b/d0;->b:[I

    iget v3, p0, Le/c/b/d0;->a:I

    iget v4, p1, Le/c/b/d0;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Le/c/b/d0;->c:[Ljava/lang/Object;

    iget p0, p0, Le/c/b/d0;->a:I

    iget p1, p1, Le/c/b/d0;->a:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Le/c/b/d0;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Le/c/b/d0;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Le/c/b/d0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()I
    .locals 6

    iget v0, p0, Le/c/b/d0;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Le/c/b/d0;->a:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Le/c/b/d0;->b:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1
    invoke-static {v3}, Le/c/b/i;->l(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Le/c/b/s;->a()Le/c/b/s;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    invoke-static {v3}, Le/c/b/i;->l(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Le/c/b/d0;

    invoke-virtual {v3}, Le/c/b/d0;->b()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Le/c/b/g;

    invoke-static {v3, v2}, Le/c/b/i;->c(ILe/c/b/g;)I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 3
    invoke-static {v3}, Le/c/b/i;->l(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    :goto_1
    add-int/2addr v1, v2

    goto :goto_3

    .line 4
    :cond_5
    iget-object v2, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Le/c/b/i;->o(IJ)I

    move-result v2

    :goto_2
    add-int/2addr v2, v1

    move v1, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v1, p0, Le/c/b/d0;->d:I

    return v1
.end method

.method public c(ILe/c/b/h;)Z
    .locals 8

    invoke-virtual {p0}, Le/c/b/d0;->a()V

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Le/c/b/h;->l()I

    move-result p2

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/c/b/d0;->e(ILjava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Le/c/b/s;->a()Le/c/b/s;

    move-result-object p1

    throw p1

    :cond_1
    return v3

    :cond_2
    new-instance v1, Le/c/b/d0;

    const/16 v6, 0x8

    new-array v7, v6, [I

    new-array v6, v6, [Ljava/lang/Object;

    .line 3
    invoke-direct {v1, v3, v7, v6, v2}, Le/c/b/d0;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 4
    :cond_3
    invoke-virtual {p2}, Le/c/b/h;->u()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v3, p2}, Le/c/b/d0;->c(ILe/c/b/h;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    shl-int/2addr v0, v5

    or-int/2addr v0, v4

    .line 5
    invoke-virtual {p2, v0}, Le/c/b/h;->a(I)V

    invoke-virtual {p0, p1, v1}, Le/c/b/d0;->e(ILjava/lang/Object;)V

    return v2

    :cond_5
    invoke-virtual {p2}, Le/c/b/h;->g()Le/c/b/g;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/c/b/d0;->e(ILjava/lang/Object;)V

    return v2

    .line 6
    :cond_6
    invoke-virtual {p2}, Le/c/b/h;->m()J

    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/c/b/d0;->e(ILjava/lang/Object;)V

    return v2

    .line 8
    :cond_7
    invoke-virtual {p2}, Le/c/b/h;->p()J

    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/c/b/d0;->e(ILjava/lang/Object;)V

    return v2
.end method

.method public final e(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Le/c/b/d0;->a:I

    iget-object v1, p0, Le/c/b/d0;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    :goto_0
    iget v1, p0, Le/c/b/d0;->a:I

    add-int/2addr v1, v0

    iget-object v0, p0, Le/c/b/d0;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Le/c/b/d0;->b:[I

    iget-object v0, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    .line 2
    :cond_1
    iget-object v0, p0, Le/c/b/d0;->b:[I

    iget v1, p0, Le/c/b/d0;->a:I

    aput p1, v0, v1

    iget-object p1, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/c/b/d0;->a:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Le/c/b/d0;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Le/c/b/d0;

    iget v2, p0, Le/c/b/d0;->a:I

    iget v3, p1, Le/c/b/d0;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Le/c/b/d0;->b:[I

    iget-object v3, p1, Le/c/b/d0;->b:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    iget-object p1, p1, Le/c/b/d0;->c:[Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public f(Le/c/b/i;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Le/c/b/d0;->a:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Le/c/b/d0;->b:[I

    aget v1, v1, v0

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Le/c/b/i;->x(II)V

    goto :goto_1

    :cond_0
    invoke-static {}, Le/c/b/s;->a()Le/c/b/s;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p1, v2, v3}, Le/c/b/i;->D(II)V

    iget-object v1, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Le/c/b/d0;

    invoke-virtual {v1, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v2, v1}, Le/c/b/i;->D(II)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Le/c/b/g;

    invoke-virtual {p1, v2, v1}, Le/c/b/i;->v(ILe/c/b/g;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Le/c/b/i;->y(IJ)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Le/c/b/i;->G(IJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Le/c/b/d0;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le/c/b/d0;->b:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/c/b/d0;->c:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
