.class public final Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequestOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->access$000()Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRandomValue()Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->access$200(Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;)V

    return-object p0
.end method

.method public getRandomValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->getRandomValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRandomValueBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->getRandomValueBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasRandomValue()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->hasRandomValue()Z

    move-result v0

    return v0
.end method

.method public setRandomValue(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->access$100(Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRandomValueBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->access$300(Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;Le/c/b/g;)V

    return-object p0
.end method
