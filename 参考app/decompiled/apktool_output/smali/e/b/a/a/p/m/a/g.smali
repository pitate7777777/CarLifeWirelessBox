.class public final Le/b/a/a/p/m/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/b;


# instance fields
.field public final e:Le/b/a/a/p/e;

.field public f:Z

.field public g:J

.field public h:J

.field public i:Ljava/io/File;

.field public j:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/p/e;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/b/a/a/p/m/a/g;->e:Le/b/a/a/p/e;

    new-instance p2, Ljava/io/File;

    invoke-interface {p1}, Le/b/a/a/c;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "CarLifeTransferringFile.tmp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Le/b/a/a/p/m/a/g;->i:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    iget-wide p1, p0, Le/b/a/a/p/m/a/g;->g:J

    iget-wide v0, p0, Le/b/a/a/p/m/a/g;->h:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-object p1, p0, Le/b/a/a/p/m/a/g;->e:Le/b/a/a/p/e;

    iget-object p2, p0, Le/b/a/a/p/m/a/g;->i:Ljava/io/File;

    invoke-interface {p1, p2}, Le/b/a/a/p/e;->f(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0}, Le/b/a/a/p/m/a/g;->b()V

    goto :goto_2

    .line 2
    :pswitch_1
    iget-boolean p1, p0, Le/b/a/a/p/m/a/g;->f:Z

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->i()I

    move-result p1

    iget-wide v0, p0, Le/b/a/a/p/m/a/g;->h:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Le/b/a/a/p/m/a/g;->h:J

    iget-object v0, p0, Le/b/a/a/p/m/a/g;->j:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v1, p2, Le/b/a/a/o/h/a;->i:[B

    .line 4
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->h()I

    move-result p2

    invoke-virtual {v0, v1, p2, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 5
    :pswitch_2
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p1

    instance-of p2, p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x1

    iput-boolean p2, p0, Le/b/a/a/p/m/a/g;->f:Z

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->getFileSize()J

    move-result-wide p1

    iput-wide p1, p0, Le/b/a/a/p/m/a/g;->g:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Le/b/a/a/p/m/a/g;->h:J

    iget-object p1, p0, Le/b/a/a/p/m/a/g;->i:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/b/a/a/p/m/a/g;->i:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4
    iget-object p1, p0, Le/b/a/a/p/m/a/g;->j:Ljava/io/OutputStream;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :goto_1
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Le/b/a/a/p/m/a/g;->i:Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Le/b/a/a/p/m/a/g;->j:Ljava/io/OutputStream;

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x70007
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/o/i/a;->b(Le/b/a/a/o/i/b;Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le/b/a/a/p/m/a/g;->h:J

    iput-wide v0, p0, Le/b/a/a/p/m/a/g;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/b/a/a/p/m/a/g;->f:Z

    iget-object v0, p0, Le/b/a/a/p/m/a/g;->j:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/a/a/p/m/a/g;->j:Ljava/io/OutputStream;

    :goto_0
    return-void
.end method

.method public synthetic onConnectionAttached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->a(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionAuthenFailed(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->b(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/b/a/a/h;->c(Le/b/a/a/i;Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public onConnectionDetached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le/b/a/a/p/m/a/g;->b()V

    return-void
.end method

.method public synthetic onConnectionEstablished(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->e(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public onConnectionReattached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le/b/a/a/p/m/a/g;->b()V

    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method
