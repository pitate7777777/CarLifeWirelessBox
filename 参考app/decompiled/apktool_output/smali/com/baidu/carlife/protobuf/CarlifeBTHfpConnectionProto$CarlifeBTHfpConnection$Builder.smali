.class public final Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnectionOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddress()Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->access$400(Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;)V

    return-object p0
.end method

.method public clearName()Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->access$700(Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;)V

    return-object p0
.end method

.method public clearState()Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;)V

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->getAddressBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->getNameBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->getState()I

    move-result v0

    return v0
.end method

.method public hasAddress()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->hasAddress()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->hasState()Z

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->access$300(Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAddressBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->access$500(Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;Le/c/b/g;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->access$600(Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->access$800(Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;Le/c/b/g;)V

    return-object p0
.end method

.method public setState(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpConnectionProto$CarlifeBTHfpConnection;I)V

    return-object p0
.end method
