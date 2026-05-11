.class public final Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDeviceOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$000()Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDevices(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addDevices(ILcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;)V

    return-object p0
.end method

.method public addDevices(ILcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    return-object p0
.end method

.method public addDevices(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;)V

    return-object p0
.end method

.method public addDevices(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    return-object p0
.end method

.method public clearCnt()Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;)V

    return-object p0
.end method

.method public clearDevices()Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;)V

    return-object p0
.end method

.method public clearVersion()Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;)V

    return-object p0
.end method

.method public getCnt()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->getCnt()I

    move-result v0

    return v0
.end method

.method public getDevices(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->getDevices(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    move-result-object p1

    return-object p1
.end method

.method public getDevicesCount()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->getDevicesCount()I

    move-result v0

    return v0
.end method

.method public getDevicesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->getDevicesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCnt()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->hasCnt()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public removeDevices(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$1300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;I)V

    return-object p0
.end method

.method public setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;I)V

    return-object p0
.end method

.method public setDevices(ILcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;)V

    return-object p0
.end method

.method public setDevices(ILcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    return-object p0
.end method

.method public setVersion(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;->access$100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDevice;I)V

    return-object p0
.end method
