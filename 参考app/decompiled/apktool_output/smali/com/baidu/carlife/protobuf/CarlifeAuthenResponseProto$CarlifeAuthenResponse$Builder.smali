.class public final Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->access$000()Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncryptValue()Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->access$200(Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;)V

    return-object p0
.end method

.method public getEncryptValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->getEncryptValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptValueBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->getEncryptValueBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasEncryptValue()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->hasEncryptValue()Z

    move-result v0

    return v0
.end method

.method public setEncryptValue(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->access$100(Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEncryptValueBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->access$300(Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;Le/c/b/g;)V

    return-object p0
.end method
