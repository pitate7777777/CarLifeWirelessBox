.class public final Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsListOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$000()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCarlifeCallRecords(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$900(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCarlifeCallRecords(ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$800(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)V

    return-object p0
.end method

.method public addCarlifeCallRecords(ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$600(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public addCarlifeCallRecords(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$700(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)V

    return-object p0
.end method

.method public addCarlifeCallRecords(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$500(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public clearCarlifeCallRecords()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;)V

    return-object p0
.end method

.method public clearCnt()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$200(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;)V

    return-object p0
.end method

.method public getCarlifeCallRecords(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->getCarlifeCallRecords(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    move-result-object p1

    return-object p1
.end method

.method public getCarlifeCallRecordsCount()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->getCarlifeCallRecordsCount()I

    move-result v0

    return v0
.end method

.method public getCarlifeCallRecordsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->getCarlifeCallRecordsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCnt()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->getCnt()I

    move-result v0

    return v0
.end method

.method public hasCnt()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->hasCnt()Z

    move-result v0

    return v0
.end method

.method public removeCarlifeCallRecords(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;I)V

    return-object p0
.end method

.method public setCarlifeCallRecords(ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$400(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)V

    return-object p0
.end method

.method public setCarlifeCallRecords(ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$300(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$100(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;I)V

    return-object p0
.end method
