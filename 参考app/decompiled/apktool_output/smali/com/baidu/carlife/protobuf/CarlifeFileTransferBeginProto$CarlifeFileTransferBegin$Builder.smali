.class public final Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBeginOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;",
        "Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBeginOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->access$000()Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFileSize()Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->access$200(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;)V

    return-object p0
.end method

.method public clearVersion()Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->access$400(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;)V

    return-object p0
.end method

.method public getFileSize()J
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasFileSize()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->hasFileSize()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public setFileSize(J)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->access$100(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;J)V

    return-object p0
.end method

.method public setVersion(I)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->access$300(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;I)V

    return-object p0
.end method
