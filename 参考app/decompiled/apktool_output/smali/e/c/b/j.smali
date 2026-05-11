.class public final Le/c/b/j;
.super Le/c/b/c;
.source ""

# interfaces
.implements Le/c/b/r$b;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/c<",
        "Ljava/lang/Double;",
        ">;",
        "Le/c/b/r$b;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final h:Le/c/b/j;


# instance fields
.field public f:[D

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/c/b/j;

    invoke-direct {v0}, Le/c/b/j;-><init>()V

    sput-object v0, Le/c/b/j;->h:Le/c/b/j;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Le/c/b/c;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [D

    .line 1
    invoke-direct {p0}, Le/c/b/c;-><init>()V

    iput-object v0, p0, Le/c/b/j;->f:[D

    const/4 v0, 0x0

    iput v0, p0, Le/c/b/j;->g:I

    return-void
.end method

.method public constructor <init>([DI)V
    .locals 0

    invoke-direct {p0}, Le/c/b/c;-><init>()V

    iput-object p1, p0, Le/c/b/j;->f:[D

    iput p2, p0, Le/c/b/j;->g:I

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5

    check-cast p2, Ljava/lang/Double;

    .line 1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Le/c/b/c;->a()V

    if-ltz p1, :cond_1

    iget p2, p0, Le/c/b/j;->g:I

    if-gt p1, p2, :cond_1

    iget-object v2, p0, Le/c/b/j;->f:[D

    array-length v3, v2

    if-ge p2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [D

    const/4 v3, 0x0

    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Le/c/b/j;->f:[D

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Le/c/b/j;->g:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Le/c/b/j;->f:[D

    :goto_0
    iget-object p2, p0, Le/c/b/j;->f:[D

    aput-wide v0, p2, p1

    iget p1, p0, Le/c/b/j;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/c/b/j;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, Le/c/b/j;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/c;->a()V

    if-eqz p1, :cond_4

    instance-of v0, p1, Le/c/b/j;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Le/c/b/c;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_0
    check-cast p1, Le/c/b/j;

    iget v0, p1, Le/c/b/j;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    iget v3, p0, Le/c/b/j;->g:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    iget-object v0, p0, Le/c/b/j;->f:[D

    array-length v2, v0

    if-le v3, v2, :cond_2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Le/c/b/j;->f:[D

    :cond_2
    iget-object v0, p1, Le/c/b/j;->f:[D

    iget-object v2, p0, Le/c/b/j;->f:[D

    iget v4, p0, Le/c/b/j;->g:I

    iget p1, p1, Le/c/b/j;->g:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Le/c/b/j;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    :cond_4
    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic b(I)Le/c/b/r$h;
    .locals 0

    invoke-virtual {p0, p1}, Le/c/b/j;->f(I)Le/c/b/r$b;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Le/c/b/j;->g:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, Le/c/b/j;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 2

    const-string v0, "Index:"

    const-string v1, ", Size:"

    invoke-static {v0, p1, v1}, Le/a/a/a/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Le/c/b/j;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le/c/b/j;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Le/c/b/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Le/c/b/j;

    iget v1, p0, Le/c/b/j;->g:I

    iget v2, p1, Le/c/b/j;->g:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object p1, p1, Le/c/b/j;->f:[D

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Le/c/b/j;->g:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Le/c/b/j;->f:[D

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmpl-double v2, v4, v6

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public f(I)Le/c/b/r$b;
    .locals 2

    iget v0, p0, Le/c/b/j;->g:I

    if-lt p1, v0, :cond_0

    new-instance v0, Le/c/b/j;

    iget-object v1, p0, Le/c/b/j;->f:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iget v1, p0, Le/c/b/j;->g:I

    invoke-direct {v0, p1, v1}, Le/c/b/j;-><init>([DI)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/j;->d(I)V

    iget-object v0, p0, Le/c/b/j;->f:[D

    aget-wide v1, v0, p1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Le/c/b/j;->g:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Le/c/b/j;->f:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v2, v3}, Le/c/b/r;->b(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/c/b/c;->a()V

    invoke-virtual {p0, p1}, Le/c/b/j;->d(I)V

    iget-object v0, p0, Le/c/b/j;->f:[D

    aget-wide v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Le/c/b/j;->g:I

    sub-int/2addr v4, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Le/c/b/j;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Le/c/b/j;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p0}, Le/c/b/c;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Le/c/b/j;->g:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Le/c/b/j;->f:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Le/c/b/j;->f:[D

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Le/c/b/j;->g:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Le/c/b/j;->g:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Le/c/b/j;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ljava/lang/Double;

    .line 1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Le/c/b/c;->a()V

    invoke-virtual {p0, p1}, Le/c/b/j;->d(I)V

    iget-object p2, p0, Le/c/b/j;->f:[D

    aget-wide v2, p2, p1

    aput-wide v0, p2, p1

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Le/c/b/j;->g:I

    return v0
.end method
