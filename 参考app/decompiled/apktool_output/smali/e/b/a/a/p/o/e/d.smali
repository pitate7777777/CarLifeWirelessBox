.class public final Le/b/a/a/p/o/e/d;
.super Le/b/a/a/o/i/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/p/o/e/d$a;
    }
.end annotation


# instance fields
.field public final b:Le/b/a/a/c;

.field public c:[B

.field public d:Ljava/net/DatagramSocket;

.field public e:Ljava/net/DatagramPacket;

.field public f:Le/b/a/a/p/o/e/d$a;

.field public final g:Le/b/a/a/p/o/e/c;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V
    .locals 1

    const-string v0, "mCarLifeContext"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Le/b/a/a/o/i/e;-><init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V

    iput-object p1, p0, Le/b/a/a/p/o/e/d;->b:Le/b/a/a/c;

    new-instance p1, Le/b/a/a/p/o/e/c;

    invoke-direct {p1}, Le/b/a/a/p/o/e/c;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/e/d;->g:Le/b/a/a/p/o/e/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    const-string v0, "args"

    const-string v1, "tag"

    const-string v2, "CarLife_SDK"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "WirlessProtocolTransport connect listener"

    aput-object v7, v6, v5

    .line 1
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v7, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v8, v6

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v3, v2, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v6, p0, Le/b/a/a/p/o/e/d;->d:Ljava/net/DatagramSocket;

    if-nez v6, :cond_1

    new-instance v6, Ljava/net/DatagramSocket;

    const/16 v7, 0x1f3f

    invoke-direct {v6, v7}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v6, p0, Le/b/a/a/p/o/e/d;->d:Ljava/net/DatagramSocket;

    const/16 v6, 0x400

    new-array v6, v6, [B

    iput-object v6, p0, Le/b/a/a/p/o/e/d;->c:[B

    :cond_1
    iget-object v6, p0, Le/b/a/a/p/o/e/d;->f:Le/b/a/a/p/o/e/d$a;

    if-nez v6, :cond_3

    new-instance v6, Le/b/a/a/p/o/e/d$a;

    invoke-direct {v6, p0}, Le/b/a/a/p/o/e/d$a;-><init>(Le/b/a/a/p/o/e/d;)V

    iput-object v6, p0, Le/b/a/a/p/o/e/d;->f:Le/b/a/a/p/o/e/d$a;

    invoke-static {v6}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "connect error:"

    aput-object v8, v7, v5

    aput-object v6, v7, v4

    .line 5
    invoke-static {v2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    array-length v1, v7

    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Le/b/a/a/o/h/a;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/p/o/e/d;->g:Le/b/a/a/p/o/e/c;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Le/b/a/a/p/o/e/c;->a(Le/b/a/a/o/h/a;)V

    return-void
.end method

.method public e()Le/b/a/a/o/h/a;
    .locals 1

    iget-object v0, p0, Le/b/a/a/p/o/e/d;->g:Le/b/a/a/p/o/e/c;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Le/b/a/a/p/o/e/c;->b()Le/b/a/a/o/h/a;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Le/b/a/a/p/o/e/d;->f:Le/b/a/a/p/o/e/d$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 1
    iput-boolean v1, v0, Le/b/a/a/p/o/e/d$a;->e:Z

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/b/a/a/p/o/e/d;->f:Le/b/a/a/p/o/e/d$a;

    iget-object v2, p0, Le/b/a/a/p/o/e/d;->g:Le/b/a/a/p/o/e/c;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Le/b/a/a/p/o/e/c;->c()V

    :goto_0
    iget-object v2, p0, Le/b/a/a/p/o/e/d;->d:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    iput-object v0, p0, Le/b/a/a/p/o/e/d;->d:Ljava/net/DatagramSocket;

    iput-object v0, p0, Le/b/a/a/p/o/e/d;->e:Ljava/net/DatagramPacket;

    invoke-virtual {p0}, Le/b/a/a/o/i/e;->d()V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "WirlessProtocolTransport terminate"

    aput-object v3, v2, v1

    const-string v1, "CarLife_SDK"

    const-string v3, "tag"

    .line 3
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v3, v2, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
