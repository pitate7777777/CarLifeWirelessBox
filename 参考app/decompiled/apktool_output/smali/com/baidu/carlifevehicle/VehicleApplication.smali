.class public final Lcom/baidu/carlifevehicle/VehicleApplication;
.super Landroid/app/Application;
.source ""


# static fields
.field public static f:Landroid/app/Application;


# instance fields
.field public final e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/baidu/carlifevehicle/VehicleApplication$a;

    invoke-direct {v0, p0}, Lcom/baidu/carlifevehicle/VehicleApplication$a;-><init>(Lcom/baidu/carlifevehicle/VehicleApplication;)V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/VehicleApplication;->e:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 16

    move-object/from16 v8, p0

    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "<set-?>"

    .line 1
    invoke-static {v8, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v8, Lcom/baidu/carlifevehicle/VehicleApplication;->f:Landroid/app/Application;

    .line 2
    invoke-static {}, Le/b/b/s/e;->a()Le/b/b/s/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const-string v2, "Carlife"

    const/4 v9, 0x0

    .line 3
    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v0, Le/b/b/s/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, v0, Le/b/b/s/e;->b:Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x2

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    const-string v4, "CarlifeConnectStatus"

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v0, Le/b/b/s/e;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, v0, Le/b/b/s/e;->d:Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "init jar sp fail"

    aput-object v4, v3, v9

    const-string v4, "PreferenceUtil"

    invoke-static {v4, v3}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "usb"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    move-object v3, v0

    check-cast v3, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v11, "CarLife_SDK"

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    const-string v5, "device"

    invoke-static {v0, v5}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    const/16 v6, 0x18d1

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    const/16 v6, 0x2d00

    if-lt v5, v6, :cond_1

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    const/16 v6, 0x2d05

    if-gt v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v5

    invoke-virtual {v0, v9}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    const-class v0, Landroid/hardware/usb/UsbDeviceConnection;

    const-string v6, "resetDevice"

    new-array v7, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "USB Device resetDevice result: "

    invoke-static {v5, v0}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v0

    .line 8
    iget v3, v0, Le/b/b/s/b;->a:I

    add-int/2addr v3, v10

    iput v3, v0, Le/b/b/s/b;->a:I

    new-instance v3, Le/b/b/s/a;

    invoke-direct {v3, v0}, Le/b/b/s/a;-><init>(Le/b/b/s/b;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v12, Le/b/a/a/q/e/a;

    if-ge v0, v3, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    const/16 v5, 0x780

    if-le v4, v5, :cond_4

    const/16 v4, 0x780

    :cond_4
    if-le v0, v3, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v0

    :goto_4
    const/16 v6, 0x438

    if-le v5, v6, :cond_6

    const/16 v5, 0x438

    :cond_6
    const/16 v6, 0x1e

    invoke-direct {v12, v8, v4, v5, v6}, Le/b/a/a/q/e/a;-><init>(Landroid/content/Context;III)V

    invoke-static {}, Le/b/b/s/e;->a()Le/b/b/s/e;

    move-result-object v4

    .line 10
    iget-object v4, v4, Le/b/b/s/e;->a:Landroid/content/SharedPreferences;

    if-nez v4, :cond_7

    const/4 v4, 0x2

    goto :goto_5

    :cond_7
    const-string v5, "CarlifeConnectType"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    :goto_5
    const/4 v5, 0x3

    new-array v6, v5, [Lf/c;

    const/16 v7, 0x4000

    .line 11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 12
    new-instance v13, Lf/c;

    const-string v14, "USB_MTU"

    invoke-direct {v13, v14, v7}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v9

    const/16 v7, 0x12c

    .line 13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 14
    new-instance v13, Lf/c;

    const-string v14, "I_FRAME_INTERVAL"

    invoke-direct {v13, v14, v7}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v10

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 16
    new-instance v7, Lf/c;

    const-string v13, "CONNECT_TYPE"

    invoke-direct {v7, v13, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v2

    .line 17
    invoke-static {v6}, Ld/b/k/m$i;->I0([Lf/c;)Ljava/util/Map;

    move-result-object v4

    new-array v6, v5, [Lf/c;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 18
    new-instance v7, Lf/c;

    const-string v13, "CONFIG_LOG_LEVEL"

    invoke-direct {v7, v13, v5}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v9

    .line 19
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    new-instance v7, Lf/c;

    const-string v13, "CONFIG_USE_ASYNC_USB_MODE"

    invoke-direct {v7, v13, v5}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v10

    const/4 v5, 0x4

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 22
    new-instance v7, Lf/c;

    const-string v13, "VEHICLE_PROTOCOL_VERSION"

    invoke-direct {v7, v13, v5}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v2

    .line 23
    invoke-static {v6}, Ld/b/k/m$i;->I0([Lf/c;)Ljava/util/Map;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VehicleApplication initReceiver "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "20029999"

    const-string v5, "12345678"

    const-class v6, Lcom/baidu/carlifevehicle/CarlifeActivity;

    const-string v13, "context"

    .line 24
    invoke-static {v8, v13}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {v3, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cuid"

    invoke-static {v5, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "features"

    invoke-static {v4, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityClass"

    invoke-static {v6, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configs"

    invoke-static {v7, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<this>"

    .line 25
    invoke-static {v8, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v8, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_8

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProcessName()"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const-string v0, "android.app.ActivityThread"

    :try_start_2
    const-class v2, Landroid/app/Application;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v9, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "currentProcessName"

    :try_start_3
    new-array v14, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_9

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v2, "activity"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v15, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v15, v0, :cond_d

    const/4 v15, 0x1

    goto :goto_6

    :cond_d
    const/4 v15, 0x0

    :goto_6
    if-eqz v15, :cond_c

    move-object v1, v14

    :cond_e
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    :goto_7
    if-nez v1, :cond_f

    goto :goto_8

    :cond_f
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-nez v0, :cond_10

    :goto_8
    const-string v0, ""

    .line 27
    :cond_10
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 28
    new-instance v0, Le/b/a/a/p/h;

    const-string v1, "$this$toMutableMap"

    .line 29
    invoke-static {v4, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v4, v5

    move-object v5, v14

    .line 30
    invoke-direct/range {v1 .. v7}, Le/b/a/a/p/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Map;)V

    sput-object v0, Le/b/a/a/p/b;->a:Le/b/a/a/p/c;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverService;

    invoke-direct {v0, v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_a

    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverService;

    invoke-direct {v0, v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_a
    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "carlife sdk version: 2.1.8"

    aput-object v1, v0, v9

    const-string v1, "tag"

    .line 31
    invoke-static {v11, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_12

    goto :goto_b

    .line 33
    :cond_12
    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v11, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :goto_b
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    .line 35
    invoke-static {v0, v13}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le/b/b/n/d/f;->a:Le/b/b/n/d/f;

    .line 36
    invoke-static {v0, v13}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Le/b/b/n/d/f;->c:Le/b/a/a/c;

    .line 37
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    invoke-virtual {v0, v12}, Le/b/a/a/p/h;->w(Le/b/a/a/q/e/a;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    new-instance v1, Le/b/b/n/d/e;

    invoke-direct {v1}, Le/b/b/n/d/e;-><init>()V

    invoke-interface {v0, v1}, Le/b/a/a/c;->W(Le/b/a/a/o/i/b;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    new-instance v1, Le/b/b/r/a;

    invoke-direct {v1}, Le/b/b/r/a;-><init>()V

    invoke-interface {v0, v1}, Le/b/a/a/c;->W(Le/b/a/a/o/i/b;)V

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/carlifevehicle/VehicleService;

    invoke-direct {v0, v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, v8, Lcom/baidu/carlifevehicle/VehicleApplication;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v0, v1, v10}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    .line 39
    :cond_13
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "can\'t init CarLife receiver not in main process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_15
    throw v1
.end method
