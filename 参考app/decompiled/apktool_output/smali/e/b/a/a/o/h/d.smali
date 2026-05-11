.class public final Le/b/a/a/o/h/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/b;


# instance fields
.field public final e:Z

.field public f:J

.field public g:I

.field public h:J

.field public i:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/b/a/a/o/h/d;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/b/a/a/o/h/d;->i:Z

    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-class v2, Le/b/a/a/o/h/b;

    const-string v3, "context"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "message"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Le/b/a/a/o/h/a;->k()I

    move-result v3

    const/4 v4, 0x0

    const v5, 0x18001

    if-ne v3, v5, :cond_0

    iput-boolean v4, v1, Le/b/a/a/o/h/d;->i:Z

    :cond_0
    iget-boolean v5, v1, Le/b/a/a/o/h/d;->e:Z

    const/4 v6, 0x1

    if-nez v5, :cond_1

    iget-boolean v5, v1, Le/b/a/a/o/h/d;->i:Z

    if-eqz v5, :cond_1

    return v6

    :cond_1
    const v5, 0x20002

    const v7, 0x58001

    const v8, 0x20001

    if-eq v3, v8, :cond_d

    if-eq v3, v7, :cond_d

    const v9, 0x10036

    if-eq v3, v9, :cond_d

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v3, v5, :cond_7

    const v12, 0x30006

    if-eq v3, v12, :cond_7

    const v12, 0x40003

    if-eq v3, v12, :cond_7

    const v12, 0x50003

    if-eq v3, v12, :cond_7

    new-array v12, v11, [Ljava/lang/Object;

    const-string v13, "ProtocolTracer onReceiveMessage "

    aput-object v13, v12, v4

    aput-object v0, v12, v6

    if-gtz v3, :cond_2

    goto :goto_1

    .line 1
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v13, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v13, :cond_5

    const/4 v14, 0x0

    :goto_0
    add-int/lit8 v15, v14, 0x1

    :try_start_1
    aget-object v9, v6, v14

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, v3, :cond_3

    aget-object v9, v6, v14

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_3
    if-lt v15, v13, :cond_4

    goto :goto_1

    :cond_4
    move v14, v15

    goto :goto_0

    :catch_1
    :cond_5
    :goto_1
    const/4 v9, 0x0

    :goto_2
    const-string v2, " @"

    .line 2
    invoke-static {v2, v9}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v10

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 3
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v12, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_6

    goto :goto_6

    .line 5
    :cond_6
    array-length v6, v12

    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v11, v2, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    new-array v9, v11, [Ljava/lang/Object;

    const-string v11, "ProtocolTracer onReceiveMessage "

    aput-object v11, v9, v4

    aput-object v0, v9, v6

    if-gtz v3, :cond_8

    goto :goto_4

    .line 6
    :cond_8
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v11, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-lez v11, :cond_b

    const/4 v12, 0x0

    :goto_3
    add-int/lit8 v13, v12, 0x1

    :try_start_3
    aget-object v14, v6, v12

    invoke-virtual {v14, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    if-ne v14, v3, :cond_9

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    nop

    :cond_9
    if-lt v13, v11, :cond_a

    goto :goto_4

    :cond_a
    move v12, v13

    goto :goto_3

    :catch_3
    :cond_b
    :goto_4
    const/4 v2, 0x0

    :goto_5
    const-string v3, " @"

    .line 7
    invoke-static {v3, v2}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v10

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 8
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v9, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_c

    goto :goto_6

    .line 10
    :cond_c
    array-length v6, v9

    invoke-static {v9, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v10, v2, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_d
    :goto_6
    iget-boolean v2, v1, Le/b/a/a/o/h/d;->e:Z

    if-eqz v2, :cond_e

    invoke-virtual {v1, v0}, Le/b/a/a/o/h/d;->b(Le/b/a/a/o/h/a;)V

    goto :goto_8

    .line 12
    :cond_e
    sget-object v2, Le/b/a/a/n/a;->a:Le/b/a/a/n/a;

    if-nez v2, :cond_10

    .line 13
    const-class v2, Le/b/a/a/n/a;

    monitor-enter v2

    .line 14
    :try_start_4
    sget-object v3, Le/b/a/a/n/a;->a:Le/b/a/a/n/a;

    if-nez v3, :cond_f

    .line 15
    new-instance v3, Le/b/a/a/n/a;

    invoke-direct {v3}, Le/b/a/a/n/a;-><init>()V

    .line 16
    sput-object v3, Le/b/a/a/n/a;->a:Le/b/a/a/n/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17
    :cond_f
    monitor-exit v2

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 18
    :cond_10
    :goto_7
    sget-object v2, Le/b/a/a/n/a;->a:Le/b/a/a/n/a;

    if-nez v2, :cond_11

    goto :goto_8

    .line 19
    :cond_11
    invoke-virtual/range {p2 .. p2}, Le/b/a/a/o/h/a;->k()I

    move-result v2

    if-eq v2, v5, :cond_12

    invoke-virtual/range {p2 .. p2}, Le/b/a/a/o/h/a;->k()I

    move-result v2

    if-eq v2, v8, :cond_12

    invoke-virtual/range {p2 .. p2}, Le/b/a/a/o/h/a;->k()I

    move-result v2

    const v3, 0x1001b

    if-eq v2, v3, :cond_12

    invoke-virtual/range {p2 .. p2}, Le/b/a/a/o/h/a;->k()I

    move-result v0

    :cond_12
    :goto_8
    return v4
.end method

.method public T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 13

    const-class v0, Le/b/a/a/o/h/b;

    const-string v1, "context"

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x20002

    const v5, 0x20001

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p1, v5, :cond_7

    const v8, 0x30006

    if-eq p1, v8, :cond_7

    const v8, 0x58001

    if-eq p1, v8, :cond_7

    const v8, 0x50003

    if-eq p1, v8, :cond_7

    const v8, 0x10036

    if-eq p1, v8, :cond_7

    if-ne p1, v4, :cond_1

    new-array p1, v6, [Ljava/lang/Object;

    const-string v0, "ProtocolTracer onSendMessage "

    aput-object v0, p1, v2

    aput-object p2, p1, v3

    const-string v0, " @MSG_VIDEO_HEARTBEAT"

    aput-object v0, p1, v7

    const-string v0, "CarLife_SDK"

    const-string v1, "tag"

    .line 1
    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v7, v0, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "ProtocolTracer onSendMessage "

    aput-object v9, v8, v2

    aput-object p2, v8, v3

    if-gtz p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v9, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v9, :cond_5

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v11, v10, 0x1

    :try_start_1
    aget-object v12, v3, v10

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    if-ne v12, p1, :cond_3

    aget-object v10, v3, v10

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_3
    if-lt v11, v9, :cond_4

    goto :goto_1

    :cond_4
    move v10, v11

    goto :goto_0

    :catch_1
    nop

    :cond_5
    :goto_1
    const-string p1, " @"

    .line 5
    invoke-static {p1, v1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v7

    const-string p1, "CarLife_SDK"

    const-string v0, "tag"

    .line 6
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {v8, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_6

    goto :goto_4

    .line 8
    :cond_6
    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, p1, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "ProtocolTracer onSendMessage "

    aput-object v9, v8, v2

    aput-object p2, v8, v3

    if-gtz p1, :cond_8

    goto :goto_3

    .line 9
    :cond_8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v9, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-lez v9, :cond_b

    const/4 v10, 0x0

    :goto_2
    add-int/lit8 v11, v10, 0x1

    :try_start_3
    aget-object v12, v3, v10

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    if-ne v12, p1, :cond_9

    aget-object v10, v3, v10

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_9
    if-lt v11, v9, :cond_a

    goto :goto_3

    :cond_a
    move v10, v11

    goto :goto_2

    :catch_3
    nop

    :cond_b
    :goto_3
    const-string p1, " @"

    .line 10
    invoke-static {p1, v1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v7

    const-string p1, "CarLife_SDK"

    const-string v0, "tag"

    .line 11
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {v8, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_c

    goto :goto_4

    .line 13
    :cond_c
    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v7, p1, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :goto_4
    iget-boolean p1, p0, Le/b/a/a/o/h/d;->e:Z

    if-nez p1, :cond_10

    invoke-virtual {p0, p2}, Le/b/a/a/o/h/d;->b(Le/b/a/a/o/h/a;)V

    .line 15
    sget-object p1, Le/b/a/a/n/a;->a:Le/b/a/a/n/a;

    if-nez p1, :cond_e

    .line 16
    const-class p1, Le/b/a/a/n/a;

    monitor-enter p1

    .line 17
    :try_start_4
    sget-object v0, Le/b/a/a/n/a;->a:Le/b/a/a/n/a;

    if-nez v0, :cond_d

    .line 18
    new-instance v0, Le/b/a/a/n/a;

    invoke-direct {v0}, Le/b/a/a/n/a;-><init>()V

    .line 19
    sput-object v0, Le/b/a/a/n/a;->a:Le/b/a/a/n/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :cond_d
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 21
    :cond_e
    :goto_5
    sget-object p1, Le/b/a/a/n/a;->a:Le/b/a/a/n/a;

    if-nez p1, :cond_f

    goto :goto_6

    .line 22
    :cond_f
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    if-eq p1, v4, :cond_10

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    if-eq p1, v5, :cond_10

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    const v0, 0x1001b

    if-eq p1, v0, :cond_10

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    :cond_10
    :goto_6
    return v2
.end method

.method public final b(Le/b/a/a/o/h/a;)V
    .locals 13

    .line 1
    iget v0, p1, Le/b/a/a/o/h/a;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    iget v0, p0, Le/b/a/a/o/h/d;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Le/b/a/a/o/h/d;->g:I

    :cond_0
    iget-wide v3, p0, Le/b/a/a/o/h/d;->h:J

    invoke-virtual {p1}, Le/b/a/a/o/h/a;->m()I

    move-result p1

    const/16 v0, 0x8

    add-int/2addr p1, v0

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Le/b/a/a/o/h/d;->h:J

    iget-wide v3, p0, Le/b/a/a/o/h/d;->f:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Le/b/a/a/o/h/d;->f:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, p0, Le/b/a/a/o/h/d;->f:J

    sub-long v7, v3, v7

    const-wide/16 v9, 0x3e8

    cmp-long p1, v7, v9

    if-lez p1, :cond_3

    iget-wide v9, p0, Le/b/a/a/o/h/d;->h:J

    int-to-long v11, v0

    mul-long v9, v9, v11

    const/16 p1, 0x3e8

    int-to-long v11, p1

    mul-long v9, v9, v11

    div-long/2addr v9, v7

    iget v0, p0, Le/b/a/a/o/h/d;->g:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v11, v0

    div-long/2addr v11, v7

    const/4 p1, 0x4

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ProtocolTracer bitrate "

    aput-object v8, v0, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v0, v1

    const-string v1, " frame rate "

    aput-object v1, v0, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v8, 0x3

    aput-object v1, v0, v8

    const-string v1, "CarLife_SDK"

    const-string v8, "tag"

    .line 3
    invoke-static {v1, v8}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "args"

    invoke-static {v0, v8}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v8, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v8, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8, v2, v1, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_0
    iput-wide v3, p0, Le/b/a/a/o/h/d;->f:J

    iput v7, p0, Le/b/a/a/o/h/d;->g:I

    iput-wide v5, p0, Le/b/a/a/o/h/d;->h:J

    :cond_3
    return-void
.end method

.method public onConnectionAttached(Le/b/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ProtocolTracer onConnectionAttached "

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic onConnectionAuthenFailed(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->b(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/b/a/a/h;->c(Le/b/a/a/i;Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public onConnectionDetached(Le/b/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ProtocolTracer onConnectionDetached "

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onConnectionEstablished(Le/b/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ProtocolTracer onConnectionEstablished "

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onConnectionReattached(Le/b/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ProtocolTracer onConnectionReattached "

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method
