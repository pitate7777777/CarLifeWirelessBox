.class public final Le/b/a/a/p/o/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/p/o/d/d$a;
.implements Le/b/a/a/p/o/d/j$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/p/o/d/e$a;
    }
.end annotation


# instance fields
.field public final a:Le/b/a/a/c;

.field public final b:Le/b/a/a/p/o/d/e$a;

.field public final c:Le/b/a/a/p/o/d/j;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Le/b/a/a/o/i/f/a;

.field public g:Z

.field public final h:Lf/a;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/p/o/d/e$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/d/e;->a:Le/b/a/a/c;

    iput-object p2, p0, Le/b/a/a/p/o/d/e;->b:Le/b/a/a/p/o/d/e$a;

    new-instance p2, Le/b/a/a/p/o/d/j;

    invoke-direct {p2, p1, p0}, Le/b/a/a/p/o/d/j;-><init>(Le/b/a/a/c;Le/b/a/a/p/o/d/j$b;)V

    iput-object p2, p0, Le/b/a/a/p/o/d/e;->c:Le/b/a/a/p/o/d/j;

    const-string p2, "CONFIG_WIFI_DIRECT_NAME"

    invoke-interface {p1, p2}, Le/b/a/a/c;->w1(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Le/b/a/a/p/o/d/e;->d:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/b/a/a/p/o/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Le/b/a/a/p/o/d/e$b;

    invoke-direct {p1, p0}, Le/b/a/a/p/o/d/e$b;-><init>(Le/b/a/a/p/o/d/e;)V

    invoke-static {p1}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/p/o/d/e;->h:Lf/a;

    return-void
.end method


# virtual methods
.method public final a(Le/b/a/a/o/i/f/a;Le/b/a/a/o/h/a;)V
    .locals 11

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "CarLife_SDK"

    const/4 v4, 0x4

    const-string v5, "Bluetooth_CarLife_SDK"

    const/4 v6, 0x3

    const-string v7, "args"

    const-string v8, "tag"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_a

    :sswitch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "handleEnableBtAudio"

    aput-object p2, p1, v2

    .line 1
    invoke-static {v3, v8}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v6, v3, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object p1, p0, Le/b/a/a/p/o/d/e;->a:Le/b/a/a/c;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "CONFIG_USE_BT_VOICE"

    invoke-interface {p1, v0, p2}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "handleResponseWirlessStatus"

    aput-object v0, p1, v2

    .line 5
    invoke-static {v5, v8}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v6, v5, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;

    iget-object p2, p0, Le/b/a/a/p/o/d/e;->a:Le/b/a/a/c;

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;->getStatus()I

    move-result p1

    invoke-interface {p2, p1}, Le/b/a/a/l;->x(I)V

    goto/16 :goto_a

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeWirlessStatusProto.CarlifeWirlessStatus"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :sswitch_2
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    goto :goto_2

    :cond_3
    move-object p2, v4

    :goto_2
    new-array v0, v1, [Ljava/lang/Object;

    if-nez p2, :cond_4

    move-object v9, v4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessip()Ljava/lang/String;

    move-result-object v9

    :goto_3
    const-string v10, "handleResponseIp is : "

    invoke-static {v10, v9}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v2

    .line 10
    invoke-static {v5, v8}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v9, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v9, :cond_5

    goto :goto_4

    .line 12
    :cond_5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v6, v5, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    if-eqz p2, :cond_b

    .line 13
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessip()Ljava/lang/String;

    move-result-object v0

    const-string v5, "wirelessIp.wirlessip"

    invoke-static {v0, v5}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_b

    iget-object p1, p0, Le/b/a/a/p/o/d/e;->b:Le/b/a/a/p/o/d/e$a;

    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessip()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le/b/a/a/p/o/e/a;

    if-eqz p1, :cond_a

    const-string v0, "address"

    .line 14
    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Le/b/a/a/p/o/e/a;->a:Le/b/a/a/p/o/e/b;

    .line 15
    iget-object v0, v0, Le/b/a/a/p/o/e/b;->b:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->e1()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_10

    .line 16
    :try_start_0
    iget-object v0, p1, Le/b/a/a/p/o/e/a;->a:Le/b/a/a/p/o/e/b;

    .line 17
    invoke-virtual {v0}, Le/b/a/a/p/o/e/b;->h()Le/b/a/a/p/o/e/c;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p2}, Le/b/a/a/p/o/e/c;->d(Ljava/lang/String;)Z

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "WifiDirect onConnectionAttached"

    aput-object v0, p2, v2

    .line 19
    invoke-static {v3, v8}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_8

    goto :goto_7

    .line 21
    :cond_8
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v6, v3, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :goto_7
    iget-object p1, p1, Le/b/a/a/p/o/e/a;->a:Le/b/a/a/p/o/e/b;

    invoke-virtual {p1}, Le/b/a/a/o/i/e;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Object;

    const-string v4, "wifi getByName exception "

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    .line 23
    invoke-static {v3, v8}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p1, :cond_9

    goto/16 :goto_a

    .line 25
    :cond_9
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 26
    :cond_a
    throw v4

    .line 27
    :cond_b
    iget-object p2, p0, Le/b/a/a/p/o/d/e;->c:Le/b/a/a/p/o/d/j;

    .line 28
    iget-boolean p2, p2, Le/b/a/a/p/o/d/j;->f:Z

    if-eqz p2, :cond_10

    .line 29
    iget-object p2, p0, Le/b/a/a/p/o/d/e;->a:Le/b/a/a/c;

    new-instance v0, Le/b/a/a/p/o/d/f;

    invoke-direct {v0, p0, p1}, Le/b/a/a/p/o/d/f;-><init>(Le/b/a/a/p/o/d/e;Le/b/a/a/o/i/f/a;)V

    const-wide/16 v1, 0x3e8

    invoke-interface {p2, v1, v2, v0}, Le/b/a/a/c;->l0(JLf/m/a/a;)V

    goto/16 :goto_a

    :sswitch_3
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "handleTargetInfoRequest: MSG_WIRELESS_TARGET_INFO_RESPONSE"

    aput-object v0, p2, v2

    .line 30
    invoke-static {v5, v8}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_c

    goto :goto_8

    .line 32
    :cond_c
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v6, v5, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :goto_8
    iget-object p2, p0, Le/b/a/a/p/o/d/e;->d:Ljava/lang/String;

    if-nez p2, :cond_d

    goto/16 :goto_a

    :cond_d
    sget-object p2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v0, 0x108005

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v1, v0, v2, v4}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object p2

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/p/o/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;->setWifiDeviceName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;->setTargetInfo(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-virtual {p1, p2}, Le/b/a/a/o/i/f/a;->a(Le/b/a/a/o/h/a;)V

    iget-object p2, p0, Le/b/a/a/p/o/d/e;->c:Le/b/a/a/p/o/d/j;

    .line 34
    iget-boolean v0, p2, Le/b/a/a/p/o/d/j;->f:Z

    if-eqz v0, :cond_e

    .line 35
    invoke-virtual {p0, p1}, Le/b/a/a/p/o/d/e;->c(Le/b/a/a/o/i/f/a;)V

    goto :goto_a

    .line 36
    :cond_e
    iget-object p1, p2, Le/b/a/a/p/o/d/j;->e:Le/b/a/a/p/o/d/i;

    .line 37
    iget-object p1, p1, Le/b/a/a/p/o/d/i;->c:Le/b/a/a/r/i/b;

    invoke-virtual {p1}, Le/b/a/a/r/i/b;->a()V

    goto :goto_a

    :sswitch_4
    new-array p2, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "handleWirelessInfoRequest: MSG_WIRELESS_INFO_RESPONSE"

    aput-object v3, p2, v2

    .line 39
    invoke-static {v5, v8}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_f

    goto :goto_9

    .line 41
    :cond_f
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v3, v6, v5, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :goto_9
    sget-object p2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v3, 0x108002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3, v2, v4}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object p2

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Le/b/a/a/p/o/d/e;->a:Le/b/a/a/c;

    const-string v3, "CONFIG_WIRLESS_TYPE"

    invoke-interface {v2, v3, v0}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;->setWirlessType(I)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Le/b/a/a/p/o/d/e;->a:Le/b/a/a/c;

    const-string v3, "CONFIG_WIRLESS_FREQUENCY"

    invoke-interface {v2, v3, v0}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;->setWifiFrequency(I)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-virtual {p1, p2}, Le/b/a/a/o/i/f/a;->a(Le/b/a/a/o/h/a;)V

    :cond_10
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x100001 -> :sswitch_4
        0x100004 -> :sswitch_3
        0x100007 -> :sswitch_2
        0x100008 -> :sswitch_1
        0x108011 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Le/b/a/a/p/o/d/e;->a:Le/b/a/a/c;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "CONFIG_USE_BT_VOICE"

    invoke-interface {v0, v2, v1}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v3, 0x18028

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {v0, v4, v3, v6, v5}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;->setModuleID(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;->setStatusID(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    move-result-object v3

    invoke-virtual {v3}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v3

    invoke-interface {v3}, Le/b/a/a/c;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v3

    invoke-interface {v3, v0}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    :cond_0
    iget-object v0, p0, Le/b/a/a/p/o/d/e;->a:Le/b/a/a/c;

    invoke-interface {v0, v2, v1}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Le/b/a/a/o/i/f/a;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v3, 0x108006

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v2, v1, v3, v0, v4}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v2

    invoke-virtual {p1, v2}, Le/b/a/a/o/i/f/a;->a(Le/b/a/a/o/h/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "InstantConnectionSetup requestIp exception :"

    aput-object v3, v2, v0

    aput-object p1, v2, v1

    const-string p1, "CarLife_SDK"

    const-string v0, "tag"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {v2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p1, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
