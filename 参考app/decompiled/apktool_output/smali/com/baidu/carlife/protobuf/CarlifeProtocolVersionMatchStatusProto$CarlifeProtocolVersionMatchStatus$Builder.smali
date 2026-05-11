.class public final Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;",
        "Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatusOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->access$000()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCarlifeProtocolVersion()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->access$400(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;)V

    return-object p0
.end method

.method public clearMatchStatus()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->access$200(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;)V

    return-object p0
.end method

.method public getCarlifeProtocolVersion()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->getCarlifeProtocolVersion()I

    move-result v0

    return v0
.end method

.method public getMatchStatus()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->getMatchStatus()I

    move-result v0

    return v0
.end method

.method public hasCarlifeProtocolVersion()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->hasCarlifeProtocolVersion()Z

    move-result v0

    return v0
.end method

.method public hasMatchStatus()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->hasMatchStatus()Z

    move-result v0

    return v0
.end method

.method public setCarlifeProtocolVersion(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->access$300(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;I)V

    return-object p0
.end method

.method public setMatchStatus(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->access$100(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;I)V

    return-object p0
.end method
