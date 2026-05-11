.class public final Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;",
        "Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequestOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->access$000()Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAesKey()Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->access$200(Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;)V

    return-object p0
.end method

.method public getAesKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->getAesKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAesKeyBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->getAesKeyBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasAesKey()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->hasAesKey()Z

    move-result v0

    return v0
.end method

.method public setAesKey(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->access$100(Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAesKeyBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->access$300(Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;Le/c/b/g;)V

    return-object p0
.end method
