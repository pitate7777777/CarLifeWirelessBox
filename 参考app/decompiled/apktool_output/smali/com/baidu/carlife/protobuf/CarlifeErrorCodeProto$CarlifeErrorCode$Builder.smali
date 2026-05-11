.class public final Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;",
        "Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCodeOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;->access$000()Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearErrorCode()Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;->access$200(Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;)V

    return-object p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCodeBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;->getErrorCodeBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasErrorCode()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;->hasErrorCode()Z

    move-result v0

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;->access$100(Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorCodeBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;->access$300(Lcom/baidu/carlife/protobuf/CarlifeErrorCodeProto$CarlifeErrorCode;Le/c/b/g;)V

    return-object p0
.end method
