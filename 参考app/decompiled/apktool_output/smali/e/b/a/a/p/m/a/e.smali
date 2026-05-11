.class public final Le/b/a/a/p/m/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x10031

    if-eq v0, v3, :cond_7

    const v3, 0x10044

    if-eq v0, v3, :cond_2

    const v3, 0x10033

    if-eq v0, v3, :cond_1

    const v1, 0x10034

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Le/b/a/a/p/m/a/e;->b(Le/b/a/a/c;Le/b/a/a/o/h/a;Z)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Le/b/a/a/p/m/a/e;->b(Le/b/a/a/c;Le/b/a/a/o/h/a;Z)V

    goto/16 :goto_3

    .line 1
    :cond_2
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->getSubscribemobileCarLifeInfoList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;->getModuleID()I

    move-result v1

    invoke-interface {p1, v1}, Le/b/a/a/c;->y0(I)Le/b/a/a/f;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v3, "it"

    invoke-static {v0, v3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Le/b/a/a/f;->B1(Le/b/a/a/c;Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_7
    sget-object p2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v0, 0x18032

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {p2, v1, v0, v2, v3}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object p2

    invoke-interface {p1}, Le/b/a/a/c;->f0()Ljava/util/List;

    move-result-object v0

    const-string v1, "<this>"

    .line 3
    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-virtual {v1, v3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;->addVehicleInfo(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;->getVehicleInfoCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;->setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;

    invoke-virtual {v1}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 4
    invoke-virtual {p2, v0}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-interface {p1, p2}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    :cond_9
    :goto_3
    return v2
.end method

.method public T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Le/b/a/a/c;Le/b/a/a/o/h/a;Z)V
    .locals 1

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->getModuleID()I

    move-result p2

    invoke-interface {p1, p2}, Le/b/a/a/c;->Q0(I)Le/b/a/a/e;

    move-result-object p1

    if-eqz p3, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Le/b/a/a/e;->b()V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Le/b/a/a/e;->a()V

    :goto_1
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

.method public synthetic onConnectionDetached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->d(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionEstablished(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->e(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionReattached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->f(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method
