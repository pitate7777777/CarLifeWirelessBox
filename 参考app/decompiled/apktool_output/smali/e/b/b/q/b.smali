.class public final Le/b/b/q/b;
.super Le/b/a/a/d;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Le/b/b/n/c/c$a;


# instance fields
.field public final g:Le/b/a/a/c;

.field public final h:Le/b/b/n/c/c;

.field public i:Le/b/b/n/b;

.field public final j:I


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Le/b/a/a/d;-><init>()V

    iput-object p1, p0, Le/b/b/q/b;->g:Le/b/a/a/c;

    new-instance v0, Le/b/b/n/c/c;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, Le/b/b/n/c/c;-><init>(Le/b/a/a/c;IZLe/b/b/n/c/c$a;)V

    iput-object v0, p0, Le/b/b/q/b;->h:Le/b/b/n/c/c;

    const/4 p1, 0x2

    iput p1, p0, Le/b/b/q/b;->j:I

    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p2, Le/b/a/a/o/h/a;->e:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 2
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Le/b/b/q/b;->i:Le/b/b/n/b;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Le/b/b/n/b;->c(Le/b/a/a/o/h/a;)V

    goto :goto_1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/b/b/q/b;->i:Le/b/b/n/b;

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p1, Le/b/b/n/b;->g:Le/b/a/a/r/c;

    invoke-virtual {p1}, Le/b/a/a/r/c;->f()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/b/b/q/b;->i:Le/b/b/n/b;

    goto :goto_1

    .line 6
    :pswitch_2
    iget-object p1, p0, Le/b/b/q/b;->i:Le/b/b/n/b;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Le/b/b/n/b;->close()V

    :goto_0
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    iget-object p2, p0, Le/b/b/q/b;->g:Le/b/a/a/c;

    .line 7
    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/b/b/n/c/d/a;

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleRate()I

    move-result v2

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getChannelConfig()I

    move-result v3

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleFormat()I

    move-result v4

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/b/b/n/c/d/a;-><init>(IIIJI)V

    new-instance p1, Le/b/b/n/b;

    const v1, 0x8000

    invoke-direct {p1, p2, v0, v1}, Le/b/b/n/b;-><init>(Le/b/a/a/c;Le/b/b/n/c/d/a;I)V

    .line 8
    iput-object p1, p0, Le/b/b/q/b;->i:Le/b/b/n/b;

    iget-object p1, p0, Le/b/b/q/b;->g:Le/b/a/a/c;

    check-cast p1, Le/b/a/a/o/c;

    .line 9
    iget-object v0, p1, Le/b/a/a/o/c;->t:Le/b/a/a/o/e/a;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    move-object v1, p0

    .line 10
    invoke-static/range {v0 .. v6}, Le/b/a/a/o/e/a;->f(Le/b/a/a/o/e/a;Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZI)I

    iget-object p1, p0, Le/b/b/q/b;->h:Le/b/b/n/c/c;

    iget-object p2, p0, Le/b/b/q/b;->i:Le/b/b/n/b;

    invoke-static {p2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Le/b/b/n/c/c;->c(Le/b/b/n/c/d/b;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeTTSInitProto.CarlifeTTSInit"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x40001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g()Z
    .locals 1

    invoke-static {p0}, Ld/b/k/m$i;->A0(Le/b/b/n/c/c$a;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Le/b/b/q/b;->j:I

    return v0
.end method

.method public l(Le/b/b/n/c/d/b;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/b/b/q/b;->h:Le/b/b/n/c/c;

    invoke-virtual {p1}, Le/b/b/n/c/c;->f()V

    :goto_0
    return-void
.end method

.method public onConnectionDetached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le/b/a/a/o/c;

    .line 1
    iget-object p1, p1, Le/b/a/a/o/c;->t:Le/b/a/a/o/e/a;

    .line 2
    invoke-virtual {p1, p0}, Le/b/a/a/o/e/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 3
    iget-object p1, p0, Le/b/b/q/b;->i:Le/b/b/n/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le/b/b/n/b;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Le/b/b/q/b;->i:Le/b/b/n/b;

    :goto_0
    return-void
.end method

.method public q(Le/b/b/n/c/d/b;ILjava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorMessage"

    invoke-static {p3, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "NavModule onError "

    aput-object v0, p1, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    const/4 p3, 0x2

    const-string v0, " "

    aput-object v0, p1, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "CarLife_SDK"

    const-string p3, "tag"

    .line 1
    invoke-static {p2, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "args"

    invoke-static {p1, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p3, v0, p2, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object p1, p0, Le/b/b/q/b;->g:Le/b/a/a/c;

    invoke-interface {p1, p0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    return-void
.end method

.method public r(Le/b/b/n/c/d/b;I)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public v(Le/b/b/n/c/d/b;Z)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/b/b/q/b;->g:Le/b/a/a/c;

    invoke-interface {p1, p0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    return-void
.end method

.method public x(Le/b/b/n/c/d/b;JJ)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
