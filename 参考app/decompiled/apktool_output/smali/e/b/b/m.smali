.class public final Le/b/b/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x1006f

    if-ne v0, v2, :cond_d

    .line 1
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "\u6536\u5230\u624b\u673a\u7aef\u53d1\u6765\u7684\u6d88\u606f, type: "

    invoke-static {v4}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", areaId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getAreaId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", valueType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    move-object v5, v2

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getValueType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_5

    move-object v5, v2

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Le/c/b/p;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "VehicleControlHandler"

    const-string v5, "tag"

    .line 2
    invoke-static {v4, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "args"

    invoke-static {v3, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v8, 0x3

    if-nez v7, :cond_6

    goto :goto_6

    .line 4
    :cond_6
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v8, v4, v3}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    if-nez p2, :cond_7

    goto :goto_7

    .line 5
    :cond_7
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_7
    if-nez v2, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_a

    new-array p2, v0, [Ljava/lang/Object;

    const-string v2, "\u7ed9\u624b\u673a\u7aef\u53d1\u9001\u6d88\u606f"

    aput-object v2, p2, v1

    .line 6
    invoke-static {v4, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_9

    goto :goto_8

    .line 8
    :cond_9
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, v8, v4, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    const-wide/16 v2, 0x64

    .line 9
    new-instance p2, Le/b/b/l;

    invoke-direct {p2, p1}, Le/b/b/l;-><init>(Le/b/a/a/c;)V

    invoke-interface {p1, v2, v3, p2}, Le/b/a/a/c;->l0(JLf/m/a/a;)V

    goto :goto_a

    :cond_a
    :goto_9
    const/4 p1, 0x2

    if-nez v2, :cond_b

    goto :goto_a

    .line 10
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_d

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "\u6839\u636e\u6d88\u606f\u6267\u884c\u76f8\u5173\u547d\u4ee4\u64cd\u4f5c"

    aput-object p2, p1, v1

    .line 11
    invoke-static {v4, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object p2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p2, :cond_c

    goto :goto_a

    .line 13
    :cond_c
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v8, v4, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_a
    return v1
.end method

.method public synthetic T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/o/i/a;->b(Le/b/a/a/o/i/b;Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result p1

    return p1
.end method

.method public synthetic onConnectionAttached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->a(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionAuthenFailed(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->b(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/b/a/a/h;->c(Le/b/a/a/i;Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic onConnectionDetached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->d(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionEstablished(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->e(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionReattached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->f(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method
