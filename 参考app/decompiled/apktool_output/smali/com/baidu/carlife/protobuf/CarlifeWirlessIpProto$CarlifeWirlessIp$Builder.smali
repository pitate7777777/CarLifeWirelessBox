.class public final Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIpOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIpOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->access$000()Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearWirlessip()Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->access$200(Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;)V

    return-object p0
.end method

.method public getWirlessip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWirlessipBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessipBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasWirlessip()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->hasWirlessip()Z

    move-result v0

    return v0
.end method

.method public setWirlessip(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->access$100(Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWirlessipBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->access$300(Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;Le/c/b/g;)V

    return-object p0
.end method
