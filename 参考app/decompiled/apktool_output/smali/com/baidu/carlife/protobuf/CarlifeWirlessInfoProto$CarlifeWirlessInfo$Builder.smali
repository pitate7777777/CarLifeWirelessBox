.class public final Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfoOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->access$000()Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearWifiFrequency()Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->access$400(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;)V

    return-object p0
.end method

.method public clearWirlessType()Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->access$200(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;)V

    return-object p0
.end method

.method public getWifiFrequency()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->getWifiFrequency()I

    move-result v0

    return v0
.end method

.method public getWirlessType()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->getWirlessType()I

    move-result v0

    return v0
.end method

.method public hasWifiFrequency()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->hasWifiFrequency()Z

    move-result v0

    return v0
.end method

.method public hasWirlessType()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->hasWirlessType()Z

    move-result v0

    return v0
.end method

.method public setWifiFrequency(I)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->access$300(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;I)V

    return-object p0
.end method

.method public setWirlessType(I)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->access$100(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;I)V

    return-object p0
.end method
