.class public Le/c/b/i$c;
.super Le/c/b/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>([BII)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le/c/b/i;-><init>(Le/c/b/i$a;)V

    if-eqz p1, :cond_1

    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    iput-object p1, p0, Le/c/b/i$c;->d:[B

    iput p2, p0, Le/c/b/i$c;->f:I

    iput v2, p0, Le/c/b/i$c;->e:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    if-ltz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Le/c/b/i$c;->F(I)V

    goto :goto_0

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Le/c/b/i$c;->H(J)V

    :goto_0
    return-void
.end method

.method public final B(ILe/c/b/x;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    .line 2
    invoke-interface {p2}, Le/c/b/x;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    invoke-interface {p2, p0}, Le/c/b/x;->writeTo(Le/c/b/i;)V

    return-void
.end method

.method public final C(ILjava/lang/String;)V
    .locals 4

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    .line 2
    iget p1, p0, Le/c/b/i$c;->f:I

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Le/c/b/i;->n(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Le/c/b/i;->n(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    add-int v0, p1, v1

    iput v0, p0, Le/c/b/i$c;->f:I

    iget-object v2, p0, Le/c/b/i$c;->d:[B

    invoke-virtual {p0}, Le/c/b/i$c;->t()I

    move-result v3

    invoke-static {p2, v2, v0, v3}, Le/c/b/f0;->d(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput p1, p0, Le/c/b/i$c;->f:I

    sub-int v2, v0, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Le/c/b/i$c;->F(I)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Le/c/b/f0;->e(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Le/c/b/i$c;->F(I)V

    iget-object v0, p0, Le/c/b/i$c;->d:[B

    iget v1, p0, Le/c/b/i$c;->f:I

    invoke-virtual {p0}, Le/c/b/i$c;->t()I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Le/c/b/f0;->d(Ljava/lang/CharSequence;[BII)I

    move-result v0

    :goto_0
    iput v0, p0, Le/c/b/i$c;->f:I
    :try_end_0
    .catch Le/c/b/f0$c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Le/c/b/i$d;

    invoke-direct {p2, p1}, Le/c/b/i$d;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v0

    iput p1, p0, Le/c/b/i$c;->f:I

    invoke-virtual {p0, p2, v0}, Le/c/b/i;->q(Ljava/lang/String;Le/c/b/f0$c;)V

    :goto_1
    return-void
.end method

.method public final D(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    return-void
.end method

.method public final E(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    .line 2
    invoke-virtual {p0, p2}, Le/c/b/i$c;->F(I)V

    return-void
.end method

.method public final F(I)V
    .locals 7

    .line 1
    sget-boolean v0, Le/c/b/i;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/c/b/i$c;->t()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 3
    sget-wide v2, Le/c/b/i;->c:J

    .line 4
    iget v0, p0, Le/c/b/i$c;->f:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-object v0, p0, Le/c/b/i$c;->d:[B

    int-to-byte p1, p1

    invoke-static {v0, v2, v3, p1}, Le/c/b/e0;->f([BJB)V

    iget p1, p0, Le/c/b/i$c;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Le/c/b/i$c;->f:I

    return-void

    :cond_0
    iget-object v0, p0, Le/c/b/i$c;->d:[B

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    and-int/lit8 v6, p1, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v0, v2, v3, v6}, Le/c/b/e0;->f([BJB)V

    iget v0, p0, Le/c/b/i$c;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Le/c/b/i$c;->f:I

    ushr-int/lit8 p1, p1, 0x7

    move-wide v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Le/c/b/i$c;->d:[B

    iget v2, p0, Le/c/b/i$c;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/c/b/i$c;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void

    :cond_2
    iget-object v0, p0, Le/c/b/i$c;->d:[B

    iget v2, p0, Le/c/b/i$c;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/c/b/i$c;->f:I

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Le/c/b/i$d;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Le/c/b/i$c;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Le/c/b/i$c;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/c/b/i$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final G(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Le/c/b/i$c;->H(J)V

    return-void
.end method

.method public final H(J)V
    .locals 12

    .line 1
    sget-boolean v0, Le/c/b/i;->b:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/c/b/i$c;->t()I

    move-result v0

    const/16 v7, 0xa

    if-lt v0, v7, :cond_1

    .line 3
    sget-wide v7, Le/c/b/i;->c:J

    .line 4
    iget v0, p0, Le/c/b/i$c;->f:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    :goto_0
    and-long v9, p1, v4

    cmp-long v0, v9, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/c/b/i$c;->d:[B

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v7, v8, p1}, Le/c/b/e0;->f([BJB)V

    iget p1, p0, Le/c/b/i$c;->f:I

    add-int/2addr p1, v6

    iput p1, p0, Le/c/b/i$c;->f:I

    return-void

    :cond_0
    iget-object v0, p0, Le/c/b/i$c;->d:[B

    const-wide/16 v9, 0x1

    add-long/2addr v9, v7

    long-to-int v11, p1

    and-int/lit8 v11, v11, 0x7f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    invoke-static {v0, v7, v8, v11}, Le/c/b/e0;->f([BJB)V

    iget v0, p0, Le/c/b/i$c;->f:I

    add-int/2addr v0, v6

    iput v0, p0, Le/c/b/i$c;->f:I

    ushr-long/2addr p1, v1

    move-wide v7, v9

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Le/c/b/i$c;->d:[B

    iget v1, p0, Le/c/b/i$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/c/b/i$c;->f:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    :cond_2
    iget-object v0, p0, Le/c/b/i$c;->d:[B

    iget v7, p0, Le/c/b/i$c;->f:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Le/c/b/i$c;->f:I

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Le/c/b/i$d;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Le/c/b/i$c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Le/c/b/i$c;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Le/c/b/i$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a([BII)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/c/b/i$c;->d:[B

    iget v1, p0, Le/c/b/i$c;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Le/c/b/i$c;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Le/c/b/i$c;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Le/c/b/i$d;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Le/c/b/i$c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Le/c/b/i$c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Le/c/b/i$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final t()I
    .locals 2

    iget v0, p0, Le/c/b/i$c;->e:I

    iget v1, p0, Le/c/b/i$c;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final u(IZ)V
    .locals 4

    const/4 v0, 0x3

    shl-int/2addr p1, v0

    const/4 v1, 0x0

    or-int/2addr p1, v1

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    int-to-byte p1, p2

    .line 2
    :try_start_0
    iget-object p2, p0, Le/c/b/i$c;->d:[B

    iget v2, p0, Le/c/b/i$c;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/c/b/i$c;->f:I

    aput-byte p1, p2, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Le/c/b/i$d;

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Le/c/b/i$c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Le/c/b/i$c;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Le/c/b/i$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final v(ILe/c/b/g;)V
    .locals 1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    .line 2
    invoke-virtual {p2}, Le/c/b/g;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    check-cast p2, Le/c/b/g$f;

    .line 3
    iget-object p1, p2, Le/c/b/g$f;->h:[B

    invoke-virtual {p2}, Le/c/b/g$f;->k()I

    move-result v0

    invoke-virtual {p2}, Le/c/b/g$f;->size()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Le/c/b/e;->a([BII)V

    return-void
.end method

.method public final x(II)V
    .locals 4

    const/4 v0, 0x3

    shl-int/2addr p1, v0

    or-int/lit8 p1, p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    .line 2
    :try_start_0
    iget-object p1, p0, Le/c/b/i$c;->d:[B

    iget v1, p0, Le/c/b/i$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/c/b/i$c;->f:I

    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    iget-object p1, p0, Le/c/b/i$c;->d:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Le/c/b/i$c;->f:I

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    iget-object p1, p0, Le/c/b/i$c;->d:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/c/b/i$c;->f:I

    shr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    iget-object p1, p0, Le/c/b/i$c;->d:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Le/c/b/i$c;->f:I

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Le/c/b/i$d;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Le/c/b/i$c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Le/c/b/i$c;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Le/c/b/i$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final y(IJ)V
    .locals 6

    const/4 v0, 0x3

    shl-int/2addr p1, v0

    const/4 v1, 0x1

    or-int/2addr p1, v1

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$c;->F(I)V

    .line 2
    :try_start_0
    iget-object p1, p0, Le/c/b/i$c;->d:[B

    iget v2, p0, Le/c/b/i$c;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/c/b/i$c;->f:I

    long-to-int v4, p2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    iget-object p1, p0, Le/c/b/i$c;->d:[B

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Le/c/b/i$c;->f:I

    const/16 v4, 0x8

    shr-long v4, p2, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    iget-object p1, p0, Le/c/b/i$c;->d:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/c/b/i$c;->f:I

    const/16 v4, 0x10

    shr-long v4, p2, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    iget-object p1, p0, Le/c/b/i$c;->d:[B

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Le/c/b/i$c;->f:I

    const/16 v4, 0x18

    shr-long v4, p2, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    iget-object p1, p0, Le/c/b/i$c;->d:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/c/b/i$c;->f:I

    const/16 v4, 0x20

    shr-long v4, p2, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    iget-object p1, p0, Le/c/b/i$c;->d:[B

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Le/c/b/i$c;->f:I

    const/16 v4, 0x28

    shr-long v4, p2, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    iget-object p1, p0, Le/c/b/i$c;->d:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/c/b/i$c;->f:I

    const/16 v4, 0x30

    shr-long v4, p2, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    iget-object p1, p0, Le/c/b/i$c;->d:[B

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Le/c/b/i$c;->f:I

    const/16 v2, 0x38

    shr-long/2addr p2, v2

    long-to-int p3, p2

    and-int/lit16 p2, p3, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Le/c/b/i$d;

    new-array p3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v2, p0, Le/c/b/i$c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v0

    iget v0, p0, Le/c/b/i$c;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Le/c/b/i$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
