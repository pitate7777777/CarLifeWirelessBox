.class public final Le/b/b/l;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Lf/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/c;


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 0

    iput-object p1, p0, Le/b/b/l;->e:Le/b/a/a/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v1, 0x18061

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Le/b/a/a/o/h/a$a;->a(ILjava/lang/Integer;I)Le/b/a/a/o/h/a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;->setSupport(Z)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    move-result-object v1

    const-string v3, "VehicleControlHandler"

    invoke-virtual {v1, v3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;->setTokenString(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;->setId(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;->addAreaValue(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;->setValueType(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;->setSupport(Z)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;->addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    move-result-object v1

    invoke-virtual {v1}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    iget-object v1, p0, Le/b/b/l;->e:Le/b/a/a/c;

    invoke-interface {v1, v0}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    .line 2
    sget-object v0, Lf/h;->a:Lf/h;

    return-object v0
.end method
