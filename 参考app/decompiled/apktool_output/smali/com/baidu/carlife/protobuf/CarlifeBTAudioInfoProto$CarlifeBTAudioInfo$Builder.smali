.class public final Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfoOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSupportBtAudio()Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;)V

    return-object p0
.end method

.method public getSupportBtAudio()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;->getSupportBtAudio()I

    move-result v0

    return v0
.end method

.method public hasSupportBtAudio()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;->hasSupportBtAudio()Z

    move-result v0

    return v0
.end method

.method public setSupportBtAudio(I)Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;I)V

    return-object p0
.end method
