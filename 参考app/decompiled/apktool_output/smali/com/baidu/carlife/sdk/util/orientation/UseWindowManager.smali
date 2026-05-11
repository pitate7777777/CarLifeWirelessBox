.class public final Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;
.super Landroid/view/IRotationWatcher$Stub;
.source ""

# interfaces
.implements Le/b/a/a/i;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateApi"
    }
.end annotation


# instance fields
.field public final context:Le/b/a/a/c;

.field public final removeWatcher:Ljava/lang/reflect/Method;

.field public final watchRotation:Ljava/lang/reflect/Method;

.field public final windowManagerService:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->context:Le/b/a/a/c;

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getService"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "window"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/os/IBinder;

    const-string v2, "android.view.IWindowManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    const-string v5, "asInterface"

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->windowManagerService:Ljava/lang/Object;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const-string v5, "watchRotation"

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Landroid/view/IRotationWatcher;

    aput-object v6, v3, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v1

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "{\n            windowManagerService.javaClass\n                    .getMethod(\"watchRotation\", IRotationWatcher::class.java, Int::class.javaPrimitiveType)\n        }"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v6, Landroid/view/IRotationWatcher;

    aput-object v6, v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "{\n            windowManagerService.javaClass\n                    .getMethod(\"watchRotation\", IRotationWatcher::class.java)\n        }"

    :goto_0
    invoke-static {v2, v3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->watchRotation:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/IRotationWatcher;

    aput-object v3, v2, v4

    const-string v3, "removeRotationWatcher"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "windowManagerService.javaClass\n                .getMethod(\"removeRotationWatcher\", IRotationWatcher::class.java)"

    invoke-static {v0, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->removeWatcher:Ljava/lang/reflect/Method;

    invoke-interface {p1, p0}, Le/b/a/a/c;->t(Le/b/a/a/i;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "OrientationMonitor UseWindowManager"

    aput-object v0, p1, v4

    const-string v0, "CarLife_SDK"

    const-string v1, "tag"

    .line 1
    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.os.IBinder"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onConnectionAttached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionAuthenFailed(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/b/a/a/h;->c(Le/b/a/a/i;Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public onConnectionDetached(Le/b/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->removeWatcher:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->windowManagerService:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "OrientationMonitor UseWindowManager removeRotationWatcher exception: "

    invoke-static {v0, p1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarLife_SDK"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onConnectionEstablished(Le/b/a/a/c;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->watchRotation:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->windowManagerService:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->watchRotation:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->windowManagerService:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "OrientationMonitor UseWindowManager watchRotation exception: "

    invoke-static {v0, p1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarLife_SDK"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onConnectionReattached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "OrientationMonitor onRotationChanged "

    invoke-static {v2, p1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {p1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/orientation/UseWindowManager;->context:Le/b/a/a/c;

    invoke-interface {p1, v0}, Le/b/a/a/c;->D0(I)V

    return-void
.end method
