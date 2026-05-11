.class public final Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequestOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearType()Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;)V

    return-object p0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;->getType()I

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;->hasType()Z

    move-result v0

    return v0
.end method

.method public setType(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpStatusRequestProto$CarlifeBTHfpStatusRequest;I)V

    return-object p0
.end method
