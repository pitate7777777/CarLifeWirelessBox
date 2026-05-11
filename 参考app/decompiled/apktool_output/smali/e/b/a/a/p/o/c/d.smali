.class public final Le/b/a/a/p/o/c/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/hardware/usb/UsbDevice;

.field public final b:Landroid/hardware/usb/UsbDeviceConnection;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1

    const-string v0, "usbDevice"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbConnection"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/c/d;->a:Landroid/hardware/usb/UsbDevice;

    iput-object p2, p0, Le/b/a/a/p/o/c/d;->b:Landroid/hardware/usb/UsbDeviceConnection;

    return-void
.end method

.method public static a(Le/b/a/a/p/o/c/d;III[BII)I
    .locals 8

    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v5, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_2

    if-nez v5, :cond_1

    const/4 p4, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    array-length p5, v5

    :cond_2
    move v6, p5

    .line 1
    :goto_0
    iget-object v0, p0, Le/b/a/a/p/o/c/d;->b:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x40

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 12

    .line 1
    iget-object v0, p0, Le/b/a/a/p/o/c/d;->a:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    const/16 v1, 0x18d1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/b/a/a/p/o/c/d;->a:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const/16 v1, 0x2d00

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Le/b/a/a/p/o/c/d;->a:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const/16 v1, 0x2d05

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v10, 0x2

    new-array v9, v10, [B

    .line 2
    iget-object v4, p0, Le/b/a/a/p/o/c/d;->b:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/4 v11, 0x0

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_9

    .line 3
    sget-object v0, Lf/q/a;->a:Ljava/nio/charset/Charset;

    const-string v1, "Baidu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v8, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x34

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Le/b/a/a/p/o/c/d;->a(Le/b/a/a/p/o/c/d;III[BII)I

    move-result v1

    if-gez v1, :cond_3

    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_3
    sget-object v1, Lf/q/a;->a:Ljava/nio/charset/Charset;

    const-string v4, "CarLife"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-static {v9, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x34

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Le/b/a/a/p/o/c/d;->a(Le/b/a/a/p/o/c/d;III[BII)I

    move-result v1

    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v1, Lf/q/a;->a:Ljava/nio/charset/Charset;

    const-string v4, "Baidu CarLife"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-static {v9, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x34

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Le/b/a/a/p/o/c/d;->a(Le/b/a/a/p/o/c/d;III[BII)I

    move-result v1

    if-gez v1, :cond_5

    goto :goto_2

    :cond_5
    sget-object v1, Lf/q/a;->a:Ljava/nio/charset/Charset;

    const-string v4, "1.0.0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-static {v9, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x34

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Le/b/a/a/p/o/c/d;->a(Le/b/a/a/p/o/c/d;III[BII)I

    move-result v1

    if-gez v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object v1, Lf/q/a;->a:Ljava/nio/charset/Charset;

    const-string v4, "http://carlife.baidu.com/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-static {v9, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x34

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Le/b/a/a/p/o/c/d;->a(Le/b/a/a/p/o/c/d;III[BII)I

    move-result v1

    if-gez v1, :cond_7

    goto :goto_2

    :cond_7
    sget-object v1, Lf/q/a;->a:Ljava/nio/charset/Charset;

    const-string v4, "0720SerialNo."

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-static {v9, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x34

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Le/b/a/a/p/o/c/d;->a(Le/b/a/a/p/o/c/d;III[BII)I

    move-result v0

    if-gez v0, :cond_8

    goto/16 :goto_2

    :cond_8
    :goto_3
    if-eqz v2, :cond_9

    const/16 v5, 0x35

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    move-object v4, p0

    .line 4
    invoke-static/range {v4 .. v10}, Le/b/a/a/p/o/c/d;->a(Le/b/a/a/p/o/c/d;III[BII)I

    move-result v0

    :cond_9
    return v3
.end method
