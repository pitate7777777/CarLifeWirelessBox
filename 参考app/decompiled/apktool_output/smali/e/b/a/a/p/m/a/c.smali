.class public final Le/b/a/a/p/m/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/b;


# instance fields
.field public final e:Le/b/a/a/c;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/b/a/a/p/d;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public volatile h:J

.field public final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/m/a/c;->e:Le/b/a/a/c;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/m/a/c;->f:Ljava/util/Set;

    new-instance p1, Le/b/a/a/p/m/a/a;

    invoke-direct {p1, p0}, Le/b/a/a/p/m/a/a;-><init>(Le/b/a/a/p/m/a/c;)V

    iput-object p1, p0, Le/b/a/a/p/m/a/c;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static final f(Le/b/a/a/p/m/a/c;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le/b/a/a/p/m/a/c;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ConnectionEstablishHandler heartbeat timeout"

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

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object p0, p0, Le/b/a/a/p/m/a/c;->e:Le/b/a/a/c;

    invoke-interface {p0}, Le/b/a/a/c;->c()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Le/b/a/a/p/m/a/c;->e:Le/b/a/a/c;

    const/4 v0, 0x2

    const v1, 0x20002

    invoke-interface {p0, v0, v1}, Le/b/a/a/c;->g1(II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/b/a/a/p/m/a/c;->h:J

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x10002

    if-eq v0, v5, :cond_5

    const v5, 0x10004

    if-eq v0, v5, :cond_3

    const v1, 0x1004b

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const v0, 0x1804c

    .line 1
    invoke-interface {p1, v4, v0}, Le/b/a/a/c;->g1(II)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    if-eqz v0, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;->getAuthenResult()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Le/b/a/a/c;->d()V

    goto/16 :goto_3

    :cond_2
    invoke-interface {p1}, Le/b/a/a/c;->S()V

    goto/16 :goto_3

    .line 2
    :cond_3
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    if-eqz v0, :cond_4

    move-object v2, p2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    :cond_4
    invoke-interface {p1, v2}, Le/b/a/a/c;->h(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V

    sget-object p2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v0, 0x18003

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v4, v0, v3, v1}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object p2

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    invoke-interface {p1}, Le/b/a/a/c;->R0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setOs(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setBoard(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setBootloader(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setBrand(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCpuAbi(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCpuAbi2(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setDevice(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setDisplay(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setFingerprint(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setHardware(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setHost(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCid(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setManufacturer(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setModel(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setProduct(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setSerial(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCodename(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setIncremental(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setSdk(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setSdkInt(I)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setRelease(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    invoke-interface {p1}, Le/b/a/a/c;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCarlifeversion(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-interface {p1, p2}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    goto/16 :goto_3

    .line 3
    :cond_5
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    if-eqz v0, :cond_6

    move-object v2, p2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    :cond_6
    invoke-interface {p1}, Le/b/a/a/c;->Y0()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    move-result-object p2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->getCarlifeProtocolVersion()I

    move-result v0

    invoke-interface {p1, v0}, Le/b/a/a/c;->s1(I)V

    :cond_7
    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Le/b/a/a/c;->h1()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "isVersionMatch: "

    invoke-static {v6, v5}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const-string v5, "CarLife_SDK"

    const-string v6, "tag"

    .line 4
    invoke-static {v5, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "args"

    invoke-static {v0, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v6, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v6, :cond_8

    goto :goto_0

    .line 6
    :cond_8
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v5, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-nez v2, :cond_9

    goto :goto_1

    .line 7
    :cond_9
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->getMatchStatus()I

    move-result v0

    if-ne v0, v4, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v2, 0x18027

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v4, v2, v3, v1}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-interface {p1, v0}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Le/b/a/a/p/m/a/c;->b(I)V

    sget-object v4, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object v5, p0, Le/b/a/a/p/m/a/c;->i:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa

    const-wide/16 v8, 0x3e8

    invoke-virtual/range {v4 .. v9}, Le/b/a/a/r/h;->a(Ljava/lang/Runnable;JJ)V

    goto :goto_3

    :cond_b
    invoke-interface {p1, v3}, Le/b/a/a/c;->n(Z)V

    invoke-interface {p1}, Le/b/a/a/c;->K()V

    :goto_3
    return v3
.end method

.method public T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    const p2, 0x18009

    if-ne p1, p2, :cond_0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Le/b/a/a/p/m/a/c;->b(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized b(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Le/b/a/a/p/m/a/c;->g:I

    iget-object v0, p0, Le/b/a/a/p/m/a/c;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/p/d;

    invoke-interface {v1, p1}, Le/b/a/a/p/d;->l(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onConnectionAttached(Le/b/a/a/c;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/b/a/a/c;->M(Z)V

    sget-object v1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v2, 0x18001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-static {v1, v3, v2, v0, v4}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;

    move-result-object v2

    invoke-interface {p1}, Le/b/a/a/c;->j1()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;->setMajorVersion(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;->setMinorVersion(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;

    move-result-object v2

    invoke-virtual {v2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-interface {p1, v1}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    invoke-virtual {p0, v0}, Le/b/a/a/p/m/a/c;->b(I)V

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

    const/4 p1, 0x0

    iput p1, p0, Le/b/a/a/p/m/a/c;->g:I

    sget-object p1, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object v0, p0, Le/b/a/a/p/m/a/c;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Le/b/a/a/r/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectionEstablished(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x46

    invoke-virtual {p0, p1}, Le/b/a/a/p/m/a/c;->b(I)V

    return-void
.end method

.method public onConnectionReattached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/b/a/a/c;->M(Z)V

    iput v0, p0, Le/b/a/a/p/m/a/c;->g:I

    sget-object p1, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object v0, p0, Le/b/a/a/p/m/a/c;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Le/b/a/a/r/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method
