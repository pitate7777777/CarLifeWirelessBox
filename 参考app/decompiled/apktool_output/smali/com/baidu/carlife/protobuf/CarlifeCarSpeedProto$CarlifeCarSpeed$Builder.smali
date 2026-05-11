.class public final Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;",
        "Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeedOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->access$000()Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSpeed()Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->access$200(Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;)V

    return-object p0
.end method

.method public clearTimeStamp()Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->access$400(Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;)V

    return-object p0
.end method

.method public getSpeed()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->getSpeed()I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasSpeed()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->hasSpeed()Z

    move-result v0

    return v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->hasTimeStamp()Z

    move-result v0

    return v0
.end method

.method public setSpeed(I)Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->access$100(Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;I)V

    return-object p0
.end method

.method public setTimeStamp(J)Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->access$300(Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;J)V

    return-object p0
.end method
