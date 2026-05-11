.class public final Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;",
        "Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRateOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->access$000()Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFrameRate()Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->access$200(Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;)V

    return-object p0
.end method

.method public getFrameRate()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->getFrameRate()I

    move-result v0

    return v0
.end method

.method public hasFrameRate()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->hasFrameRate()Z

    move-result v0

    return v0
.end method

.method public setFrameRate(I)Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->access$100(Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;I)V

    return-object p0
.end method
