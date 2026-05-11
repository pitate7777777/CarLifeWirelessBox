.class public final Le/b/a/a/p/o/e/d$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/p/o/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public e:Z

.field public final synthetic f:Le/b/a/a/p/o/e/d;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/e/d;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/b/a/a/p/o/e/d$a;->e:Z

    const-string p1, "WIFIConnectThread"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "args"

    const-string v1, "tag"

    const-string v2, "CarLife_SDK"

    :cond_0
    :goto_0
    iget-boolean v3, p0, Le/b/a/a/p/o/e/d$a;->e:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    new-instance v7, Ljava/net/DatagramPacket;

    iget-object v8, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    .line 1
    iget-object v8, v8, Le/b/a/a/p/o/e/d;->c:[B

    .line 2
    iget-object v9, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    .line 3
    iget-object v9, v9, Le/b/a/a/p/o/e/d;->c:[B

    .line 4
    invoke-static {v9}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    array-length v9, v9

    invoke-direct {v7, v8, v9}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 5
    iput-object v7, v6, Le/b/a/a/p/o/e/d;->e:Ljava/net/DatagramPacket;

    .line 6
    iget-object v6, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    .line 7
    iget-object v6, v6, Le/b/a/a/p/o/e/d;->b:Le/b/a/a/c;

    invoke-interface {v6}, Le/b/a/a/c;->e1()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_7

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "start read broadcast socket"

    aput-object v7, v6, v4

    .line 8
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v7, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v3, v2, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :goto_2
    iget-object v6, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    .line 12
    iget-object v6, v6, Le/b/a/a/p/o/e/d;->d:Ljava/net/DatagramSocket;

    .line 13
    invoke-static {v6}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    iget-object v7, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    .line 14
    iget-object v7, v7, Le/b/a/a/p/o/e/d;->e:Ljava/net/DatagramPacket;

    .line 15
    invoke-virtual {v6, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "read broadcast socket"

    aput-object v7, v6, v4

    .line 16
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v7, :cond_3

    goto :goto_3

    .line 18
    :cond_3
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v3, v2, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :goto_3
    iget-boolean v6, p0, Le/b/a/a/p/o/e/d$a;->e:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    .line 20
    iget-object v6, v6, Le/b/a/a/p/o/e/d;->e:Ljava/net/DatagramPacket;

    if-eqz v6, :cond_0

    .line 21
    iget-object v6, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    .line 22
    iget-object v6, v6, Le/b/a/a/p/o/e/d;->b:Le/b/a/a/c;

    invoke-interface {v6}, Le/b/a/a/c;->e1()I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_0

    .line 23
    iget-object v6, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    .line 24
    iget-object v6, v6, Le/b/a/a/p/o/e/d;->e:Ljava/net/DatagramPacket;

    .line 25
    invoke-static {v6}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "connect  packet:"

    :try_start_1
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 26
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v8, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v8, :cond_5

    goto :goto_5

    .line 28
    :cond_5
    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v3, v2, v7}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :goto_5
    iget-object v7, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    .line 30
    iget-object v7, v7, Le/b/a/a/p/o/e/d;->g:Le/b/a/a/p/o/e/c;

    .line 31
    invoke-static {v7}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    const-string v8, "serverIPAddress.hostAddress"

    invoke-static {v6, v8}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Le/b/a/a/p/o/e/c;->d(Ljava/lang/String;)Z

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "wifi onConnectionAttached"

    aput-object v7, v6, v4

    .line 32
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v7, :cond_6

    goto :goto_6

    .line 34
    :cond_6
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v3, v2, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :goto_6
    iget-object v6, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    invoke-virtual {v6}, Le/b/a/a/o/i/e;->c()V

    goto/16 :goto_0

    :cond_7
    new-array v6, v5, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "is connected stop wifi :"

    :try_start_2
    iget-object v8, p0, Le/b/a/a/p/o/e/d$a;->f:Le/b/a/a/p/o/e/d;

    .line 36
    iget-object v8, v8, Le/b/a/a/p/o/e/d;->b:Le/b/a/a/c;

    .line 37
    invoke-interface {v8}, Le/b/a/a/c;->p0()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 38
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v7, :cond_8

    goto :goto_7

    .line 40
    :cond_8
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v3, v2, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :goto_7
    iput-boolean v4, p0, Le/b/a/a/p/o/e/d$a;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "UDPSocket IOException:"

    aput-object v9, v8, v4

    aput-object v6, v8, v5

    .line 42
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_9

    goto :goto_8

    .line 44
    :cond_9
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v2, v5}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    const-wide/16 v3, 0x3e8

    .line 45
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    goto/16 :goto_0

    :cond_a
    return-void
.end method
