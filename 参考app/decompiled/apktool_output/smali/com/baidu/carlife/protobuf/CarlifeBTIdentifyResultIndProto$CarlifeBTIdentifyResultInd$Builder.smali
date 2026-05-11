.class public final Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultIndOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultIndOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddress()Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->access$400(Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;)V

    return-object p0
.end method

.method public clearStatus()Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;)V

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->getAddressBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->getStatus()I

    move-result v0

    return v0
.end method

.method public hasAddress()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->hasAddress()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->access$300(Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAddressBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->access$500(Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;Le/c/b/g;)V

    return-object p0
.end method

.method public setStatus(I)Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTIdentifyResultIndProto$CarlifeBTIdentifyResultInd;I)V

    return-object p0
.end method
