.class public final Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOilOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;",
        "Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOilOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->access$000()Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeOilProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLevel()Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->access$200(Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;)V

    return-object p0
.end method

.method public clearLowFuleWarning()Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->access$600(Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;)V

    return-object p0
.end method

.method public clearRange()Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->access$400(Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;)V

    return-object p0
.end method

.method public getLevel()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->getLevel()I

    move-result v0

    return v0
.end method

.method public getLowFuleWarning()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->getLowFuleWarning()Z

    move-result v0

    return v0
.end method

.method public getRange()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->getRange()I

    move-result v0

    return v0
.end method

.method public hasLevel()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->hasLevel()Z

    move-result v0

    return v0
.end method

.method public hasLowFuleWarning()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->hasLowFuleWarning()Z

    move-result v0

    return v0
.end method

.method public hasRange()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->hasRange()Z

    move-result v0

    return v0
.end method

.method public setLevel(I)Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->access$100(Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;I)V

    return-object p0
.end method

.method public setLowFuleWarning(Z)Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->access$500(Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;Z)V

    return-object p0
.end method

.method public setRange(I)Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;->access$300(Lcom/baidu/carlife/protobuf/CarlifeOilProto$CarlifeOil;I)V

    return-object p0
.end method
