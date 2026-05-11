.class public final Le/c/b/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/h$a;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Z

.field public c:I

.field public d:I

.field public e:I

.field public final f:Ljava/io/InputStream;

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Le/c/b/h$a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/c/b/h;->h:Z

    const v1, 0x7fffffff

    iput v1, p0, Le/c/b/h;->j:I

    const/16 v1, 0x64

    iput v1, p0, Le/c/b/h;->l:I

    const/high16 v1, 0x4000000

    iput v1, p0, Le/c/b/h;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Le/c/b/h;->n:Le/c/b/h$a;

    new-array p2, p2, [B

    iput-object p2, p0, Le/c/b/h;->a:[B

    iput v0, p0, Le/c/b/h;->e:I

    iput v0, p0, Le/c/b/h;->i:I

    iput-object p1, p0, Le/c/b/h;->f:Ljava/io/InputStream;

    iput-boolean v0, p0, Le/c/b/h;->b:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/c/b/h;->h:Z

    const v0, 0x7fffffff

    iput v0, p0, Le/c/b/h;->j:I

    const/16 v0, 0x64

    iput v0, p0, Le/c/b/h;->l:I

    const/high16 v0, 0x4000000

    iput v0, p0, Le/c/b/h;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Le/c/b/h;->n:Le/c/b/h$a;

    iput-object p1, p0, Le/c/b/h;->a:[B

    add-int/2addr p3, p2

    iput p3, p0, Le/c/b/h;->c:I

    iput p2, p0, Le/c/b/h;->e:I

    neg-int p1, p2

    iput p1, p0, Le/c/b/h;->i:I

    iput-object v0, p0, Le/c/b/h;->f:Ljava/io/InputStream;

    iput-boolean p4, p0, Le/c/b/h;->b:Z

    return-void
.end method

.method public static c(Ljava/io/InputStream;)Le/c/b/h;
    .locals 2

    new-instance v0, Le/c/b/h;

    const/16 v1, 0x1000

    invoke-direct {v0, p0, v1}, Le/c/b/h;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static d([BII)Le/c/b/h;
    .locals 2

    .line 1
    new-instance v0, Le/c/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Le/c/b/h;-><init>([BIIZ)V

    :try_start_0
    invoke-virtual {v0, p2}, Le/c/b/h;->e(I)I
    :try_end_0
    .catch Le/c/b/s; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static o(ILjava/io/InputStream;)I
    .locals 3

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_0
    const/16 v1, 0x20

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_2

    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_2
    invoke-static {}, Le/c/b/s;->c()Le/c/b/s;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_5

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_5
    invoke-static {}, Le/c/b/s;->c()Le/c/b/s;

    move-result-object p0

    throw p0

    .line 1
    :cond_6
    new-instance p0, Le/c/b/s;

    const-string p1, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, p1}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    .line 2
    throw p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Le/c/b/h;->g:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Le/c/b/s;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1
.end method

.method public b()I
    .locals 3

    iget v0, p0, Le/c/b/h;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Le/c/b/h;->i:I

    iget v2, p0, Le/c/b/h;->e:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public e(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Le/c/b/h;->i:I

    iget v1, p0, Le/c/b/h;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget p1, p0, Le/c/b/h;->j:I

    if-gt v0, p1, :cond_0

    iput v0, p0, Le/c/b/h;->j:I

    invoke-virtual {p0}, Le/c/b/h;->v()V

    return p1

    :cond_0
    invoke-static {}, Le/c/b/s;->c()Le/c/b/s;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Le/c/b/s;->b()Le/c/b/s;

    move-result-object p1

    throw p1
.end method

.method public f()Z
    .locals 5

    invoke-virtual {p0}, Le/c/b/h;->p()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Le/c/b/g;
    .locals 5

    invoke-virtual {p0}, Le/c/b/h;->n()I

    move-result v0

    iget v1, p0, Le/c/b/h;->c:I

    iget v2, p0, Le/c/b/h;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-lez v0, :cond_1

    iget-boolean v1, p0, Le/c/b/h;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Le/c/b/h;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/c/b/h;->a:[B

    invoke-static {v1, v2, v0}, Le/c/b/g;->j([BII)Le/c/b/g;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/c/b/h;->a:[B

    iget v2, p0, Le/c/b/h;->e:I

    .line 1
    new-instance v3, Le/c/b/g$f;

    sget-object v4, Le/c/b/g;->g:Le/c/b/g$c;

    invoke-interface {v4, v1, v2, v0}, Le/c/b/g$c;->a([BII)[B

    move-result-object v1

    invoke-direct {v3, v1}, Le/c/b/g$f;-><init>([B)V

    move-object v1, v3

    .line 2
    :goto_0
    iget v2, p0, Le/c/b/h;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Le/c/b/h;->e:I

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Le/c/b/g;->f:Le/c/b/g;

    return-object v0

    :cond_2
    invoke-virtual {p0, v0}, Le/c/b/h;->k(I)[B

    move-result-object v0

    invoke-static {v0}, Le/c/b/g;->i([B)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public h()D
    .locals 2

    invoke-virtual {p0}, Le/c/b/h;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public i()F
    .locals 1

    invoke-virtual {p0}, Le/c/b/h;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public j(Le/c/b/z;Le/c/b/m;)Le/c/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Le/c/b/x;",
            ">(",
            "Le/c/b/z<",
            "TT;>;",
            "Le/c/b/m;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/h;->n()I

    move-result v0

    iget v1, p0, Le/c/b/h;->k:I

    iget v2, p0, Le/c/b/h;->l:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Le/c/b/h;->e(I)I

    move-result v0

    iget v1, p0, Le/c/b/h;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/c/b/h;->k:I

    invoke-interface {p1, p0, p2}, Le/c/b/z;->a(Le/c/b/h;Le/c/b/m;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/c/b/x;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Le/c/b/h;->a(I)V

    iget p2, p0, Le/c/b/h;->k:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Le/c/b/h;->k:I

    .line 1
    iput v0, p0, Le/c/b/h;->j:I

    invoke-virtual {p0}, Le/c/b/h;->v()V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Le/c/b/s;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1
.end method

.method public final k(I)[B
    .locals 12

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Le/c/b/r;->b:[B

    return-object p1

    :cond_0
    invoke-static {}, Le/c/b/s;->b()Le/c/b/s;

    move-result-object p1

    throw p1

    :cond_1
    iget v0, p0, Le/c/b/h;->i:I

    iget v1, p0, Le/c/b/h;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Le/c/b/h;->m:I

    if-gt v2, v3, :cond_c

    iget v3, p0, Le/c/b/h;->j:I

    if-gt v2, v3, :cond_b

    iget-object v2, p0, Le/c/b/h;->f:Ljava/io/InputStream;

    if-eqz v2, :cond_a

    iget v3, p0, Le/c/b/h;->c:I

    sub-int v4, v3, v1

    add-int/2addr v0, v3

    iput v0, p0, Le/c/b/h;->i:I

    const/4 v0, 0x0

    iput v0, p0, Le/c/b/h;->e:I

    iput v0, p0, Le/c/b/h;->c:I

    sub-int v3, p1, v4

    const/4 v5, -0x1

    const/16 v6, 0x1000

    if-lt v3, v6, :cond_7

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v3, v2, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez v3, :cond_5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [B

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_4

    iget-object v10, p0, Le/c/b/h;->f:Ljava/io/InputStream;

    sub-int v11, v7, v9

    invoke-virtual {v10, v8, v9, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v5, :cond_3

    iget v11, p0, Le/c/b/h;->i:I

    add-int/2addr v11, v10

    iput v11, p0, Le/c/b/h;->i:I

    add-int/2addr v9, v10

    goto :goto_1

    :cond_3
    invoke-static {}, Le/c/b/s;->c()Le/c/b/s;

    move-result-object p1

    throw p1

    :cond_4
    sub-int/2addr v3, v7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-array p1, p1, [B

    iget-object v3, p0, Le/c/b/h;->a:[B

    invoke-static {v3, v1, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v3, v2

    invoke-static {v2, v0, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v4, v2

    goto :goto_2

    :cond_6
    return-object p1

    :cond_7
    :goto_3
    new-array v2, p1, [B

    iget-object v3, p0, Le/c/b/h;->a:[B

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-ge v4, p1, :cond_9

    iget-object v0, p0, Le/c/b/h;->f:Ljava/io/InputStream;

    sub-int v1, p1, v4

    invoke-virtual {v0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v5, :cond_8

    iget v1, p0, Le/c/b/h;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/h;->i:I

    add-int/2addr v4, v0

    goto :goto_4

    :cond_8
    invoke-static {}, Le/c/b/s;->c()Le/c/b/s;

    move-result-object p1

    throw p1

    :cond_9
    return-object v2

    :cond_a
    invoke-static {}, Le/c/b/s;->c()Le/c/b/s;

    move-result-object p1

    throw p1

    :cond_b
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Le/c/b/h;->x(I)V

    invoke-static {}, Le/c/b/s;->c()Le/c/b/s;

    move-result-object p1

    throw p1

    .line 1
    :cond_c
    new-instance p1, Le/c/b/s;

    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {p1, v0}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1
.end method

.method public l()I
    .locals 4

    iget v0, p0, Le/c/b/h;->e:I

    iget v1, p0, Le/c/b/h;->c:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Le/c/b/h;->w(I)V

    iget v0, p0, Le/c/b/h;->e:I

    :cond_0
    iget-object v1, p0, Le/c/b/h;->a:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Le/c/b/h;->e:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public m()J
    .locals 9

    iget v0, p0, Le/c/b/h;->e:I

    iget v1, p0, Le/c/b/h;->c:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Le/c/b/h;->w(I)V

    iget v0, p0, Le/c/b/h;->e:I

    :cond_0
    iget-object v1, p0, Le/c/b/h;->a:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Le/c/b/h;->e:I

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public n()I
    .locals 5

    iget v0, p0, Le/c/b/h;->e:I

    iget v1, p0, Le/c/b/h;->c:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Le/c/b/h;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, Le/c/b/h;->e:I

    return v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_6

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_7

    :goto_0
    invoke-virtual {p0}, Le/c/b/h;->q()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_7
    :goto_1
    iput v1, p0, Le/c/b/h;->e:I

    return v0
.end method

.method public p()J
    .locals 11

    iget v0, p0, Le/c/b/h;->e:I

    iget v1, p0, Le/c/b/h;->c:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Le/c/b/h;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, Le/c/b/h;->e:I

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_4

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_5

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_5
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_8

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_b

    :goto_3
    invoke-virtual {p0}, Le/c/b/h;->q()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move v1, v0

    :cond_b
    move-wide v2, v3

    :goto_4
    iput v1, p0, Le/c/b/h;->e:I

    return-wide v2
.end method

.method public q()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    .line 1
    iget v3, p0, Le/c/b/h;->e:I

    iget v4, p0, Le/c/b/h;->c:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Le/c/b/h;->w(I)V

    :cond_0
    iget-object v3, p0, Le/c/b/h;->a:[B

    iget v4, p0, Le/c/b/h;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Le/c/b/h;->e:I

    aget-byte v3, v3, v4

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 2
    :cond_2
    new-instance v0, Le/c/b/s;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    .line 3
    throw v0
.end method

.method public r()I
    .locals 2

    invoke-virtual {p0}, Le/c/b/h;->n()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public s()J
    .locals 6

    invoke-virtual {p0}, Le/c/b/h;->p()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public t()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Le/c/b/h;->n()I

    move-result v0

    iget v1, p0, Le/c/b/h;->c:I

    iget v2, p0, Le/c/b/h;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Le/c/b/h;->a:[B

    iget v3, p0, Le/c/b/h;->e:I

    sget-object v4, Le/c/b/r;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Le/c/b/h;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Le/c/b/h;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget v1, p0, Le/c/b/h;->c:I

    if-gt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Le/c/b/h;->w(I)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Le/c/b/h;->a:[B

    iget v3, p0, Le/c/b/h;->e:I

    sget-object v4, Le/c/b/r;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Le/c/b/h;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Le/c/b/h;->e:I

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/c/b/h;->k(I)[B

    move-result-object v0

    sget-object v2, Le/c/b/r;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public u()I
    .locals 4

    .line 1
    iget v0, p0, Le/c/b/h;->e:I

    iget v1, p0, Le/c/b/h;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Le/c/b/h;->y(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2
    iput v3, p0, Le/c/b/h;->g:I

    return v3

    :cond_1
    invoke-virtual {p0}, Le/c/b/h;->n()I

    move-result v0

    iput v0, p0, Le/c/b/h;->g:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    return v0

    .line 3
    :cond_2
    new-instance v0, Le/c/b/s;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    .line 4
    throw v0
.end method

.method public final v()V
    .locals 3

    iget v0, p0, Le/c/b/h;->c:I

    iget v1, p0, Le/c/b/h;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Le/c/b/h;->c:I

    iget v1, p0, Le/c/b/h;->i:I

    add-int/2addr v1, v0

    iget v2, p0, Le/c/b/h;->j:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Le/c/b/h;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Le/c/b/h;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Le/c/b/h;->d:I

    :goto_0
    return-void
.end method

.method public final w(I)V
    .locals 0

    invoke-virtual {p0, p1}, Le/c/b/h;->y(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Le/c/b/s;->c()Le/c/b/s;

    move-result-object p1

    throw p1
.end method

.method public x(I)V
    .locals 4

    iget v0, p0, Le/c/b/h;->c:I

    iget v1, p0, Le/c/b/h;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Le/c/b/h;->e:I

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_3

    .line 1
    iget v0, p0, Le/c/b/h;->i:I

    iget v1, p0, Le/c/b/h;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Le/c/b/h;->j:I

    if-gt v2, v3, :cond_2

    iget v0, p0, Le/c/b/h;->c:I

    sub-int v1, v0, v1

    iput v0, p0, Le/c/b/h;->e:I

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Le/c/b/h;->w(I)V

    sub-int v2, p1, v1

    iget v3, p0, Le/c/b/h;->c:I

    if-le v2, v3, :cond_1

    add-int/2addr v1, v3

    iput v3, p0, Le/c/b/h;->e:I

    goto :goto_0

    :cond_1
    iput v2, p0, Le/c/b/h;->e:I

    :goto_1
    return-void

    :cond_2
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Le/c/b/h;->x(I)V

    invoke-static {}, Le/c/b/s;->c()Le/c/b/s;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Le/c/b/s;->b()Le/c/b/s;

    move-result-object p1

    throw p1
.end method

.method public final y(I)Z
    .locals 5

    iget v0, p0, Le/c/b/h;->e:I

    add-int v1, v0, p1

    iget v2, p0, Le/c/b/h;->c:I

    if-le v1, v2, :cond_8

    iget v1, p0, Le/c/b/h;->i:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v0, p0, Le/c/b/h;->j:I

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Le/c/b/h;->n:Le/c/b/h$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/c/b/h$a;->a()V

    :cond_1
    iget-object v0, p0, Le/c/b/h;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    iget v0, p0, Le/c/b/h;->e:I

    if-lez v0, :cond_3

    iget v1, p0, Le/c/b/h;->c:I

    if-le v1, v0, :cond_2

    iget-object v3, p0, Le/c/b/h;->a:[B

    sub-int/2addr v1, v0

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v1, p0, Le/c/b/h;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/h;->i:I

    iget v1, p0, Le/c/b/h;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Le/c/b/h;->c:I

    iput v2, p0, Le/c/b/h;->e:I

    :cond_3
    iget-object v0, p0, Le/c/b/h;->f:Ljava/io/InputStream;

    iget-object v1, p0, Le/c/b/h;->a:[B

    iget v3, p0, Le/c/b/h;->c:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-lt v0, v1, :cond_6

    iget-object v1, p0, Le/c/b/h;->a:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6

    if-lez v0, :cond_7

    iget v1, p0, Le/c/b/h;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/h;->c:I

    iget v0, p0, Le/c/b/h;->i:I

    add-int/2addr v0, p1

    iget v1, p0, Le/c/b/h;->m:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_5

    invoke-virtual {p0}, Le/c/b/h;->v()V

    iget v0, p0, Le/c/b/h;->c:I

    if-lt v0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Le/c/b/h;->y(I)Z

    move-result p1

    :goto_0
    return p1

    .line 1
    :cond_5
    new-instance p1, Le/c/b/s;

    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {p1, v0}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return v2

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
