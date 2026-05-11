.class public final Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;",
        "Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInitOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->access$000()Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChannelConfig()Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->access$400(Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;)V

    return-object p0
.end method

.method public clearSampleFormat()Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->access$600(Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;)V

    return-object p0
.end method

.method public clearSampleRate()Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->access$200(Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;)V

    return-object p0
.end method

.method public getChannelConfig()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getChannelConfig()I

    move-result v0

    return v0
.end method

.method public getSampleFormat()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleFormat()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleRate()I

    move-result v0

    return v0
.end method

.method public hasChannelConfig()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->hasChannelConfig()Z

    move-result v0

    return v0
.end method

.method public hasSampleFormat()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->hasSampleFormat()Z

    move-result v0

    return v0
.end method

.method public hasSampleRate()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->hasSampleRate()Z

    move-result v0

    return v0
.end method

.method public setChannelConfig(I)Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->access$300(Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;I)V

    return-object p0
.end method

.method public setSampleFormat(I)Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->access$500(Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;I)V

    return-object p0
.end method

.method public setSampleRate(I)Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->access$100(Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;I)V

    return-object p0
.end method
