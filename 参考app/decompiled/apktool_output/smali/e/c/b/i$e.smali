.class public final Le/c/b/i$e;
.super Le/c/b/i$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final h:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Le/c/b/i$b;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/c/b/i$e;->h:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Le/c/b/i$e;->K(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$b;->H(I)V

    if-ltz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Le/c/b/i$b;->H(I)V

    goto :goto_0

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Le/c/b/i$b;->I(J)V

    :goto_0
    return-void
.end method

.method public B(ILe/c/b/x;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$e;->F(I)V

    .line 2
    invoke-interface {p2}, Le/c/b/x;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Le/c/b/i$e;->F(I)V

    invoke-interface {p2, p0}, Le/c/b/x;->writeTo(Le/c/b/i;)V

    return-void
.end method

.method public C(ILjava/lang/String;)V
    .locals 4

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$e;->F(I)V

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Le/c/b/i;->n(I)I

    move-result v0

    add-int v1, v0, p1

    iget v2, p0, Le/c/b/i$b;->e:I

    if-le v1, v2, :cond_0

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1}, Le/c/b/f0;->d(Ljava/lang/CharSequence;[BII)I

    move-result p1

    invoke-virtual {p0, p1}, Le/c/b/i$e;->F(I)V

    invoke-virtual {p0, v0, v1, p1}, Le/c/b/i$e;->a([BII)V

    goto :goto_1

    :cond_0
    iget p1, p0, Le/c/b/i$b;->e:I

    iget v2, p0, Le/c/b/i$b;->f:I

    sub-int/2addr p1, v2

    if-le v1, p1, :cond_1

    invoke-virtual {p0}, Le/c/b/i$e;->J()V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Le/c/b/i;->n(I)I

    move-result p1

    iget v1, p0, Le/c/b/i$b;->f:I
    :try_end_0
    .catch Le/c/b/f0$c; {:try_start_0 .. :try_end_0} :catch_2

    if-ne p1, v0, :cond_2

    add-int v0, v1, p1

    :try_start_1
    iput v0, p0, Le/c/b/i$b;->f:I

    iget-object v2, p0, Le/c/b/i$b;->d:[B

    iget v3, p0, Le/c/b/i$b;->e:I

    sub-int/2addr v3, v0

    invoke-static {p2, v2, v0, v3}, Le/c/b/f0;->d(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v1, p0, Le/c/b/i$b;->f:I

    sub-int v2, v0, v1

    sub-int/2addr v2, p1

    invoke-virtual {p0, v2}, Le/c/b/i$b;->H(I)V

    iput v0, p0, Le/c/b/i$b;->f:I

    goto :goto_0

    :cond_2
    invoke-static {p2}, Le/c/b/f0;->e(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0, v2}, Le/c/b/i$b;->H(I)V

    iget-object p1, p0, Le/c/b/i$b;->d:[B

    iget v0, p0, Le/c/b/i$b;->f:I

    invoke-static {p2, p1, v0, v2}, Le/c/b/f0;->d(Ljava/lang/CharSequence;[BII)I

    move-result p1

    iput p1, p0, Le/c/b/i$b;->f:I

    :goto_0
    iget p1, p0, Le/c/b/i$b;->g:I

    add-int/2addr p1, v2

    iput p1, p0, Le/c/b/i$b;->g:I
    :try_end_1
    .catch Le/c/b/f0$c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Le/c/b/i$d;

    invoke-direct {v0, p1}, Le/c/b/i$d;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    iget v0, p0, Le/c/b/i$b;->g:I

    iget v2, p0, Le/c/b/i$b;->f:I

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Le/c/b/i$b;->g:I

    iput v1, p0, Le/c/b/i$b;->f:I

    throw p1
    :try_end_2
    .catch Le/c/b/f0$c; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p1

    invoke-virtual {p0, p2, p1}, Le/c/b/i;->q(Ljava/lang/String;Le/c/b/f0$c;)V

    :goto_1
    return-void
.end method

.method public D(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Le/c/b/i$e;->F(I)V

    return-void
.end method

.method public E(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Le/c/b/i$e;->K(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$b;->H(I)V

    .line 2
    invoke-virtual {p0, p2}, Le/c/b/i$b;->H(I)V

    return-void
.end method

.method public F(I)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Le/c/b/i$e;->K(I)V

    invoke-virtual {p0, p1}, Le/c/b/i$b;->H(I)V

    return-void
.end method

.method public G(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Le/c/b/i$e;->K(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$b;->H(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Le/c/b/i$b;->I(J)V

    return-void
.end method

.method public final J()V
    .locals 4

    iget-object v0, p0, Le/c/b/i$e;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Le/c/b/i$b;->d:[B

    iget v2, p0, Le/c/b/i$b;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Le/c/b/i$b;->f:I

    return-void
.end method

.method public final K(I)V
    .locals 2

    iget v0, p0, Le/c/b/i$b;->e:I

    iget v1, p0, Le/c/b/i$b;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Le/c/b/i$e;->J()V

    :cond_0
    return-void
.end method

.method public a([BII)V
    .locals 3

    .line 1
    iget v0, p0, Le/c/b/i$b;->e:I

    iget v1, p0, Le/c/b/i$b;->f:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Le/c/b/i$b;->d:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Le/c/b/i$b;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Le/c/b/i$b;->f:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Le/c/b/i$b;->d:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Le/c/b/i$b;->e:I

    iput v1, p0, Le/c/b/i$b;->f:I

    iget v1, p0, Le/c/b/i$b;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/i$b;->g:I

    invoke-virtual {p0}, Le/c/b/i$e;->J()V

    iget v0, p0, Le/c/b/i$b;->e:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Le/c/b/i$b;->d:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Le/c/b/i$b;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/c/b/i$e;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget p1, p0, Le/c/b/i$b;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Le/c/b/i$b;->g:I

    return-void
.end method

.method public u(IZ)V
    .locals 2

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Le/c/b/i$e;->K(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$b;->H(I)V

    int-to-byte p1, p2

    .line 2
    iget-object p2, p0, Le/c/b/i$b;->d:[B

    iget v0, p0, Le/c/b/i$b;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/c/b/i$b;->f:I

    aput-byte p1, p2, v0

    iget p1, p0, Le/c/b/i$b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/c/b/i$b;->g:I

    return-void
.end method

.method public v(ILe/c/b/g;)V
    .locals 1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$e;->F(I)V

    .line 2
    invoke-virtual {p2}, Le/c/b/g;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Le/c/b/i$e;->F(I)V

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

.method public x(II)V
    .locals 3

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Le/c/b/i$e;->K(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$b;->H(I)V

    .line 2
    iget-object p1, p0, Le/c/b/i$b;->d:[B

    iget v0, p0, Le/c/b/i$b;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/c/b/i$b;->f:I

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Le/c/b/i$b;->f:I

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/c/b/i$b;->f:I

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Le/c/b/i$b;->f:I

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    iget p1, p0, Le/c/b/i$b;->g:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Le/c/b/i$b;->g:I

    return-void
.end method

.method public y(IJ)V
    .locals 7

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Le/c/b/i$e;->K(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Le/c/b/i$b;->H(I)V

    .line 2
    iget-object p1, p0, Le/c/b/i$b;->d:[B

    iget v0, p0, Le/c/b/i$b;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/c/b/i$b;->f:I

    const-wide/16 v2, 0xff

    and-long v4, p2, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Le/c/b/i$b;->f:I

    const/16 v4, 0x8

    shr-long v5, p2, v4

    and-long/2addr v5, v2

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, p1, v1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/c/b/i$b;->f:I

    const/16 v5, 0x10

    shr-long v5, p2, v5

    and-long/2addr v5, v2

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Le/c/b/i$b;->f:I

    const/16 v5, 0x18

    shr-long v5, p2, v5

    and-long/2addr v2, v5

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/c/b/i$b;->f:I

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Le/c/b/i$b;->f:I

    const/16 v2, 0x28

    shr-long v2, p2, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/c/b/i$b;->f:I

    const/16 v2, 0x30

    shr-long v2, p2, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Le/c/b/i$b;->f:I

    const/16 v0, 0x38

    shr-long/2addr p2, v0

    long-to-int p3, p2

    and-int/lit16 p2, p3, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    iget p1, p0, Le/c/b/i$b;->g:I

    add-int/2addr p1, v4

    iput p1, p0, Le/c/b/i$b;->g:I

    return-void
.end method
