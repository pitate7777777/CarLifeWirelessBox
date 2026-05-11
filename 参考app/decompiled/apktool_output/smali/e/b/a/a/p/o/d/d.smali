.class public final Le/b/a/a/p/o/d/d;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Le/b/a/a/o/i/f/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/p/o/d/d$a;
    }
.end annotation


# instance fields
.field public final e:Le/b/a/a/c;

.field public final f:Le/b/a/a/p/o/d/d$a;

.field public final g:Lf/a;

.field public final h:Lf/a;

.field public i:Le/b/a/a/o/i/f/a;

.field public j:Z

.field public final k:Lf/a;

.field public final l:Le/b/a/a/p/o/d/d$c;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/p/o/d/d$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    iput-object p2, p0, Le/b/a/a/p/o/d/d;->f:Le/b/a/a/p/o/d/d$a;

    new-instance p1, Le/b/a/a/p/o/d/d$b;

    invoke-direct {p1, p0}, Le/b/a/a/p/o/d/d$b;-><init>(Le/b/a/a/p/o/d/d;)V

    invoke-static {p1}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/p/o/d/d;->g:Lf/a;

    new-instance p1, Le/b/a/a/p/o/d/d$e;

    invoke-direct {p1, p0}, Le/b/a/a/p/o/d/d$e;-><init>(Le/b/a/a/p/o/d/d;)V

    invoke-static {p1}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/p/o/d/d;->h:Lf/a;

    sget-object p1, Le/b/a/a/p/o/d/d$d;->e:Le/b/a/a/p/o/d/d$d;

    invoke-static {p1}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/p/o/d/d;->k:Lf/a;

    new-instance p1, Le/b/a/a/p/o/d/d$c;

    invoke-direct {p1, p0}, Le/b/a/a/p/o/d/d$c;-><init>(Le/b/a/a/p/o/d/d;)V

    iput-object p1, p0, Le/b/a/a/p/o/d/d;->l:Le/b/a/a/p/o/d/d$c;

    return-void
.end method

