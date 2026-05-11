.class public final Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;",
        "Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersionOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->access$000()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMajorVersion()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->access$200(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;)V

    return-object p0
.end method

.method public clearMinorVersion()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->access$400(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;)V

    return-object p0
.end method

.method public getMajorVersion()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->getMajorVersion()I

    move-result v0

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->getMinorVersion()I

    move-result v0

    return v0
.end method

.method public hasMajorVersion()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->hasMajorVersion()Z

    move-result v0

    return v0
.end method

.method public hasMinorVersion()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->hasMinorVersion()Z

    move-result v0

    return v0
.end method

.method public setMajorVersion(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->access$100(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;I)V

    return-object p0
.end method

.method public setMinorVersion(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->access$300(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;I)V

    return-object p0
.end method
