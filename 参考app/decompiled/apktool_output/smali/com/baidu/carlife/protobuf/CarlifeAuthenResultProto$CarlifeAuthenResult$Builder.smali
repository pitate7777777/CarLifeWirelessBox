.class public final Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResultOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;->access$000()Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAuthenResult()Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;->access$200(Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;)V

    return-object p0
.end method

.method public getAuthenResult()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;->getAuthenResult()Z

    move-result v0

    return v0
.end method

.method public hasAuthenResult()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;->hasAuthenResult()Z

    move-result v0

    return v0
.end method

.method public setAuthenResult(Z)Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;->access$100(Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;Z)V

    return-object p0
.end method
