.class public final Lcom/baidu/carlifevehicle/VehicleApplication$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlifevehicle/VehicleApplication;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/carlifevehicle/VehicleApplication;


# direct methods
.method public constructor <init>(Lcom/baidu/carlifevehicle/VehicleApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/carlifevehicle/VehicleApplication$a;->a:Lcom/baidu/carlifevehicle/VehicleApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/baidu/carlifevehicle/VehicleApplication$a;->a:Lcom/baidu/carlifevehicle/VehicleApplication;

    if-eqz p2, :cond_1

    check-cast p2, Lcom/baidu/carlifevehicle/VehicleService$a;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlifevehicle.VehicleService.VehicleBind"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance p1, Lf/b;

    const-string v0, "An operation is not implemented: "

    const-string v1, "Not yet implemented"

    invoke-static {v0, v1}, Le/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lf/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method
