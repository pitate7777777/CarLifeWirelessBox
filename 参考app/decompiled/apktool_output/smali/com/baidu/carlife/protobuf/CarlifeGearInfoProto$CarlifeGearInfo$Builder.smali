.class public final Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfoOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;->access$000()Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGear()Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;->access$200(Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;)V

    return-object p0
.end method

.method public getGear()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;->getGear()I

    move-result v0

    return v0
.end method

.method public hasGear()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;->hasGear()Z

    move-result v0

    return v0
.end method

.method public setGear(I)Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;->access$100(Lcom/baidu/carlife/protobuf/CarlifeGearInfoProto$CarlifeGearInfo;I)V

    return-object p0
.end method
