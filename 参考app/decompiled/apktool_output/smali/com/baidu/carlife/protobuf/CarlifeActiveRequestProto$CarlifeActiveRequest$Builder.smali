.class public final Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;",
        "Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequestOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->access$000()Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIsActive()Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->access$500(Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;)V

    return-object p0
.end method

.method public clearMac()Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->access$200(Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;)V

    return-object p0
.end method

.method public clearRandomValue()Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->access$700(Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;)V

    return-object p0
.end method

.method public getIsActive()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->getIsActive()I

    move-result v0

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->getMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->getMacBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getRandomValue()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->getRandomValue()I

    move-result v0

    return v0
.end method

.method public hasIsActive()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->hasIsActive()Z

    move-result v0

    return v0
.end method

.method public hasMac()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->hasMac()Z

    move-result v0

    return v0
.end method

.method public hasRandomValue()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->hasRandomValue()Z

    move-result v0

    return v0
.end method

.method public setIsActive(I)Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->access$400(Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;I)V

    return-object p0
.end method

.method public setMac(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->access$100(Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMacBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->access$300(Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;Le/c/b/g;)V

    return-object p0
.end method

.method public setRandomValue(I)Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;->access$600(Lcom/baidu/carlife/protobuf/CarlifeActiveRequestProto$CarlifeActiveRequest;I)V

    return-object p0
.end method
