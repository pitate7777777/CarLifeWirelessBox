.class public final Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAccelerationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;",
        "Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAccelerationOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$000()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccX()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$200(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V

    return-object p0
.end method

.method public clearAccY()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$400(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V

    return-object p0
.end method

.method public clearAccZ()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$600(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V

    return-object p0
.end method

.method public clearTimeStamp()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$800(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V

    return-object p0
.end method

.method public getAccX()D
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->getAccX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAccY()D
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->getAccY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAccZ()D
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->getAccZ()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAccX()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccX()Z

    move-result v0

    return v0
.end method

.method public hasAccY()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccY()Z

    move-result v0

    return v0
.end method

.method public hasAccZ()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccZ()Z

    move-result v0

    return v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasTimeStamp()Z

    move-result v0

    return v0
.end method

.method public setAccX(D)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$100(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;D)V

    return-object p0
.end method

.method public setAccY(D)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$300(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;D)V

    return-object p0
.end method

.method public setAccZ(D)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$500(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;D)V

    return-object p0
.end method

.method public setTimeStamp(J)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$700(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;J)V

    return-object p0
.end method
