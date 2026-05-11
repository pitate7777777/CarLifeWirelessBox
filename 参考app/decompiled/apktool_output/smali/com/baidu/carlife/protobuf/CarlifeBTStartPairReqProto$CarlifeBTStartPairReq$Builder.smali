.class public final Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReqOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddress()Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->access$400(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;)V

    return-object p0
.end method

.method public clearOstype()Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;)V

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->getAddressBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getOstype()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->getOstype()I

    move-result v0

    return v0
.end method

.method public hasAddress()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->hasAddress()Z

    move-result v0

    return v0
.end method

.method public hasOstype()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->hasOstype()Z

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->access$300(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAddressBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->access$500(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;Le/c/b/g;)V

    return-object p0
.end method

.method public setOstype(I)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;I)V

    return-object p0
.end method
