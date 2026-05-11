.class public final Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCoverOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCoverOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->access$700(Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;)V

    return-object p0
.end method

.method public clearPhoneNum()Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->access$400(Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;)V

    return-object p0
.end method

.method public clearState()Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->getNameBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->getPhoneNumBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->getState()I

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNum()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->hasPhoneNum()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->hasState()Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->access$600(Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->access$800(Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;Le/c/b/g;)V

    return-object p0
.end method

.method public setPhoneNum(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->access$300(Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPhoneNumBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->access$500(Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;Le/c/b/g;)V

    return-object p0
.end method

.method public setState(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;I)V

    return-object p0
.end method
