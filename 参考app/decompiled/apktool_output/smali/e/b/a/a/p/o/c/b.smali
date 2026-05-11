.class public final Le/b/a/a/p/o/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/f/b;


# instance fields
.field public final a:Landroid/hardware/usb/UsbDevice;

.field public final b:Landroid/hardware/usb/UsbManager;

.field public c:Landroid/hardware/usb/UsbInterface;

.field public d:Landroid/hardware/usb/UsbDeviceConnection;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:[B


# direct methods
.method public constructor <init>(Le/b/a/a/c;Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbDevice"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/b/a/a/p/o/c/b;->a:Landroid/hardware/usb/UsbDevice;

    invoke-interface {p1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "usb"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Le/b/a/a/p/o/c/b;->b:Landroid/hardware/usb/UsbManager;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/b/a/a/p/o/c/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Le/b/a/a/p/o/c/b;->f:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Le/b/a/a/o/h/a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "message"

    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "UsbAccessoryCommunicator write "

    aput-object v5, v3, v4

    const-string v5, "CarLife_SDK"

    const-string v6, "tag"

    .line 1
    invoke-static {v5, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "args"

    invoke-static {v3, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v8, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v8, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v5, v3}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v3, v0, Le/b/a/a/p/o/c/b;->d:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v3, :cond_9

    iget-object v8, v0, Le/b/a/a/p/o/c/b;->c:Landroid/hardware/usb/UsbInterface;

    invoke-static {v8}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v8, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v8

    const/4 v9, 0x0

    :cond_1
    :goto_1
    const/4 v15, 0x6

    if-nez v9, :cond_3

    invoke-static {v1, v4, v2}, Le/b/a/a/o/h/a;->s(Le/b/a/a/o/h/a;ZI)[B

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v9, 0x0

    move-object v10, v3

    move-object v11, v8

    move v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v9

    if-nez v9, :cond_1

    new-array v10, v2, [Ljava/lang/Object;

    const-string v11, "bulkTransfer write zero header length"

    aput-object v11, v10, v4

    .line 5
    invoke-static {v5, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v11, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v11, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v10, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const/4 v15, 0x6

    invoke-virtual {v11, v15, v5, v10}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-ltz v9, :cond_8

    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_6

    .line 8
    iget-object v12, v1, Le/b/a/a/o/h/a;->i:[B

    .line 9
    invoke-virtual/range {p1 .. p1}, Le/b/a/a/o/h/a;->m()I

    move-result v14

    const/4 v13, 0x0

    const/4 v9, 0x0

    move-object v10, v3

    move-object v11, v8

    move v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v9

    if-nez v9, :cond_5

    new-array v10, v2, [Ljava/lang/Object;

    const-string v11, "bulkTransfer write zero body length"

    aput-object v11, v10, v4

    .line 10
    invoke-static {v5, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v11, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v11, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    invoke-static {v10, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const/4 v12, 0x6

    invoke-virtual {v11, v12, v5, v10}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v12, 0x6

    :goto_4
    const/4 v15, 0x6

    goto :goto_2

    :cond_6
    if-ltz v9, :cond_7

    return-void

    .line 13
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "UsbAccessoryCommunicatorSync bulkTransfer body failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v2, "UsbAccessoryCommunicator bulkTransfer header failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "UsbAccessoryCommunicatorSync is terminated"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b()Le/b/a/a/o/h/a;
    .locals 11

    iget-object v6, p0, Le/b/a/a/p/o/c/b;->d:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v6, :cond_8

    iget-object v0, p0, Le/b/a/a/p/o/c/b;->c:Landroid/hardware/usb/UsbInterface;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v8

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v9, 0x1

    if-nez v0, :cond_2

    iget-object v2, p0, Le/b/a/a/p/o/c/b;->f:[B

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    if-nez v0, :cond_0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "bulkTransfer read zero header length"

    aput-object v2, v1, v7

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_7

    .line 4
    iget-object v0, p0, Le/b/a/a/p/o/c/b;->f:[B

    invoke-static {v0, v7, v9}, Ld/b/k/m$i;->A1([BII)I

    move-result v0

    iget-object v1, p0, Le/b/a/a/p/o/c/b;->f:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ld/b/k/m$i;->z1([BI)I

    move-result v7

    if-lt v0, v9, :cond_6

    const/4 v1, 0x7

    if-gt v0, v1, :cond_6

    if-ltz v7, :cond_6

    const/high16 v1, 0x4000000

    if-gt v7, v1, :cond_6

    sget-object v1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v7, v3}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v9

    move v10, v7

    :goto_1
    if-lez v10, :cond_5

    sub-int v3, v7, v10

    .line 5
    iget-object v2, v9, Le/b/a/a/o/h/a;->i:[B

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    move v4, v10

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    if-lez v0, :cond_3

    sub-int/2addr v10, v0

    :cond_3
    if-ltz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Le/b/a/a/o/h/a;->w()V

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbAccessoryCommunicator bulkTransfer header failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    return-object v9

    :cond_6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid message channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " or message size "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "UsbAccessoryCommunicatorSync bulkTransfer header failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "UsbAccessoryCommunicator read from terminated communicator"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/b/a/a/p/o/c/b;->d(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 4

    iget-object v0, p0, Le/b/a/a/p/o/c/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CarLife_SDK"

    const-string v1, "UsbAccessoryCommunicator terminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Le/b/a/a/p/o/c/b;->d:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Le/b/a/a/p/o/c/b;->c:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    const-class p1, Landroid/hardware/usb/UsbDeviceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "resetDevice"

    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v1, p0, Le/b/a/a/p/o/c/b;->d:Landroid/hardware/usb/UsbDeviceConnection;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "USB Device resetDevice result: "

    invoke-static {v1, p1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "USB Device resetDevice error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    :cond_1
    :goto_1
    iget-object p1, p0, Le/b/a/a/p/o/c/b;->d:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Le/b/a/a/p/o/c/b;->d:Landroid/hardware/usb/UsbDeviceConnection;

    :cond_3
    return-void
.end method
