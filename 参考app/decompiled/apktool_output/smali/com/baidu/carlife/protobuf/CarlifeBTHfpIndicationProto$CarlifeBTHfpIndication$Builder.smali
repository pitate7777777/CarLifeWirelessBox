.class public final Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndicationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndicationOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddress()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;)V

    return-object p0
.end method

.method public clearPhoneName()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$700(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;)V

    return-object p0
.end method

.method public clearPhoneNum()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$400(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;)V

    return-object p0
.end method

.method public clearState()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;)V

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getAddressBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNameBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getPhoneNameBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getPhoneNumBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getState()I

    move-result v0

    return v0
.end method

.method public hasAddress()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasAddress()Z

    move-result v0

    return v0
.end method

.method public hasPhoneName()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasPhoneName()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNum()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasPhoneNum()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasState()Z

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$900(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAddressBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Le/c/b/g;)V

    return-object p0
.end method

.method public setPhoneName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$600(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPhoneNameBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$800(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Le/c/b/g;)V

    return-object p0
.end method

.method public setPhoneNum(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$300(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPhoneNumBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$500(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Le/c/b/g;)V

    return-object p0
.end method

.method public setState(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;I)V

    return-object p0
.end method
