.class public final Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;",
        "Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequestOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;->access$000()Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCommand()Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;->access$200(Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;)V

    return-object p0
.end method

.method public clearOpt()Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;->access$400(Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;)V

    return-object p0
.end method

.method public getCommand()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;->getCommand()I

    move-result v0

    return v0
.end method

.method public getOpt()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;->getOpt()I

    move-result v0

    return v0
.end method

.method public hasCommand()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;->hasCommand()Z

    move-result v0

    return v0
.end method

.method public hasOpt()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;->hasOpt()Z

    move-result v0

    return v0
.end method

.method public setCommand(I)Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;->access$100(Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;I)V

    return-object p0
.end method

.method public setOpt(I)Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;->access$300(Lcom/baidu/carlife/protobuf/CarlifeVoiceControlRequestProto$CarlifeVoiceControlRequest;I)V

    return-object p0
.end method
