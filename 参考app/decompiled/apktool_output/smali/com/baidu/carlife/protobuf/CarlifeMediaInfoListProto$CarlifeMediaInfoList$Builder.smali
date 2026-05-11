.class public final Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoListOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$000()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMediaInfo(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$900(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addMediaInfo(ILcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$800(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;ILcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;)V

    return-object p0
.end method

.method public addMediaInfo(ILcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$600(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;ILcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public addMediaInfo(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$700(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;)V

    return-object p0
.end method

.method public addMediaInfo(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$500(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public clearCnt()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$200(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;)V

    return-object p0
.end method

.method public clearMediaInfo()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;)V

    return-object p0
.end method

.method public getCnt()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->getCnt()I

    move-result v0

    return v0
.end method

.method public getMediaInfo(I)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->getMediaInfo(I)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    move-result-object p1

    return-object p1
.end method

.method public getMediaInfoCount()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->getMediaInfoCount()I

    move-result v0

    return v0
.end method

.method public getMediaInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->getMediaInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCnt()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->hasCnt()Z

    move-result v0

    return v0
.end method

.method public removeMediaInfo(I)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;I)V

    return-object p0
.end method

.method public setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;I)V

    return-object p0
.end method

.method public setMediaInfo(ILcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$400(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;ILcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;)V

    return-object p0
.end method

.method public setMediaInfo(ILcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;->access$300(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoListProto$CarlifeMediaInfoList;ILcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method
