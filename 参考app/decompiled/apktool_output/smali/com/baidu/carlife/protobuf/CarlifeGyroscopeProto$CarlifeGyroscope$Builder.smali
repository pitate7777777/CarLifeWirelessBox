.class public final Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscopeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;",
        "Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscopeOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$000()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGyroType()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$200(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V

    return-object p0
.end method

.method public clearGyroX()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$400(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V

    return-object p0
.end method

.method public clearGyroZ()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$800(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V

    return-object p0
.end method

.method public clearGyroy()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$600(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V

    return-object p0
.end method

.method public clearTimeStamp()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V

    return-object p0
.end method

.method public getGyroType()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->getGyroType()I

    move-result v0

    return v0
.end method

.method public getGyroX()D
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->getGyroX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getGyroZ()D
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->getGyroZ()D

    move-result-wide v0

    return-wide v0
.end method

.method public getGyroy()D
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->getGyroy()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasGyroType()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroType()Z

    move-result v0

    return v0
.end method

.method public hasGyroX()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroX()Z

    move-result v0

    return v0
.end method

.method public hasGyroZ()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroZ()Z

    move-result v0

    return v0
.end method

.method public hasGyroy()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroy()Z

    move-result v0

    return v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasTimeStamp()Z

    move-result v0

    return v0
.end method

.method public setGyroType(I)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$100(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;I)V

    return-object p0
.end method

.method public setGyroX(D)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$300(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;D)V

    return-object p0
.end method

.method public setGyroZ(D)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$700(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;D)V

    return-object p0
.end method

.method public setGyroy(D)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$500(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;D)V

    return-object p0
.end method

.method public setTimeStamp(J)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->access$900(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;J)V

    return-object p0
.end method
