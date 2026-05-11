.class public final Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatusOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;->access$000()Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStatus()Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;->access$200(Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;)V

    return-object p0
.end method

.method public getStatus()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;->getStatus()I

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public setStatus(I)Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;->access$100(Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;I)V

    return-object p0
.end method
