.class public final Le/b/a/a/p/o/c/c;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Le/b/a/a/c;

.field public final f:Lf/m/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/b<",
            "Le/b/a/a/o/i/f/b;",
            "Lf/h;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/hardware/usb/UsbManager;

.field public final h:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lf/a;

.field public final k:Lf/a;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Lf/m/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/a/c;",
            "Lf/m/a/b<",
            "-",
            "Le/b/a/a/o/i/f/b;",
            "Lf/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/c/c;->e:Le/b/a/a/c;

    iput-object p2, p0, Le/b/a/a/p/o/c/c;->f:Lf/m/a/b;

    invoke-interface {p1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "usb"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Le/b/a/a/p/o/c/c;->g:Landroid/hardware/usb/UsbManager;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/c/c;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/b/a/a/p/o/c/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Le/b/a/a/p/o/c/c$b;

    invoke-direct {p1, p0}, Le/b/a/a/p/o/c/c$b;-><init>(Le/b/a/a/p/o/c/c;)V

    invoke-static {p1}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/p/o/c/c;->j:Lf/a;

    sget-object p1, Le/b/a/a/p/o/c/c$a;->e:Le/b/a/a/p/o/c/c$a;

    invoke-static {p1}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/p/o/c/c;->k:Lf/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8

    const/4 v0, 0x3

    const-string v1, "args"

    const-string v2, "tag"

    const-string v3, "CarLife_SDK"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    new-array p1, v4, [Ljava/lang/Object;

    const-string v4, "this device is null"

    aput-object v4, p1, v5

    .line 1
    invoke-static {v3, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, v3, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v5

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v6

    if-ne v4, v6, :cond_3

    invoke-virtual {p1, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    const-string v6, "device.getInterface(STORAGE_INTERFACE_ID)"

    invoke-static {p1, v6}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    const/16 v7, 0x8

    if-ne v7, v6, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    const/4 v7, 0x6

    if-ne v7, v6, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result p1

    const/16 v6, 0x50

    if-ne v6, p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    const-string v6, "this device is mass storage 2"

    aput-object v6, p1, v5

    .line 5
    invoke-static {v3, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, v3, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v4

    :cond_3
    return v5
.end method

.method public final b(Landroid/hardware/usb/UsbDevice;)Z
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "UsbAccessoryScanner start openAccessory isStopped: "

    aput-object v3, v1, v2

    iget-object v3, p0, Le/b/a/a/p/o/c/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "CarLife_SDK"

    const-string v5, "tag"

    .line 1
    invoke-static {v3, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "args"

    invoke-static {v1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v8, 0x3

    if-nez v7, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v8, v3, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v1, p0, Le/b/a/a/p/o/c/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_a

    .line 5
    iget-object v1, p0, Le/b/a/a/p/o/c/c;->j:Lf/a;

    invoke-interface {v1}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v7, 0x6

    const-string v9, "openAccessory exception: "

    if-nez v1, :cond_4

    .line 6
    new-instance v1, Le/b/a/a/p/o/c/b;

    iget-object v10, p0, Le/b/a/a/p/o/c/c;->e:Le/b/a/a/c;

    invoke-direct {v1, v10, p1}, Le/b/a/a/p/o/c/b;-><init>(Le/b/a/a/c;Landroid/hardware/usb/UsbDevice;)V

    :try_start_0
    const-string p1, "UsbAccessoryCommunicator openAccessory"

    .line 7
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v1, Le/b/a/a/p/o/c/b;->a:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, v1, Le/b/a/a/p/o/c/b;->c:Landroid/hardware/usb/UsbInterface;

    iget-object p1, v1, Le/b/a/a/p/o/c/b;->b:Landroid/hardware/usb/UsbManager;

    iget-object v10, v1, Le/b/a/a/p/o/c/b;->a:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v10}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    iput-object p1, v1, Le/b/a/a/p/o/c/b;->d:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    iget-object v10, v1, Le/b/a/a/p/o/c/b;->c:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {p1, v10, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    new-instance p1, Le/b/a/a/p/o/c/d;

    iget-object v10, v1, Le/b/a/a/p/o/c/b;->a:Landroid/hardware/usb/UsbDevice;

    iget-object v11, v1, Le/b/a/a/p/o/c/b;->d:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v11}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-direct {p1, v10, v11}, Le/b/a/a/p/o/c/d;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    invoke-virtual {p1}, Le/b/a/a/p/o/c/d;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1, v2}, Le/b/a/a/p/o/c/b;->d(Z)V

    const-string p1, "UsbAccessoryCommunicator openAccessory switch to aoa"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v9, v10, v2

    aput-object p1, v10, v4

    .line 8
    invoke-static {v3, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object p1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v10, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v7, v3, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :goto_1
    invoke-virtual {v1, v4}, Le/b/a/a/p/o/c/b;->d(Z)V

    :goto_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_a

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "UsbAccessoryScanner1 openAccessory success"

    aput-object v0, p1, v2

    .line 12
    invoke-static {v3, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_3

    goto/16 :goto_7

    .line 14
    :cond_3
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v8, v3, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 15
    :cond_4
    new-instance v1, Le/b/a/a/p/o/c/e/c;

    iget-object v10, p0, Le/b/a/a/p/o/c/c;->e:Le/b/a/a/c;

    invoke-direct {v1, v10, p1}, Le/b/a/a/p/o/c/e/c;-><init>(Le/b/a/a/c;Landroid/hardware/usb/UsbDevice;)V

    .line 16
    :try_start_1
    iget-object p1, v1, Le/b/a/a/p/o/c/e/c;->a:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, v1, Le/b/a/a/p/o/c/e/c;->d:Landroid/hardware/usb/UsbInterface;

    iget-object p1, v1, Le/b/a/a/p/o/c/e/c;->b:Landroid/hardware/usb/UsbManager;

    iget-object v10, v1, Le/b/a/a/p/o/c/e/c;->a:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v10}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    iput-object p1, v1, Le/b/a/a/p/o/c/e/c;->e:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    iget-object v10, v1, Le/b/a/a/p/o/c/e/c;->d:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {p1, v10, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    new-instance p1, Le/b/a/a/p/o/c/d;

    iget-object v10, v1, Le/b/a/a/p/o/c/e/c;->a:Landroid/hardware/usb/UsbDevice;

    iget-object v11, v1, Le/b/a/a/p/o/c/e/c;->e:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v11}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-direct {p1, v10, v11}, Le/b/a/a/p/o/c/d;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    invoke-virtual {p1}, Le/b/a/a/p/o/c/d;->b()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Le/b/a/a/p/o/c/e/c;->c()V

    goto :goto_5

    :cond_5
    iget-object p1, v1, Le/b/a/a/p/o/c/e/c;->c:Le/b/a/a/p/o/c/e/d;

    iget-object v10, v1, Le/b/a/a/p/o/c/e/c;->e:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v10}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    iget-object v11, v1, Le/b/a/a/p/o/c/e/c;->d:Landroid/hardware/usb/UsbInterface;

    invoke-static {v11}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    if-eqz p1, :cond_7

    const-string v12, "connection"

    .line 17
    invoke-static {v10, v12}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "interfaze"

    invoke-static {v11, v12}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, p1, Le/b/a/a/p/o/c/e/d;->a:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v12, :cond_6

    iget-object v12, p1, Le/b/a/a/p/o/c/e/d;->b:Landroid/hardware/usb/UsbInterface;

    if-nez v12, :cond_6

    iput-object v10, p1, Le/b/a/a/p/o/c/e/d;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v11, p1, Le/b/a/a/p/o/c/e/d;->b:Landroid/hardware/usb/UsbInterface;

    const/4 p1, 0x1

    goto :goto_6

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v10, "can not attach to a pool which already attached"

    invoke-direct {p1, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p1

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v9, v10, v2

    aput-object p1, v10, v4

    .line 18
    invoke-static {v3, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object p1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p1, :cond_8

    goto :goto_4

    .line 20
    :cond_8
    invoke-static {v10, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v7, v3, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :goto_4
    invoke-virtual {v1}, Le/b/a/a/p/o/c/e/c;->c()V

    :goto_5
    const/4 p1, 0x0

    :goto_6
    if-eqz p1, :cond_a

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "UsbAccessoryScanner2 openAccessory success"

    aput-object v0, p1, v2

    .line 22
    invoke-static {v3, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_9

    goto :goto_7

    .line 24
    :cond_9
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v8, v3, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :goto_7
    iget-object p1, p0, Le/b/a/a/p/o/c/c;->f:Lf/m/a/b;

    invoke-interface {p1, v1}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_a
    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "UsbAccessoryScanner openAccessory failed"

    aput-object v0, p1, v2

    .line 26
    invoke-static {v3, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_b

    goto :goto_8

    .line 28
    :cond_b
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v8, v3, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    return v2
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Le/b/a/a/p/o/c/c;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/b/a/a/p/o/c/c;->e:Le/b/a/a/c;

    invoke-interface {v1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.baidu.carlifevehicle.connect.USB_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Le/b/a/a/p/o/c/c;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "UsbAccessoryScanner action with "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/b/a/a/p/o/c/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v0, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v5, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v6, 0x3

    if-nez v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v7, v0

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v6, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/b/a/a/p/o/c/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v7, -0x7e02a835

    const-string v8, "device"

    if-eq v5, v7, :cond_7

    const p1, -0x5fdc9a67

    if-eq v5, p1, :cond_5

    const p1, -0x11f6ffa0    # -1.0599975E28f

    if-eq v5, p1, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string p1, "com.baidu.carlifevehicle.connect.USB_PERMISSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string p1, "permission"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Le/b/a/a/p/o/c/c;->b(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Le/b/a/a/p/o/c/c;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void

    :cond_5
    const-string p1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Le/b/a/a/p/o/c/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :cond_7
    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p2}, Le/b/a/a/p/o/c/c;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "UsbAccessoryScanner ACTION_USB_DEVICE_ATTACHED with "

    aput-object v5, v0, v2

    aput-object p2, v0, p1

    .line 5
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p1, :cond_b

    goto :goto_1

    .line 7
    :cond_b
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v6, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_1
    iget-object p1, p0, Le/b/a/a/p/o/c/c;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p2}, Le/b/a/a/p/o/c/c;->b(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    :cond_c
    iget-object p1, p0, Le/b/a/a/p/o/c/c;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_2
    invoke-virtual {p0}, Le/b/a/a/p/o/c/c;->c()V

    :cond_e
    :goto_3
    return-void
.end method

.method public run()V
    .locals 13

    iget-object v0, p0, Le/b/a/a/p/o/c/c;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "UsbAccessoryScanner deviceList"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Le/b/a/a/p/o/c/c;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "CarLife_SDK"

    const-string v5, "tag"

    .line 1
    invoke-static {v2, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "args"

    invoke-static {v1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v8, 0x3

    if-nez v7, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v9, v1

    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v8, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v1, p0, Le/b/a/a/p/o/c/c;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0, v7}, Le/b/a/a/p/o/c/c;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, p0, Le/b/a/a/p/o/c/c;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v9, v7}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "UsbAccessoryScanner deal with "

    aput-object v11, v10, v3

    aput-object v7, v10, v4

    const-string v11, " has permission "

    aput-object v11, v10, v0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    .line 5
    invoke-static {v2, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v11, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v11, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    array-length v12, v10

    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v11, v8, v2, v10}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-eqz v9, :cond_4

    const-string v9, "device"

    .line 8
    invoke-static {v7, v9}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Le/b/a/a/p/o/c/c;->b(Landroid/hardware/usb/UsbDevice;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Le/b/a/a/p/o/c/c;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v9

    const/16 v10, 0x5ac

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Le/b/a/a/p/o/c/c;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_3
    invoke-virtual {p0}, Le/b/a/a/p/o/c/c;->c()V

    return-void
.end method
