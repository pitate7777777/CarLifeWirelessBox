.class public final Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfoOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$000()Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAction()Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$200(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V

    return-object p0
.end method

.method public clearAssistantType()Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$400(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V

    return-object p0
.end method

.method public clearCameraSpeed()Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V

    return-object p0
.end method

.method public clearRemainDistance()Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V

    return-object p0
.end method

.method public clearTotalDistance()Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$800(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V

    return-object p0
.end method

.method public clearTrafficSignType()Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$600(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V

    return-object p0
.end method

.method public getAction()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->getAction()I

    move-result v0

    return v0
.end method

.method public getAssistantType()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->getAssistantType()I

    move-result v0

    return v0
.end method

.method public getCameraSpeed()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->getCameraSpeed()I

    move-result v0

    return v0
.end method

.method public getRemainDistance()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->getRemainDistance()I

    move-result v0

    return v0
.end method

.method public getTotalDistance()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->getTotalDistance()I

    move-result v0

    return v0
.end method

.method public getTrafficSignType()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->getTrafficSignType()I

    move-result v0

    return v0
.end method

.method public hasAction()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasAction()Z

    move-result v0

    return v0
.end method

.method public hasAssistantType()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasAssistantType()Z

    move-result v0

    return v0
.end method

.method public hasCameraSpeed()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasCameraSpeed()Z

    move-result v0

    return v0
.end method

.method public hasRemainDistance()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasRemainDistance()Z

    move-result v0

    return v0
.end method

.method public hasTotalDistance()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasTotalDistance()Z

    move-result v0

    return v0
.end method

.method public hasTrafficSignType()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasTrafficSignType()Z

    move-result v0

    return v0
.end method

.method public setAction(I)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$100(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V

    return-object p0
.end method

.method public setAssistantType(I)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$300(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V

    return-object p0
.end method

.method public setCameraSpeed(I)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V

    return-object p0
.end method

.method public setRemainDistance(I)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$900(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V

    return-object p0
.end method

.method public setTotalDistance(I)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$700(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V

    return-object p0
.end method

.method public setTrafficSignType(I)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->access$500(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V

    return-object p0
.end method
