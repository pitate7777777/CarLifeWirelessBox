.class public final Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatisticsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;",
        "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatisticsOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$000()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllNerrorType(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$1300(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addNerrorType(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    return-object p0
.end method

.method public clearConfailed()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$600(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    return-object p0
.end method

.method public clearConsuccess()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$400(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    return-object p0
.end method

.method public clearContime()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$800(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    return-object p0
.end method

.method public clearContotal()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$200(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    return-object p0
.end method

.method public clearNerrorType()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$1400(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    return-object p0
.end method

.method public clearNerrorcount()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    return-object p0
.end method

.method public getConfailed()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getConfailed()I

    move-result v0

    return v0
.end method

.method public getConsuccess()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getConsuccess()I

    move-result v0

    return v0
.end method

.method public getContime()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getContime()I

    move-result v0

    return v0
.end method

.method public getContotal()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getContotal()I

    move-result v0

    return v0
.end method

.method public getNerrorType(I)I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getNerrorType(I)I

    move-result p1

    return p1
.end method

.method public getNerrorTypeCount()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getNerrorTypeCount()I

    move-result v0

    return v0
.end method

.method public getNerrorTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getNerrorTypeList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNerrorcount()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getNerrorcount()I

    move-result v0

    return v0
.end method

.method public hasConfailed()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConfailed()Z

    move-result v0

    return v0
.end method

.method public hasConsuccess()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConsuccess()Z

    move-result v0

    return v0
.end method

.method public hasContime()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContime()Z

    move-result v0

    return v0
.end method

.method public hasContotal()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContotal()Z

    move-result v0

    return v0
.end method

.method public hasNerrorcount()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasNerrorcount()Z

    move-result v0

    return v0
.end method

.method public setConfailed(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$500(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    return-object p0
.end method

.method public setConsuccess(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$300(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    return-object p0
.end method

.method public setContime(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$700(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    return-object p0
.end method

.method public setContotal(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$100(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    return-object p0
.end method

.method public setNerrorType(II)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;II)V

    return-object p0
.end method

.method public setNerrorcount(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$900(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    return-object p0
.end method
