.class public final Le/b/a/a/p/k/a;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final e:Landroid/view/Surface;

.field public final f:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

.field public final g:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Le/b/a/a/o/h/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/media/MediaCodec;

.field public volatile i:Z

.field public volatile j:Z

.field public k:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Landroid/view/Surface;Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outSurface"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeInfo"

    invoke-static {p3, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Le/b/a/a/p/k/a;->e:Landroid/view/Surface;

    iput-object p3, p0, Le/b/a/a/p/k/a;->f:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p2, p0, Le/b/a/a/p/k/a;->g:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string p2, "FrameDecoder"

    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-string p3, "video/avc"

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Le/b/a/a/p/k/a;->f:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    move-result v2

    iget-object v3, p0, Le/b/a/a/p/k/a;->f:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    invoke-virtual {v3}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    move-result v3

    invoke-static {p3, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p3

    const-string v2, "createVideoFormat(MediaFormat.MIMETYPE_VIDEO_AVC,\n                encodeInfo.width,\n                encodeInfo.height)"

    invoke-static {p3, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/b/a/a/p/k/a;->e:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, p3, v2, v0, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2
    iput-object v1, p0, Le/b/a/a/p/k/a;->h:Landroid/media/MediaCodec;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "CONFIG_SAVE_VIDEO_FILE"

    invoke-interface {p1, v0, p3}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/io/File;

    invoke-interface {p1}, Le/b/a/a/c;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Le/b/a/a/r/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".h264"

    invoke-static {v0, v1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Le/b/a/a/p/k/a;->k:Ljava/io/OutputStream;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "FrameDecoder createEncoder exception: "

    .line 3
    invoke-static {p2, p1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CarLife_SDK"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :goto_1
    throw p1
.end method


# virtual methods
.method public final a(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    :goto_0
    iget-object v0, p0, Le/b/a/a/p/k/a;->h:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Le/b/a/a/p/k/a;->h:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/b/a/a/p/k/a;->i:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Le/b/a/a/p/k/a;->j:Z

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v2, p0, Le/b/a/a/p/k/a;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "FrameDecoder call release, isFirstDataFrame: "

    invoke-static {v3, v2}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

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
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FrameDecoder started "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v5, "CarLife_SDK"

    const-string v6, "tag"

    .line 1
    invoke-static {v5, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "args"

    invoke-static {v2, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v8, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v9, 0x3

    if-nez v8, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v10, v2

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v9, v5, v2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v8, v0, Le/b/a/a/p/k/a;->h:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->start()V

    :goto_1
    iget-boolean v8, v0, Le/b/a/a/p/k/a;->i:Z

    if-nez v8, :cond_5

    iget-object v8, v0, Le/b/a/a/p/k/a;->g:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0xc8

    invoke-virtual {v8, v11, v12, v10}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/b/a/a/o/h/a;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Le/b/a/a/o/h/a;->i()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    iget-boolean v12, v0, Le/b/a/a/p/k/a;->i:Z

    if-nez v12, :cond_4

    if-lez v10, :cond_4

    iget-object v12, v0, Le/b/a/a/p/k/a;->h:Landroid/media/MediaCodec;

    const-wide/16 v13, 0x2710

    :goto_3
    invoke-virtual {v12, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12

    iget-boolean v15, v0, Le/b/a/a/p/k/a;->i:Z

    if-nez v15, :cond_2

    if-gez v12, :cond_2

    invoke-virtual {v0, v2}, Le/b/a/a/p/k/a;->a(Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v12, v0, Le/b/a/a/p/k/a;->h:Landroid/media/MediaCodec;

    goto :goto_3

    :cond_2
    iget-object v13, v0, Le/b/a/a/p/k/a;->h:Landroid/media/MediaCodec;

    invoke-virtual {v13, v12}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {v13}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v17

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-le v14, v10, :cond_3

    move v14, v10

    .line 5
    :cond_3
    iget-object v15, v8, Le/b/a/a/o/h/a;->i:[B

    .line 6
    invoke-virtual {v8}, Le/b/a/a/o/h/a;->h()I

    move-result v16

    add-int v9, v16, v11

    invoke-virtual {v13, v15, v9, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v15, v0, Le/b/a/a/p/k/a;->h:Landroid/media/MediaCodec;

    const-wide/16 v19, 0x1

    const/16 v21, 0x0

    move/from16 v16, v12

    move/from16 v18, v14

    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    sub-int/2addr v10, v14

    add-int/2addr v11, v14

    const/4 v9, 0x3

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Le/b/a/a/o/h/a;->w()V

    invoke-virtual {v0, v2}, Le/b/a/a/p/k/a;->a(Landroid/media/MediaCodec$BufferInfo;)V

    const/4 v9, 0x3

    goto :goto_1

    :cond_5
    iget-object v2, v0, Le/b/a/a/p/k/a;->h:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iget-object v2, v0, Le/b/a/a/p/k/a;->k:Ljava/io/OutputStream;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :goto_4
    iget-object v2, v0, Le/b/a/a/p/k/a;->g:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/b/a/a/o/h/a;

    invoke-virtual {v8}, Le/b/a/a/o/h/a;->w()V

    goto :goto_5

    :cond_7
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrameDecoder released "

    aput-object v2, v1, v4

    aput-object v0, v1, v3

    .line 7
    invoke-static {v5, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_8

    goto :goto_6

    .line 9
    :cond_8
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v5, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    return-void
.end method
