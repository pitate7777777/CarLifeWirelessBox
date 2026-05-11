.class public final Le/b/a/a/p/k/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/b;


# instance fields
.field public final e:Le/b/a/a/c;

.field public final f:Le/b/a/a/p/g;

.field public g:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

.field public h:Le/b/a/a/p/k/a;

.field public i:Landroid/view/Surface;

.field public j:Le/b/a/a/q/e/a;

.field public k:Le/b/a/a/p/i;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/p/g;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/k/b;->e:Le/b/a/a/c;

    iput-object p2, p0, Le/b/a/a/p/k/b;->f:Le/b/a/a/p/g;

    invoke-interface {p1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-interface {p1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Le/b/a/a/q/e/a;

    invoke-interface {p1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v2, 0x1e

    invoke-direct {v1, p1, p2, v0, v2}, Le/b/a/a/q/e/a;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Le/b/a/a/p/k/b;->j:Le/b/a/a/q/e/a;

    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x10008

    if-eq v0, v4, :cond_6

    const v4, 0x1000f

    if-eq v0, v4, :cond_4

    const p1, 0x20001

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->i()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "message"

    .line 1
    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Le/b/a/a/p/k/a;->i:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p2, Le/b/a/a/o/h/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3
    iget-object v0, p1, Le/b/a/a/p/k/a;->g:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-boolean p2, p1, Le/b/a/a/p/k/a;->j:Z

    if-nez p2, :cond_3

    iput-boolean v3, p1, Le/b/a/a/p/k/a;->j:Z

    new-array p2, v3, [Ljava/lang/Object;

    iget-boolean p1, p1, Le/b/a/a/p/k/a;->j:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "FrameDecoder isFirstDataFrame: "

    invoke-static {v0, p1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "CarLife_SDK"

    const-string v0, "tag"

    .line 4
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return v3

    .line 7
    :cond_4
    invoke-interface {p1}, Le/b/a/a/c;->h1()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Le/b/a/a/p/k/b;->b()V

    :cond_5
    :goto_1
    return v2

    :cond_6
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    if-eqz p2, :cond_d

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    iput-object p2, p0, Le/b/a/a/p/k/b;->g:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    iget-object v0, p0, Le/b/a/a/p/k/b;->f:Le/b/a/a/p/g;

    invoke-static {p2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    move-result p2

    .line 8
    iget-object v4, p0, Le/b/a/a/p/k/b;->g:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    .line 9
    invoke-static {v4}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    move-result v4

    invoke-interface {v0, p2, v4}, Le/b/a/a/p/g;->a(II)V

    iget-object p2, p0, Le/b/a/a/p/k/b;->i:Landroid/view/Surface;

    if-eqz p2, :cond_8

    new-instance p2, Le/b/a/a/p/k/a;

    iget-object v0, p0, Le/b/a/a/p/k/b;->i:Landroid/view/Surface;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 10
    iget-object v4, p0, Le/b/a/a/p/k/b;->g:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    .line 11
    invoke-static {v4}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-direct {p2, p1, v0, v4}, Le/b/a/a/p/k/a;-><init>(Le/b/a/a/c;Landroid/view/Surface;Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;)V

    iput-object p2, p0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    sget-object p2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v0, 0x18009

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x4

    invoke-static {p2, v3, v0, v2, v4}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object p2

    invoke-interface {p1, p2}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CarLife_SDK"

    :try_start_1
    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "RemoteDisplayRenderer postMessage MSG_CMD_VIDEO_ENCODER_START 1"

    aput-object v0, p2, v2

    const-string v0, "tag"

    .line 12
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_7

    goto :goto_2

    .line 14
    :cond_7
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_2
    monitor-exit p0

    return v3

    :cond_8
    monitor-exit p0

    iget-object p1, p0, Le/b/a/a/p/k/b;->g:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    if-nez p1, :cond_9

    goto/16 :goto_4

    .line 16
    :cond_9
    iget-object p2, p0, Le/b/a/a/p/k/b;->k:Le/b/a/a/p/i;

    if-nez p2, :cond_a

    goto :goto_3

    .line 17
    :cond_a
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    move-result p1

    check-cast p2, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverService;

    .line 18
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v5

    check-cast v5, Le/b/a/a/p/h;

    .line 19
    iget-object v5, v5, Le/b/a/a/p/h;->D:Ljava/lang/Class;

    .line 20
    invoke-direct {v4, p2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "KEY_SURFACE_WIDTH"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "KEY_SURFACE_HEIGHT"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, v4}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x2

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "CarLifeReceiverService start "

    aput-object v0, p2, v2

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    .line 21
    iget-object v0, v0, Le/b/a/a/p/h;->D:Ljava/lang/Class;

    aput-object v0, p2, v3

    const-string v0, "CarLife_SDK"

    const-string v4, "tag"

    .line 22
    invoke-static {v0, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {p2, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_b

    goto :goto_3

    .line 24
    :cond_b
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v1, v0, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "RemoteDisplayRenderer decoder surface null"

    aput-object p2, p1, v2

    const-string p2, "CarLife_SDK"

    const-string v0, "tag"

    .line 25
    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_c

    goto :goto_4

    .line 27
    :cond_c
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return v3

    .line 28
    :cond_d
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/o/i/a;->b(Le/b/a/a/o/i/b;Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 4

    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v1, 0x18007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Le/b/a/a/o/h/a$a;->a(ILjava/lang/Integer;I)Le/b/a/a/o/h/a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Le/b/a/a/p/k/b;->j:Le/b/a/a/q/e/a;

    .line 1
    iget v2, v2, Le/b/a/a/q/e/a;->b:I

    .line 2
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;->setWidth(I)Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Le/b/a/a/p/k/b;->j:Le/b/a/a/q/e/a;

    .line 3
    iget v2, v2, Le/b/a/a/q/e/a;->c:I

    .line 4
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;->setHeight(I)Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Le/b/a/a/p/k/b;->j:Le/b/a/a/q/e/a;

    .line 5
    iget v2, v2, Le/b/a/a/q/e/a;->d:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;->setFrameRate(I)Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    iget-object v1, p0, Le/b/a/a/p/k/b;->e:Le/b/a/a/c;

    invoke-interface {v1, v0}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    return-void
.end method

.method public synthetic onConnectionAttached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->a(Le/b/a/a/i;Le/b/a/a/c;)V

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
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le/b/a/a/p/k/a;->b()V

    iput-object v0, p0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    :goto_0
    iput-object v0, p0, Le/b/a/a/p/k/b;->g:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    return-void
.end method

.method public onConnectionEstablished(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Le/b/a/a/c;->h1()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Le/b/a/a/p/k/b;->b()V

    :cond_0
    return-void
.end method

.method public onConnectionReattached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le/b/a/a/p/k/a;->b()V

    iput-object v0, p0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    :goto_0
    iput-object v0, p0, Le/b/a/a/p/k/b;->g:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method
