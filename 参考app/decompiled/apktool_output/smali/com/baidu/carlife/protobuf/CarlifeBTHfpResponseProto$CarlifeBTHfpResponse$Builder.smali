.class public final Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCmd()Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->access$400(Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;)V

    return-object p0
.end method

.method public clearDtmfCode()Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->access$600(Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;)V

    return-object p0
.end method

.method public clearStatus()Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;)V

    return-object p0
.end method

.method public getCmd()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->getCmd()I

    move-result v0

    return v0
.end method

.method public getDtmfCode()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->getDtmfCode()I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->getStatus()I

    move-result v0

    return v0
.end method

.method public hasCmd()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->hasCmd()Z

    move-result v0

    return v0
.end method

.method public hasDtmfCode()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->hasDtmfCode()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public setCmd(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->access$300(Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;I)V

    return-object p0
.end method

.method public setDtmfCode(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->access$500(Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;I)V

    return-object p0
.end method

.method public setStatus(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpResponseProto$CarlifeBTHfpResponse;I)V

    return-object p0
.end method
