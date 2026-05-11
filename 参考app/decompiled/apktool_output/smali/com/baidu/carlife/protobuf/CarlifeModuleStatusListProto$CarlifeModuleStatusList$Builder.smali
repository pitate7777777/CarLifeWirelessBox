.class public final Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;",
        "Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusListOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$000()Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllModuleStatus(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$900(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$800(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V

    return-object p0
.end method

.method public addModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$600(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V

    return-object p0
.end method

.method public addModuleStatus(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$700(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V

    return-object p0
.end method

.method public addModuleStatus(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$500(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V

    return-object p0
.end method

.method public clearCnt()Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$200(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;)V

    return-object p0
.end method

.method public clearModuleStatus()Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;)V

    return-object p0
.end method

.method public getCnt()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->getCnt()I

    move-result v0

    return v0
.end method

.method public getModuleStatus(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->getModuleStatus(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;

    move-result-object p1

    return-object p1
.end method

.method public getModuleStatusCount()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->getModuleStatusCount()I

    move-result v0

    return v0
.end method

.method public getModuleStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->getModuleStatusList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCnt()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->hasCnt()Z

    move-result v0

    return v0
.end method

.method public removeModuleStatus(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;I)V

    return-object p0
.end method

.method public setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$100(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;I)V

    return-object p0
.end method

.method public setModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$400(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V

    return-object p0
.end method

.method public setModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->access$300(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V

    return-object p0
.end method
