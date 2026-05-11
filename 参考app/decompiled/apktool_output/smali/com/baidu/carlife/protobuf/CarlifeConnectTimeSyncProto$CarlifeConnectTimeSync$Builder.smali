.class public final Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSyncOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;",
        "Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSyncOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;->access$000()Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTimeStamp()Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;->access$200(Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;)V

    return-object p0
.end method

.method public getTimeStamp()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;->getTimeStamp()I

    move-result v0

    return v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;->hasTimeStamp()Z

    move-result v0

    return v0
.end method

.method public setTimeStamp(I)Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;->access$100(Lcom/baidu/carlife/protobuf/CarlifeConnectTimeSyncProto$CarlifeConnectTimeSync;I)V

    return-object p0
.end method