.method public static final b(Le/b/a/a/p/o/d/d;)V
    .locals 15

    .line 1
    invoke-virtual {p0}, Le/b/a/a/p/o/d/d;->c()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const-string v3, "args"

    const-string v4, "tag"

    const-string v5, "CarLife_SDK"

    const/4 v6, 0x6

    if-eqz v0, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    const-string v7, "bluetoothAdapter?.isEnabled: "

    invoke-static {v7}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Le/b/a/a/p/o/d/d;->c()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_2
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", so return"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 2
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p0, :cond_3

    goto/16 :goto_16

    .line 4
    :cond_3
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v6, v5, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 5
    :cond_4
    iget-object v0, p0, Le/b/a/a/p/o/d/d;->h:Lf/a;

    invoke-interface {v0}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "connected to "

    const-string v7, "socket"

    const-string v8, "00001101-0000-1000-8000-00805F9B34FB"

    const-string v9, "BluetoothDeviceDiscover connect device exception "

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v0, :cond_d

    .line 6
    invoke-virtual {p0}, Le/b/a/a/p/o/d/d;->c()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    .line 7
    iget-object v14, p0, Le/b/a/a/p/o/d/d;->h:Lf/a;

    invoke-interface {v14}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 8
    invoke-static {v13, v14}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    move-object v0, v12

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_5
    if-eqz v0, :cond_1b

    :try_start_0
    new-array v12, v11, [Ljava/lang/Object;

    const-string v13, "start connect to targetDevice: "

    aput-object v13, v12, v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v2

    .line 9
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v13, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v13, :cond_9

    goto :goto_6

    .line 11
    :cond_9
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v10, v5, v12}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :goto_6
    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothSocket;->connect()V

    invoke-static {v8, v7}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-array v7, v11, [Ljava/lang/Object;

    aput-object v6, v7, v1

    .line 13
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    .line 14
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_a

    goto :goto_8

    .line 16
    :cond_a
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v10, v5, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    :goto_7
    new-array v6, v11, [Ljava/lang/Object;

    aput-object v9, v6, v1

    aput-object v0, v6, v2

    .line 17
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_b

    goto :goto_8

    .line 19
    :cond_b
    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    if-eqz v8, :cond_c

    .line 20
    new-instance v0, Le/b/a/a/o/i/f/a;

    invoke-direct {v0, v8, p0}, Le/b/a/a/o/i/f/a;-><init>(Landroid/bluetooth/BluetoothSocket;Le/b/a/a/o/i/f/b$a;)V

    iput-object v0, p0, Le/b/a/a/p/o/d/d;->i:Le/b/a/a/o/i/f/a;

    iget-object p0, p0, Le/b/a/a/p/o/d/d;->f:Le/b/a/a/p/o/d/d$a;

    if-nez p0, :cond_19

    goto/16 :goto_16

    :cond_c
    iget-boolean v0, p0, Le/b/a/a/p/o/d/d;->j:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->Z0()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Le/b/a/a/p/o/d/d;->l:Le/b/a/a/p/o/d/d$c;

    const-wide/16 v1, 0x7d0

    goto/16 :goto_15

    :cond_d
    invoke-virtual {p0}, Le/b/a/a/p/o/d/d;->c()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_9
    const/4 v0, 0x0

    goto :goto_d

    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    const-string v12, "it"

    invoke-static {v11, v12}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v13, "isConnected"

    :try_start_3
    new-array v14, v1, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    new-array v13, v1, [Ljava/lang/Object;

    invoke-virtual {v12, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_c

    :cond_11
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v11

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "BluetoothDeviceDiscover isConnected exception "

    aput-object v14, v13, v1

    const/4 v14, 0x1

    aput-object v11, v13, v14

    .line 22
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v11, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v11, :cond_12

    goto :goto_b

    .line 24
    :cond_12
    invoke-static {v13, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x6

    invoke-virtual {v11, v13, v5, v12}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    const/4 v11, 0x1

    :goto_c
    if-eqz v11, :cond_10

    .line 25
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    move-object v0, v2

    :goto_d
    if-eqz v0, :cond_14

    goto :goto_e

    .line 26
    :cond_14
    sget-object v0, Lf/i/c;->e:Lf/i/c;

    .line 27
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v10, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    const/4 v12, 0x2

    :try_start_4
    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "start connect to bondedDevices: "

    aput-object v13, v12, v1

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 28
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v13, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v13, :cond_15

    goto :goto_10

    :cond_15
    const/4 v14, 0x2

    .line 30
    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const/4 v14, 0x3

    invoke-virtual {v13, v14, v5, v12}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    const-string v12, "connectedDevice"

    .line 31
    invoke-static {v11, v12}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v12

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothSocket;->connect()V

    invoke-static {v12, v7}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v10, 0x2

    :try_start_5
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v1

    .line 33
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    .line 34
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v11, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v11, :cond_16

    goto :goto_11

    :cond_16
    const/4 v13, 0x2

    .line 36
    invoke-static {v10, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const/4 v13, 0x3

    invoke-virtual {v11, v13, v5, v10}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_11
    move-object v10, v12

    goto :goto_14

    :catch_3
    move-exception v10

    goto :goto_12

    :catch_4
    move-exception v11

    move-object v12, v10

    move-object v10, v11

    :goto_12
    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v9, v13, v1

    const/4 v1, 0x1

    aput-object v10, v13, v1

    .line 37
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_17

    goto :goto_13

    .line 39
    :cond_17
    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v1, v11, v5, v10}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_13
    const/4 v1, 0x0

    move-object v10, v12

    goto/16 :goto_f

    :cond_18
    :goto_14
    if-eqz v10, :cond_1a

    .line 40
    new-instance v0, Le/b/a/a/o/i/f/a;

    invoke-direct {v0, v10, p0}, Le/b/a/a/o/i/f/a;-><init>(Landroid/bluetooth/BluetoothSocket;Le/b/a/a/o/i/f/b$a;)V

    iput-object v0, p0, Le/b/a/a/p/o/d/d;->i:Le/b/a/a/o/i/f/a;

    iget-object p0, p0, Le/b/a/a/p/o/d/d;->f:Le/b/a/a/p/o/d/d$a;

    if-nez p0, :cond_19

    goto :goto_16

    :cond_19
    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    check-cast p0, Le/b/a/a/p/o/d/e;

    const-string v1, "communicator"

    .line 41
    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/b/a/a/p/o/d/g;

    invoke-direct {v1, p0, v0}, Le/b/a/a/p/o/d/g;-><init>(Le/b/a/a/p/o/d/e;Le/b/a/a/o/i/f/a;)V

    const-string p0, "block"

    .line 42
    invoke-static {v1, p0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lf/j/a;

    invoke-direct {p0, v1}, Lf/j/a;-><init>(Lf/m/a/a;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_16

    .line 43
    :cond_1a
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Le/b/a/a/p/o/d/d;->j:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->Z0()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Le/b/a/a/p/o/d/d;->l:Le/b/a/a/p/o/d/d$c;

    const-wide/16 v1, 0x1388

    :goto_15
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    :goto_16
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Le/b/a/a/p/o/d/d;->i:Le/b/a/a/o/i/f/a;

    iget-object p1, p0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    invoke-interface {p1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    invoke-interface {p1}, Le/b/a/a/c;->Z0()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Le/b/a/a/p/o/d/d;->l:Le/b/a/a/p/o/d/d$c;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Le/b/a/a/p/o/d/d;->g:Lf/a;

    invoke-interface {v0}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {p1, v0}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "args"

    const-string v3, "tag"

    const-string v4, "CarLife_SDK"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    const/16 p1, 0xa

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    iget-boolean p2, p0, Le/b/a/a/p/o/d/d;->j:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    invoke-interface {p2}, Le/b/a/a/c;->Z0()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Le/b/a/a/p/o/d/d;->l:Le/b/a/a/p/o/d/d$c;

    const-wide/16 v8, 0x3e8

    invoke-virtual {p2, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "bluetoothReceiver ACTION_STATE_CHANGED "

    aput-object v0, p2, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    .line 1
    invoke-static {v4, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, v4, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 4
    invoke-static {p1, v0}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "bluetoothReceiver ACTION_CONNECTION_STATE_CHANGED "

    aput-object v0, p2, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v5

    .line 5
    invoke-static {v4, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, v4, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-ne p1, v6, :cond_4

    .line 8
    iget-object p1, p0, Le/b/a/a/p/o/d/d;->i:Le/b/a/a/o/i/f/a;

    if-nez p1, :cond_4

    iget-object p1, p0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    invoke-interface {p1}, Le/b/a/a/c;->Z0()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Le/b/a/a/p/o/d/d;->l:Le/b/a/a/p/o/d/d$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method
