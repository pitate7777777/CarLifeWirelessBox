.class public final Le/c/b/f0$d;
.super Le/c/b/f0$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/c/b/f0$a;-><init>()V

    return-void
.end method

.method public static c([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-static {p0, p2, p3}, Le/c/b/e0;->c([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Le/c/b/e0;->c([BJ)B

    move-result p0

    .line 1
    invoke-static {p1, p4, p0}, Le/c/b/f0;->f(III)I

    move-result p0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p2, p3}, Le/c/b/e0;->c([BJ)B

    move-result p0

    invoke-static {p1, p0}, Le/c/b/f0;->a(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p1}, Le/c/b/f0;->c(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;[BII)I
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1
    sget-wide v4, Le/c/b/e0;->d:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Le/c/b/e0;->f([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    add-long v14, v4, v11

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Le/c/b/e0;->f([BJB)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x800

    if-ge v13, v3, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v3, v4, v14

    if-gtz v3, :cond_3

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Le/c/b/e0;->f([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Le/c/b/e0;->f([BJB)V

    move-wide v4, v3

    goto/16 :goto_3

    :cond_3
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v17, v4, v15

    if-gtz v17, :cond_5

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Le/c/b/e0;->f([BJB)V

    add-long/2addr v11, v14

    ushr-int/lit8 v3, v13, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v1, v14, v15, v3}, Le/c/b/e0;->f([BJB)V

    const-wide/16 v3, 0x1

    add-long v14, v11, v3

    and-int/lit8 v3, v13, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v1, v11, v12, v3}, Le/c/b/e0;->f([BJB)V

    const-wide/16 v11, 0x1

    :goto_2
    move-wide v4, v14

    goto :goto_3

    :cond_5
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v15, v4, v11

    if-gtz v15, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    invoke-static {v1, v4, v5, v15}, Le/c/b/e0;->f([BJB)V

    add-long/2addr v11, v13

    ushr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v1, v13, v14, v4}, Le/c/b/e0;->f([BJB)V

    const-wide/16 v4, 0x1

    add-long/2addr v4, v11

    ushr-int/lit8 v13, v2, 0x6

    and-int/lit8 v13, v13, 0x3f

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    invoke-static {v1, v11, v12, v13}, Le/c/b/e0;->f([BJB)V

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v1, v4, v5, v2}, Le/c/b/e0;->f([BJB)V

    move v2, v3

    move-wide v4, v13

    :goto_3
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x80

    goto/16 :goto_1

    :cond_6
    move v2, v3

    :cond_7
    new-instance v0, Le/c/b/f0$c;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Le/c/b/f0$c;-><init>(II)V

    throw v0

    :cond_8
    if-gt v14, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Le/c/b/f0$c;

    invoke-direct {v0, v2, v8}, Le/c/b/f0$c;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_b
    :goto_4
    sget-wide v0, Le/c/b/e0;->d:J

    sub-long/2addr v4, v0

    long-to-int v0, v4

    return v0

    .line 4
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v10}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(I[BII)I
    .locals 24

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    or-int v4, v2, v3

    array-length v5, v1

    sub-int/2addr v5, v3

    or-int/2addr v4, v5

    const/4 v5, 0x2

    if-ltz v4, :cond_22

    .line 1
    sget-wide v8, Le/c/b/e0;->d:J

    int-to-long v10, v2

    add-long/2addr v10, v8

    int-to-long v2, v3

    add-long/2addr v8, v2

    const/16 v2, -0x13

    const/16 v3, -0x3e

    const/16 v4, -0x10

    const/16 v12, 0x10

    const/16 v13, -0x60

    const/16 v14, -0x20

    const/16 v15, 0x8

    const/16 v7, -0x41

    const-wide/16 v16, 0x1

    const/16 v18, -0x1

    if-eqz v0, :cond_f

    cmp-long v19, v10, v8

    if-ltz v19, :cond_0

    return v0

    :cond_0
    int-to-byte v6, v0

    if-ge v6, v14, :cond_3

    if-lt v6, v3, :cond_2

    add-long v20, v10, v16

    .line 2
    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v0

    if-le v0, v7, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v10, v20

    goto/16 :goto_2

    :cond_2
    :goto_0
    return v18

    :cond_3
    if-ge v6, v4, :cond_9

    shr-int/2addr v0, v15

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_5

    add-long v20, v10, v16

    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v0

    cmp-long v10, v20, v8

    if-ltz v10, :cond_4

    invoke-static {v6, v0}, Le/c/b/f0;->a(II)I

    move-result v0

    return v0

    :cond_4
    move-wide/from16 v10, v20

    :cond_5
    if-gt v0, v7, :cond_8

    if-ne v6, v14, :cond_6

    if-lt v0, v13, :cond_8

    :cond_6
    if-ne v6, v2, :cond_7

    if-ge v0, v13, :cond_8

    :cond_7
    add-long v20, v10, v16

    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v0

    if-le v0, v7, :cond_1

    :cond_8
    return v18

    :cond_9
    shr-int/lit8 v2, v0, 0x8

    not-int v2, v2

    int-to-byte v2, v2

    if-nez v2, :cond_b

    add-long v20, v10, v16

    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v2

    cmp-long v0, v20, v8

    if-ltz v0, :cond_a

    invoke-static {v6, v2}, Le/c/b/f0;->a(II)I

    move-result v0

    return v0

    :cond_a
    move-wide/from16 v10, v20

    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    shr-int/2addr v0, v12

    int-to-byte v0, v0

    :goto_1
    if-nez v0, :cond_d

    add-long v20, v10, v16

    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v0

    cmp-long v10, v20, v8

    if-ltz v10, :cond_c

    .line 3
    invoke-static {v6, v2, v0}, Le/c/b/f0;->f(III)I

    move-result v0

    return v0

    :cond_c
    move-wide/from16 v10, v20

    :cond_d
    if-gt v2, v7, :cond_e

    shl-int/lit8 v6, v6, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr v2, v6

    shr-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_e

    if-gt v0, v7, :cond_e

    add-long v20, v10, v16

    .line 4
    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v0

    if-le v0, v7, :cond_1

    :cond_e
    return v18

    :cond_f
    :goto_2
    sub-long/2addr v8, v10

    long-to-int v0, v8

    if-ge v0, v12, :cond_10

    const/4 v2, 0x0

    goto :goto_5

    :cond_10
    long-to-int v2, v10

    and-int/lit8 v2, v2, 0x7

    move v6, v2

    move-wide v8, v10

    :goto_3
    if-lez v6, :cond_12

    add-long v20, v8, v16

    .line 5
    invoke-static {v1, v8, v9}, Le/c/b/e0;->c([BJ)B

    move-result v8

    if-gez v8, :cond_11

    sub-int/2addr v2, v6

    goto :goto_5

    :cond_11
    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v8, v20

    goto :goto_3

    :cond_12
    sub-int v2, v0, v2

    :goto_4
    if-lt v2, v15, :cond_13

    invoke-static {v1, v8, v9}, Le/c/b/e0;->d([BJ)J

    move-result-wide v20

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v6, v20, v22

    if-nez v6, :cond_13

    const-wide/16 v20, 0x8

    add-long v8, v8, v20

    add-int/lit8 v2, v2, -0x8

    goto :goto_4

    :cond_13
    sub-int v2, v0, v2

    :goto_5
    sub-int/2addr v0, v2

    int-to-long v8, v2

    add-long/2addr v10, v8

    :cond_14
    :goto_6
    const/4 v2, 0x0

    :goto_7
    if-lez v0, :cond_16

    add-long v8, v10, v16

    .line 6
    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v2

    if-ltz v2, :cond_15

    add-int/lit8 v0, v0, -0x1

    move-wide v10, v8

    goto :goto_7

    :cond_15
    move-wide v10, v8

    :cond_16
    if-nez v0, :cond_17

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_17
    add-int/lit8 v0, v0, -0x1

    if-ge v2, v14, :cond_1b

    if-nez v0, :cond_18

    move v7, v2

    goto/16 :goto_a

    :cond_18
    add-int/lit8 v0, v0, -0x1

    if-lt v2, v3, :cond_1a

    add-long v8, v10, v16

    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v2

    if-le v2, v7, :cond_19

    goto :goto_8

    :cond_19
    move-wide v10, v8

    const/16 v12, -0x13

    goto :goto_6

    :cond_1a
    :goto_8
    const/4 v7, -0x1

    goto :goto_a

    :cond_1b
    if-ge v2, v4, :cond_1f

    if-ge v0, v5, :cond_1c

    goto :goto_9

    :cond_1c
    add-int/lit8 v0, v0, -0x2

    add-long v8, v10, v16

    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v6

    if-gt v6, v7, :cond_1a

    if-ne v2, v14, :cond_1d

    if-lt v6, v13, :cond_1a

    :cond_1d
    const/16 v12, -0x13

    if-ne v2, v12, :cond_1e

    if-ge v6, v13, :cond_1a

    :cond_1e
    add-long v10, v8, v16

    invoke-static {v1, v8, v9}, Le/c/b/e0;->c([BJ)B

    move-result v2

    if-le v2, v7, :cond_14

    goto :goto_8

    :cond_1f
    const/4 v6, 0x3

    const/16 v12, -0x13

    if-ge v0, v6, :cond_20

    :goto_9
    invoke-static {v1, v2, v10, v11, v0}, Le/c/b/f0$d;->c([BIJI)I

    move-result v7

    goto :goto_a

    :cond_20
    add-int/lit8 v0, v0, -0x3

    add-long v8, v10, v16

    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v6

    if-gt v6, v7, :cond_1a

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v6, v6, 0x70

    add-int/2addr v6, v2

    shr-int/lit8 v2, v6, 0x1e

    if-nez v2, :cond_1a

    add-long v10, v8, v16

    invoke-static {v1, v8, v9}, Le/c/b/e0;->c([BJ)B

    move-result v2

    if-gt v2, v7, :cond_1a

    add-long v8, v10, v16

    invoke-static {v1, v10, v11}, Le/c/b/e0;->c([BJ)B

    move-result v2

    if-le v2, v7, :cond_21

    goto :goto_8

    :cond_21
    move-wide v10, v8

    goto/16 :goto_6

    :goto_a
    return v7

    .line 7
    :cond_22
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v1, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "Array length=%d, index=%d, limit=%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
