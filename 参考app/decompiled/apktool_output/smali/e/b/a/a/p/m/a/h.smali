.class public final Le/b/a/a/p/m/a/h;
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
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x10026

    if-ne v0, v2, :cond_3

    .line 1
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->getCnt()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->getModuleStatus(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;->getModuleID()I

    move-result v4

    invoke-interface {p1, v4}, Le/b/a/a/c;->x0(I)Le/b/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;->getStatusID()I

    move-result v2

    invoke-virtual {v4, v2}, Le/b/a/a/d;->A(I)V

    :cond_1
    if-lt v3, v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    :goto_2
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
