.class public final Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecordsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecordsOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$000()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCid()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$200(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public clearDuration()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public clearName()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$400(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public clearNumber()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$700(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public clearTime()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$1300(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public clearType()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$1600(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public getCid()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getCid()I

    move-result v0

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDuration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDurationBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDurationBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getNameBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getNumberBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getTimeBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getType()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    move-result-object v0

    return-object v0
.end method

.method public hasCid()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasCid()Z

    move-result v0

    return v0
.end method

.method public hasDuration()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasDuration()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasNumber()Z

    move-result v0

    return v0
.end method

.method public hasTime()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasTime()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasType()Z

    move-result v0

    return v0
.end method

.method public setCid(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$100(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;I)V

    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$900(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDurationBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Le/c/b/g;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$300(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$500(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Le/c/b/g;)V

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$600(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNumberBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$800(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Le/c/b/g;)V

    return-object p0
.end method

.method public setTime(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimeBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$1400(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Le/c/b/g;)V

    return-object p0
.end method

.method public setType(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->access$1500(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;)V

    return-object p0
.end method
