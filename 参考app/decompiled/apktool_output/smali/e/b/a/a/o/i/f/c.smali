.class public Le/b/a/a/o/i/f/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/f/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/o/i/f/c$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/net/Socket;

.field public final c:Le/b/a/a/o/i/f/b$a;

.field public final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/b/a/a/o/h/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Le/b/a/a/o/i/f/c$a;

.field public final g:Ljava/io/InputStream;

.field public final h:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILe/b/a/a/o/i/f/b$a;Ljava/util/concurrent/BlockingQueue;I)V
    .locals 0

    and-int/lit8 p4, p6, 0x8

    and-int/lit8 p4, p6, 0x10

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    move-object p5, p6

    :cond_0
    const-string p4, "host"

    .line 1
    invoke-static {p2, p4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/net/Socket;

    invoke-direct {p4, p2, p3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const-string p2, "socket"

    .line 2
    invoke-static {p4, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/b/a/a/o/i/f/c;->a:I

    iput-object p4, p0, Le/b/a/a/o/i/f/c;->b:Ljava/net/Socket;

    iput-object p6, p0, Le/b/a/a/o/i/f/c;->c:Le/b/a/a/o/i/f/b$a;

    iput-object p5, p0, Le/b/a/a/o/i/f/c;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Le/b/a/a/o/i/f/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const-string p3, "socket.getInputStream()"

    invoke-static {p2, p3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/b/a/a/o/i/f/c;->g:Ljava/io/InputStream;

    invoke-virtual {p4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const-string p3, "socket.getOutputStream()"

    invoke-static {p2, p3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/b/a/a/o/i/f/c;->h:Ljava/io/OutputStream;

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Le/b/a/a/o/i/f/c$a;

    invoke-direct {p2, p1, p5, p0}, Le/b/a/a/o/i/f/c$a;-><init>(ILjava/util/concurrent/BlockingQueue;Le/b/a/a/o/i/f/b;)V

    iput-object p2, p0, Le/b/a/a/o/i/f/c;->f:Le/b/a/a/o/i/f/c$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Le/b/a/a/o/h/a;)V
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/i/f/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Le/b/a/a/o/h/a;->m()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    iget-object v3, p0, Le/b/a/a/o/i/f/c;->h:Ljava/io/OutputStream;

    .line 1
    iget-object v4, p1, Le/b/a/a/o/h/a;->i:[B

    sub-int v5, v0, v1

    .line 2
    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Le/b/a/a/o/i/f/c;->c()V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "socket has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Le/b/a/a/o/h/a;
    .locals 5

    iget-object v0, p0, Le/b/a/a/o/i/f/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    iget v1, p0, Le/b/a/a/o/i/f/c;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Le/b/a/a/o/i/f/c;->g:Ljava/io/InputStream;

    .line 1
    iget-object v2, v0, Le/b/a/a/o/h/a;->i:[B

    .line 2
    invoke-virtual {v0}, Le/b/a/a/o/h/a;->h()I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Ld/b/k/m$i;->g(Ljava/io/InputStream;[BII)V

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Le/b/a/a/o/h/a;->y(I)V

    iget-object v1, p0, Le/b/a/a/o/i/f/c;->g:Ljava/io/InputStream;

    .line 3
    iget-object v2, v0, Le/b/a/a/o/h/a;->i:[B

    .line 4
    invoke-virtual {v0}, Le/b/a/a/o/h/a;->h()I

    move-result v3

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->i()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Ld/b/k/m$i;->g(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->w()V

    invoke-virtual {p0}, Le/b/a/a/o/i/f/c;->c()V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 12

    const-string v0, "args"

    const-string v1, "tag"

    const-string v2, "CarLife_SDK"

    const-string v3, "Communicator "

    iget-object v4, p0, Le/b/a/a/o/i/f/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    :try_start_0
    iget-object v9, p0, Le/b/a/a/o/i/f/c;->b:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->shutdownInput()V

    iget-object v9, p0, Le/b/a/a/o/i/f/c;->b:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->shutdownOutput()V

    iget-object v9, p0, Le/b/a/a/o/i/f/c;->b:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v3, v10, v6

    iget v11, p0, Le/b/a/a/o/i/f/c;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    const-string v11, " terminate exception: "

    aput-object v11, v10, v4

    aput-object v9, v10, v8

    .line 1
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v9, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v9, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v11, v10

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v8, v2, v10}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v9, p0, Le/b/a/a/o/i/f/c;->d:Ljava/util/concurrent/BlockingQueue;

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    sget-object v10, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    .line 5
    sget-object v10, Le/b/a/a/o/h/a;->n:Le/b/a/a/o/h/a;

    .line 6
    invoke-interface {v9, v10}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :goto_1
    iget-object v9, p0, Le/b/a/a/o/i/f/c;->f:Le/b/a/a/o/i/f/c$a;

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    iget-object v9, p0, Le/b/a/a/o/i/f/c;->c:Le/b/a/a/o/i/f/b$a;

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    iget v10, p0, Le/b/a/a/o/i/f/c;->a:I

    check-cast v9, Le/b/a/a/p/o/d/d;

    invoke-virtual {v9, v10}, Le/b/a/a/p/o/d/d;->a(I)V

    :goto_3
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v6

    iget v3, p0, Le/b/a/a/o/i/f/c;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    const-string v3, " terminated "

    aput-object v3, v7, v4

    aput-object p0, v7, v8

    .line 7
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_4

    goto :goto_4

    .line 9
    :cond_4
    array-length v1, v7

    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v8, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_4
    return-void
.end method
