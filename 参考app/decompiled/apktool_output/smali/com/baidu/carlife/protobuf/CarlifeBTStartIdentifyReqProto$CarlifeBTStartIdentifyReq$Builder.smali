.class public final Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReqOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddress()Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;)V

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->getAddressBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->hasAddress()Z

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAddressBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->access$300(Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;Le/c/b/g;)V

    return-object p0
.end method
