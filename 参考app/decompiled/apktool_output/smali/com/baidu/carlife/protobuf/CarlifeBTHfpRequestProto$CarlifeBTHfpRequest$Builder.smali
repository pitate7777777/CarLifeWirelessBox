.class public final Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequestOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCommand()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;)V

    return-object p0
.end method

.method public clearDtmfCode()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$700(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;)V

    return-object p0
.end method

.method public clearPhoneNum()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$400(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;)V

    return-object p0
.end method

.method public getCommand()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getCommand()I

    move-result v0

    return v0
.end method

.method public getDtmfCode()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getDtmfCode()I

    move-result v0

    return v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getPhoneNumBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasCommand()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasCommand()Z

    move-result v0

    return v0
.end method

.method public hasDtmfCode()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasDtmfCode()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNum()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasPhoneNum()Z

    move-result v0

    return v0
.end method

.method public setCommand(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;I)V

    return-object p0
.end method

.method public setDtmfCode(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$600(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;I)V

    return-object p0
.end method

.method public setPhoneNum(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$300(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPhoneNumBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$500(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;Le/c/b/g;)V

    return-object p0
.end method
