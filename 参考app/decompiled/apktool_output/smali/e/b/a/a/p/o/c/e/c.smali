.class public final Le/b/a/a/p/o/c/e/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/f/b;


# instance fields
.field public final a:Landroid/hardware/usb/UsbDevice;

.field public final b:Landroid/hardware/usb/UsbManager;

.field public final c:Le/b/a/a/p/o/c/e/d;

.field public d:Landroid/hardware/usb/UsbInterface;

.field public e:Landroid/hardware/usb/UsbDeviceConnection;

.field public final f:Le/b/a/a/p/o/c/e/a;

.field public final g:Le/b/a/a/p/o/c/e/b;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbDevice"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/b/a/a/p/o/c/e/c;->a:Landroid/hardware/usb/UsbDevice;

    invoke-interface {p1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "usb"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Le/b/a/a/p/o/c/e/c;->b:Landroid/hardware/usb/UsbManager;

    new-instance p1, Le/b/a/a/p/o/c/e/d;

    invoke-direct {p1}, Le/b/a/a/p/o/c/e/d;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/c/e/c;->c:Le/b/a/a/p/o/c/e/d;

    new-instance p2, Le/b/a/a/p/o/c/e/a;

    invoke-direct {p2, p1}, Le/b/a/a/p/o/c/e/a;-><init>(Le/b/a/a/p/o/c/e/d;)V

    iput-object p2, p0, Le/b/a/a/p/o/c/e/c;->f:Le/b/a/a/p/o/c/e/a;

    new-instance p2, Le/b/a/a/p/o/c/e/b;

    invoke-direct {p2, p1}, Le/b/a/a/p/o/c/e/b;-><init>(Le/b/a/a/p/o/c/e/d;)V

    iput-object p2, p0, Le/b/a/a/p/o/c/e/c;->g:Le/b/a/a/p/o/c/e/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/b/a/a/p/o/c/e/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Le/b/a/a/o/h/a;)V
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/p/o/c/e/c;->g:Le/b/a/a/p/o/c/e/b;

    if-eqz v0, :cond_4

    const-string v1, "message"

    .line 1
    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    const/4 v1, 0x0

    iput v1, v0, Le/b/a/a/p/o/c/e/b;->c:I

    iget-object v2, v0, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    .line 2
    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, v2, Le/b/a/a/p/o/c/e/d;->a:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v3, :cond_3

    iget-object v3, v2, Le/b/a/a/p/o/c/e/d;->b:Landroid/hardware/usb/UsbInterface;

    if-eqz v3, :cond_3

    .line 4
    iget-object v3, v2, Le/b/a/a/p/o/c/e/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbRequest;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    new-instance v3, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v3}, Landroid/hardware/usb/UsbRequest;-><init>()V

    iget-object v5, v2, Le/b/a/a/p/o/c/e/d;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, v2, Le/b/a/a/p/o/c/e/d;->b:Landroid/hardware/usb/UsbInterface;

    invoke-static {v6}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    sget-object v5, Le/b/a/a/p/o/c/e/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "UsbRequestPool create new out request "

    aput-object v7, v6, v1

    aput-object v3, v6, v4

    const-string v1, "CarLife_SDK"

    const-string v7, "tag"

    .line 5
    invoke-static {v1, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "args"

    invoke-static {v6, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v7, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v7, v6, v1, v5}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    .line 9
    :goto_0
    iget-object v1, v2, Le/b/a/a/p/o/c/e/d;->e:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v2

    .line 11
    invoke-virtual {p1, v4}, Le/b/a/a/o/h/a;->q(Z)[B

    .line 12
    iget-object v1, p1, Le/b/a/a/o/h/a;->h:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    .line 14
    iget-object p1, p1, Le/b/a/a/o/h/a;->h:Ljava/nio/ByteBuffer;

    const-string v2, "message.wrappedHeader"

    .line 15
    invoke-static {p1, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v3, p1, v2}, Le/b/a/a/p/o/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Le/b/a/a/p/o/c/e/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    return-void

    :cond_2
    iget-object p1, v0, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    const-string v0, "MessageReader queue send header failed"

    invoke-static {p1, v3, v0}, Le/a/a/a/a;->a(Le/b/a/a/p/o/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 16
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "access before attached or after release"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public b()Le/b/a/a/o/h/a;
    .locals 15

    iget-object v0, p0, Le/b/a/a/p/o/c/e/c;->f:Le/b/a/a/p/o/c/e/a;

    invoke-virtual {v0}, Le/b/a/a/p/o/c/e/a;->a()V

    :goto_0
    iget-object v0, p0, Le/b/a/a/p/o/c/e/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Le/b/a/a/p/o/c/e/c;->e:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Le/b/a/a/p/o/c/e/c;->c:Le/b/a/a/p/o/c/e/d;

    invoke-virtual {v1, v0}, Le/b/a/a/p/o/c/e/d;->a(Landroid/hardware/usb/UsbRequest;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "CarLife_SDK"

    const-string v4, "tag"

    const-string v5, "args"

    const-string v6, "request"

    const/4 v7, 0x0

    if-eqz v1, :cond_14

    iget-object v1, p0, Le/b/a/a/p/o/c/e/c;->f:Le/b/a/a/p/o/c/e/a;

    if-eqz v1, :cond_13

    .line 1
    invoke-static {v0, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, " or message size "

    const-string v9, "invalid message channel "

    const-string v10, "MessageReader read zero header length"

    const-string v11, "header.array()"

    const-string v12, "MessageReader queue read message failed"

    const/16 v13, 0x1a

    const/4 v14, 0x7

    if-lt v6, v13, :cond_8

    .line 2
    iget-object v6, v1, Le/b/a/a/p/o/c/e/a;->d:Le/b/a/a/o/h/a;

    if-nez v6, :cond_5

    iget-object v6, v1, Le/b/a/a/p/o/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-nez v6, :cond_1

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v10, v6, v7

    .line 3
    invoke-static {v3, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_1
    iget-object v2, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    invoke-virtual {v2, v0}, Le/b/a/a/p/o/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    invoke-virtual {v1}, Le/b/a/a/p/o/c/e/a;->a()V

    goto/16 :goto_5

    :cond_1
    iget-object v3, v1, Le/b/a/a/p/o/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v11}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v2}, Ld/b/k/m$i;->A1([BII)I

    move-result v3

    iget-object v4, v1, Le/b/a/a/p/o/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4, v11}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-static {v4, v5}, Ld/b/k/m$i;->z1([BI)I

    move-result v4

    iput v4, v1, Le/b/a/a/p/o/c/e/a;->b:I

    if-lt v3, v2, :cond_2

    if-gt v3, v14, :cond_2

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    sget-object v2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    iget v4, v1, Le/b/a/a/p/o/c/e/a;->b:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v2

    .line 7
    iget-object v3, v2, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    iget-object v3, v2, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    .line 10
    iget v4, v1, Le/b/a/a/p/o/c/e/a;->b:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    .line 11
    iget-object v4, v2, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    const-string v5, "message.wrappedBody"

    .line 12
    invoke-static {v4, v5}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v1, Le/b/a/a/p/o/c/e/a;->b:I

    invoke-virtual {v3, v0, v4, v5}, Le/b/a/a/p/o/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v2, v1, Le/b/a/a/p/o/c/e/a;->d:Le/b/a/a/o/h/a;

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v2}, Le/b/a/a/o/h/a;->w()V

    iget-object v1, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    invoke-static {v1, v0, v12}, Le/a/a/a/a;->a(Le/b/a/a/p/o/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    iget-object v2, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    invoke-virtual {v2, v0}, Le/b/a/a/p/o/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    new-instance v0, Ljava/io/IOException;

    invoke-static {v9, v3, v8}, Le/a/a/a/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Le/b/a/a/p/o/c/e/a;->b:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v6}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 13
    iget-object v2, v6, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v3, v1, Le/b/a/a/p/o/c/e/a;->b:I

    sub-int v4, v3, v2

    if-ne v2, v3, :cond_6

    iget-object v2, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    invoke-virtual {v2, v0}, Le/b/a/a/p/o/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    iget-object v0, v1, Le/b/a/a/p/o/c/e/a;->d:Le/b/a/a/o/h/a;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, v1, Le/b/a/a/p/o/c/e/a;->d:Le/b/a/a/o/h/a;

    goto/16 :goto_6

    :cond_6
    iget-object v2, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    iget-object v3, v1, Le/b/a/a/p/o/c/e/a;->d:Le/b/a/a/o/h/a;

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v3, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    const-string v5, "readingMessage!!.wrappedBody"

    .line 16
    invoke-static {v3, v5}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3, v4}, Le/b/a/a/p/o/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v1}, Le/b/a/a/p/o/c/e/a;->b()V

    iget-object v1, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    invoke-static {v1, v0, v12}, Le/a/a/a/a;->a(Le/b/a/a/p/o/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 17
    :cond_8
    iget-object v6, v1, Le/b/a/a/p/o/c/e/a;->d:Le/b/a/a/o/h/a;

    const-string v13, "queuedBuffer"

    if-nez v6, :cond_e

    iget-object v6, v1, Le/b/a/a/p/o/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-nez v6, :cond_a

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v10, v6, v7

    .line 18
    invoke-static {v3, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_9

    goto :goto_3

    .line 20
    :cond_9
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :goto_3
    iget-object v2, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    invoke-virtual {v2, v0}, Le/b/a/a/p/o/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    invoke-virtual {v1}, Le/b/a/a/p/o/c/e/a;->a()V

    goto/16 :goto_5

    :cond_a
    iget-object v3, v1, Le/b/a/a/p/o/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v11}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v2}, Ld/b/k/m$i;->A1([BII)I

    move-result v3

    iget-object v4, v1, Le/b/a/a/p/o/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4, v11}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-static {v4, v5}, Ld/b/k/m$i;->z1([BI)I

    move-result v4

    iput v4, v1, Le/b/a/a/p/o/c/e/a;->b:I

    if-lt v3, v2, :cond_b

    if-gt v3, v14, :cond_b

    if-lez v4, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_d

    sget-object v2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    iget v4, v1, Le/b/a/a/p/o/c/e/a;->b:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v2

    iget-object v3, v1, Le/b/a/a/p/o/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    iget-object v4, v1, Le/b/a/a/p/o/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-static {v4, v13}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Le/b/a/a/p/o/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Le/b/a/a/p/o/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_c

    iput-object v2, v1, Le/b/a/a/p/o/c/e/a;->d:Le/b/a/a/o/h/a;

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Le/b/a/a/o/h/a;->w()V

    iget-object v1, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    invoke-static {v1, v0, v12}, Le/a/a/a/a;->a(Le/b/a/a/p/o/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    iget-object v2, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    invoke-virtual {v2, v0}, Le/b/a/a/p/o/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    new-instance v0, Ljava/io/IOException;

    invoke-static {v9, v3, v8}, Le/a/a/a/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Le/b/a/a/p/o/c/e/a;->b:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v2, v1, Le/b/a/a/p/o/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, v1, Le/b/a/a/p/o/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, v1, Le/b/a/a/p/o/c/e/a;->f:Ljava/nio/ByteBuffer;

    iget-object v4, v1, Le/b/a/a/p/o/c/e/a;->d:Le/b/a/a/o/h/a;

    invoke-static {v4}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 22
    iget-object v4, v4, Le/b/a/a/o/h/a;->i:[B

    .line 23
    iget v5, v1, Le/b/a/a/p/o/c/e/a;->e:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v3, v1, Le/b/a/a/p/o/c/e/a;->e:I

    add-int/2addr v3, v2

    iput v3, v1, Le/b/a/a/p/o/c/e/a;->e:I

    iget v2, v1, Le/b/a/a/p/o/c/e/a;->b:I

    sub-int v4, v2, v3

    if-ne v3, v2, :cond_f

    iget-object v2, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    invoke-virtual {v2, v0}, Le/b/a/a/p/o/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    iget-object v0, v1, Le/b/a/a/p/o/c/e/a;->d:Le/b/a/a/o/h/a;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, v1, Le/b/a/a/p/o/c/e/a;->d:Le/b/a/a/o/h/a;

    goto :goto_6

    :cond_f
    iget-object v2, v1, Le/b/a/a/p/o/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    iget-object v3, v1, Le/b/a/a/p/o/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-static {v3, v13}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Le/b/a/a/p/o/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-le v4, v5, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {v2, v0, v3, v4}, Le/b/a/a/p/o/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    return-object v0

    :cond_12
    invoke-virtual {v1}, Le/b/a/a/p/o/c/e/a;->b()V

    iget-object v1, v1, Le/b/a/a/p/o/c/e/a;->a:Le/b/a/a/p/o/c/e/d;

    invoke-static {v1, v0, v12}, Le/a/a/a/a;->a(Le/b/a/a/p/o/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_13
    const/4 v0, 0x0

    .line 24
    throw v0

    .line 25
    :cond_14
    iget-object v1, p0, Le/b/a/a/p/o/c/e/c;->g:Le/b/a/a/p/o/c/e/b;

    if-eqz v1, :cond_1d

    .line 26
    invoke-static {v0, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v1, Le/b/a/a/p/o/c/e/b;->c:I

    const-string v8, "MessageReader queue send body failed"

    const-string v9, "sendingMessage!!.wrappedBody"

    if-nez v6, :cond_19

    iget-object v6, v1, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    invoke-static {v6}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 27
    iget-object v6, v6, Le/b/a/a/o/h/a;->h:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-nez v6, :cond_17

    new-array v6, v2, [Ljava/lang/Object;

    const-string v8, "MessageSender send zero header length"

    aput-object v8, v6, v7

    .line 29
    invoke-static {v3, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_15

    goto :goto_7

    .line 31
    :cond_15
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :goto_7
    iget-object v2, v1, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    iget-object v3, v1, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 33
    iget-object v3, v3, Le/b/a/a/o/h/a;->h:Ljava/nio/ByteBuffer;

    const-string v4, "sendingMessage!!.wrappedHeader"

    .line 34
    invoke-static {v3, v4}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v2, v0, v3, v4}, Le/b/a/a/p/o/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_0

    :cond_16
    iget-object v1, v1, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    const-string v2, "MessageReader queue send header failed"

    invoke-static {v1, v0, v2}, Le/a/a/a/a;->a(Le/b/a/a/p/o/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_17
    iput v2, v1, Le/b/a/a/p/o/c/e/b;->c:I

    iget-object v2, v1, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    invoke-static {v2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 35
    iget-object v2, v2, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, v1, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    invoke-static {v2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 37
    iget-object v2, v2, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    .line 38
    iget-object v3, v1, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Le/b/a/a/o/h/a;->m()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, v1, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    iget-object v3, v1, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 39
    iget-object v3, v3, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    .line 40
    invoke-static {v3, v9}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    invoke-static {v4}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Le/b/a/a/o/h/a;->m()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Le/b/a/a/p/o/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_0

    :cond_18
    iget-object v1, v1, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    invoke-static {v1, v0, v8}, Le/a/a/a/a;->a(Le/b/a/a/p/o/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_19
    iget-object v6, v1, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    invoke-static {v6}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 41
    iget-object v6, v6, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-nez v6, :cond_1c

    new-array v6, v2, [Ljava/lang/Object;

    const-string v10, "MessageSender send zero body length"

    aput-object v10, v6, v7

    .line 43
    invoke-static {v3, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_1a

    goto :goto_8

    .line 45
    :cond_1a
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_8
    iget-object v2, v1, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    iget-object v3, v1, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 47
    iget-object v3, v3, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    .line 48
    invoke-static {v3, v9}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Le/b/a/a/p/o/c/e/b;->d:Le/b/a/a/o/h/a;

    invoke-static {v4}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Le/b/a/a/o/h/a;->m()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Le/b/a/a/p/o/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    iget-object v1, v1, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    invoke-static {v1, v0, v8}, Le/a/a/a/a;->a(Le/b/a/a/p/o/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1c
    const/4 v2, 0x2

    iput v2, v1, Le/b/a/a/p/o/c/e/b;->c:I

    iget-object v2, v1, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    invoke-virtual {v2, v0}, Le/b/a/a/p/o/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    iget-object v0, v1, Le/b/a/a/p/o/c/e/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    :cond_1d
    const/4 v0, 0x0

    throw v0

    .line 49
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "UsbDeviceConnection requestWait return null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "UsbAccessoryCommunicator read from terminated communicator"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 9

    iget-object v0, p0, Le/b/a/a/p/o/c/e/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Le/b/a/a/p/o/c/e/c;->c:Le/b/a/a/p/o/c/e/d;

    .line 1
    monitor-enter v0

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v0, Le/b/a/a/p/o/c/e/d;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v2, v0, Le/b/a/a/p/o/c/e/d;->b:Landroid/hardware/usb/UsbInterface;

    sget-object v3, Le/b/a/a/p/o/c/e/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, v0, Le/b/a/a/p/o/c/e/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    iget-object v6, v0, Le/b/a/a/p/o/c/e/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Le/b/a/a/p/o/c/e/d;->e:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "UsbRequestPool requests leak "

    aput-object v7, v6, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    const-string v4, "CarLife_SDK"

    const-string v7, "tag"

    .line 2
    invoke-static {v4, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "args"

    invoke-static {v6, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v8, 0x3

    if-nez v7, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v8, v4, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    iget-object v4, v0, Le/b/a/a/p/o/c/e/d;->c:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbRequest;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbRequest;->close()V

    goto :goto_1

    :cond_1
    iget-object v4, v0, Le/b/a/a/p/o/c/e/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    iget-object v4, v0, Le/b/a/a/p/o/c/e/d;->d:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbRequest;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbRequest;->close()V

    goto :goto_2

    :cond_2
    iget-object v4, v0, Le/b/a/a/p/o/c/e/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    iget-object v4, v0, Le/b/a/a/p/o/c/e/d;->e:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbRequest;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbRequest;->close()V

    goto :goto_3

    :cond_3
    iget-object v4, v0, Le/b/a/a/p/o/c/e/d;->e:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 6
    iget-object v0, p0, Le/b/a/a/p/o/c/e/c;->g:Le/b/a/a/p/o/c/e/b;

    .line 7
    iget v4, v0, Le/b/a/a/p/o/c/e/b;->c:I

    if-eq v4, v3, :cond_4

    iget-object v0, v0, Le/b/a/a/p/o/c/e/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 8
    :cond_4
    iget-object v0, p0, Le/b/a/a/p/o/c/e/c;->e:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, p0, Le/b/a/a/p/o/c/e/c;->d:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    :goto_4
    iget-object v0, p0, Le/b/a/a/p/o/c/e/c;->e:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    :goto_5
    iput-object v2, p0, Le/b/a/a/p/o/c/e/c;->e:Landroid/hardware/usb/UsbDeviceConnection;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "UsbAccessoryCommunicator released"

    aput-object v1, v0, v5

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 9
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_7

    goto :goto_6

    .line 11
    :cond_7
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v8, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1

    :cond_8
    :goto_6
    return-void
.end method
