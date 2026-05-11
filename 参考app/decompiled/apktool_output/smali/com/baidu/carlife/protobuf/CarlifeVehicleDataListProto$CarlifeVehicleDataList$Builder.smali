.class public final Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataListOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$000()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllVehicleData(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V

    return-object p0
.end method

.method public addVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    return-object p0
.end method

.method public addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V

    return-object p0
.end method

.method public addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    return-object p0
.end method

.method public clearSupport()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)V

    return-object p0
.end method

.method public clearTokenString()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)V

    return-object p0
.end method

.method public clearVehicleData()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$1300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)V

    return-object p0
.end method

.method public getSupport()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getSupport()Z

    move-result v0

    return v0
.end method

.method public getTokenString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getTokenString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenStringBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getTokenStringBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleData(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getVehicleData(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    move-result-object p1

    return-object p1
.end method

.method public getVehicleDataCount()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getVehicleDataCount()I

    move-result v0

    return v0
.end method

.method public getVehicleDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getVehicleDataList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasSupport()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasSupport()Z

    move-result v0

    return v0
.end method

.method public hasTokenString()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasTokenString()Z

    move-result v0

    return v0
.end method

.method public removeVehicleData(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$1400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;I)V

    return-object p0
.end method

.method public setSupport(Z)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Z)V

    return-object p0
.end method

.method public setTokenString(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenStringBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Le/c/b/g;)V

    return-object p0
.end method

.method public setVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V

    return-object p0
.end method

.method public setVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->access$600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    return-object p0
.end method
