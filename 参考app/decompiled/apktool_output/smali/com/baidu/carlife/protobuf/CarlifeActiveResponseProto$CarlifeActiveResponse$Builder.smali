.class public final Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;",
        "Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$000()Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStatue()Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$200(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;)V

    return-object p0
.end method

.method public clearToken()Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$500(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;)V

    return-object p0
.end method

.method public getStatue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->getStatue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatueBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->getStatueBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->getTokenBytes()Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasStatue()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->hasStatue()Z

    move-result v0

    return v0
.end method

.method public hasToken()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->hasToken()Z

    move-result v0

    return v0
.end method

.method public setStatue(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$100(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStatueBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$300(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;Le/c/b/g;)V

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$400(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenBytes(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$600(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;Le/c/b/g;)V

    return-object p0
.end method
