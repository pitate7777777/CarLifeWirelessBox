.class public final Le/b/a/a/o/i/f/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/f/b;


# instance fields
.field public final a:Landroid/bluetooth/BluetoothSocket;

.field public final b:Le/b/a/a/o/i/f/b$a;

.field public c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/io/InputStream;

.field public final e:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;Le/b/a/a/o/i/f/b$a;)V
    .locals 1

    const-string v0, "socket"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/i/f/a;->a:Landroid/bluetooth/BluetoothSocket;

    iput-object p2, p0, Le/b/a/a/o/i/f/a;->b:Le/b/a/a/o/i/f/b$a;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Le/b/a/a/o/i/f/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const-string v0, "socket.inputStream"

    invoke-static {p2, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/b/a/a/o/i/f/a;->d:Ljava/io/InputStream;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string p2, "socket.outputStream"

    invoke-static {p1, p2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/b/a/a/o/i/f/a;->e:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a(Le/b/a/a/o/h/a;)V
    .locals 5

    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/i/f/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Le/b/a/a/o/i/f/a;->e:Ljava/io/OutputStream;

    .line 1
    iget-object v1, p1, Le/b/a/a/o/h/a;->i:[B

    .line 2
    invoke-virtual {p1}, Le/b/a/a/o/h/a;->m()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "CarLife_SDK"

    const/4 v1, 0x2

    :try_start_1
    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "BluetoothCommunicator onSendMessage "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "tag"

    .line 3
    invoke-static {v0, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {v2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object p1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p0}, Le/b/a/a/o/i/f/a;->c()V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "socket has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Le/b/a/a/o/h/a;
    .locals 7

    iget-object v0, p0, Le/b/a/a/o/i/f/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Le/b/a/a/o/i/f/a;->d:Ljava/io/InputStream;

    .line 1
    iget-object v2, v0, Le/b/a/a/o/h/a;->i:[B

    .line 2
    invoke-virtual {v0}, Le/b/a/a/o/h/a;->h()I

    move-result v5

    invoke-static {v1, v2, v4, v5}, Ld/b/k/m$i;->g(Ljava/io/InputStream;[BII)V

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Le/b/a/a/o/h/a;->y(I)V

    iget-object v1, p0, Le/b/a/a/o/i/f/a;->d:Ljava/io/InputStream;

    .line 3
    iget-object v2, v0, Le/b/a/a/o/h/a;->i:[B

    .line 4
    invoke-virtual {v0}, Le/b/a/a/o/h/a;->h()I

    move-result v5

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->i()I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Ld/b/k/m$i;->g(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "CarLife_SDK"

    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "BluetoothCommunicator onReceiveMessage "

    aput-object v5, v2, v4

    aput-object v0, v2, v3

    const-string v3, "tag"

    .line 5
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v0}, Le/b/a/a/o/h/a;->w()V

    invoke-virtual {p0}, Le/b/a/a/o/i/f/a;->c()V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 10

    const-string v0, "args"

    const-string v1, "tag"

    const-string v2, "CarLife_SDK"

    iget-object v3, p0, Le/b/a/a/o/i/f/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_0
    iget-object v7, p0, Le/b/a/a/o/i/f/a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "BluetoothCommunicator terminate exception: "

    aput-object v9, v8, v5

    aput-object v7, v8, v4

    .line 1
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v7, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v9, v8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v3, v2, v8}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v7, p0, Le/b/a/a/o/i/f/a;->b:Le/b/a/a/o/i/f/b$a;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    check-cast v7, Le/b/a/a/p/o/d/d;

    invoke-virtual {v7, v4}, Le/b/a/a/p/o/d/d;->a(I)V

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "BluetoothCommunicator terminated "

    aput-object v7, v6, v5

    aput-object p0, v6, v4

    .line 5
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    array-length v1, v6

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method
