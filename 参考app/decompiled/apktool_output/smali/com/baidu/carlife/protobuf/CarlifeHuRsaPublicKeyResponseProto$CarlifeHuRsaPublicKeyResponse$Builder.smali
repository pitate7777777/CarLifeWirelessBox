.class public final Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;",
        "Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->access$000()Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRsaPublicKey()Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->access$200(Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;)V

    return-object p0
.end method

.method public getRsaPublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->getRsaPublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRsaPublicKeyBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->getRsaPublicKeyBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasRsaPublicKey()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->hasRsaPublicKey()Z

    move-result v0

    return v0
.end method

.method public setRsaPublicKey(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->access$100(Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRsaPublicKeyBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->access$300(Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;Le/c/b/g;)V

    return-object p0
.end method
