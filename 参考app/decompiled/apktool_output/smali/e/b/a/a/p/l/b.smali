.class public final Le/b/a/a/p/l/b;
.super Le/b/a/a/d;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Le/b/a/a/o/e/b/d$a;


# instance fields
.field public final g:Le/b/a/a/c;

.field public final h:Le/b/a/a/o/e/b/d;

.field public i:Le/b/a/a/p/j/b;

.field public final j:I


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Le/b/a/a/d;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/l/b;->g:Le/b/a/a/c;

    new-instance v0, Le/b/a/a/o/e/b/d;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, Le/b/a/a/o/e/b/d;-><init>(Le/b/a/a/c;IZLe/b/a/a/o/e/b/d$a;)V

    iput-object v0, p0, Le/b/a/a/p/l/b;->h:Le/b/a/a/o/e/b/d;

    const/4 p1, 0x2

    iput p1, p0, Le/b/a/a/p/l/b;->j:I

    return-void
.end method


# virtual methods
.method public final C(Le/b/a/a/o/h/a;)V
    .locals 11

    iget-object v0, p0, Le/b/a/a/p/l/b;->i:Le/b/a/a/p/j/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Le/b/a/a/p/j/b;->close()V

    :goto_0
    invoke-virtual {p1}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    iget-object v0, p0, Le/b/a/a/p/l/b;->g:Le/b/a/a/c;

    const-string v1, "context"

    .line 1
    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payload"

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/b/a/a/o/e/c/a/a;

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleRate()I

    move-result v3

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getChannelConfig()I

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleFormat()I

    move-result v5

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Le/b/a/a/o/e/c/a/a;-><init>(IIIJI)V

    new-instance p1, Le/b/a/a/p/j/b;

    const v2, 0x8000

    invoke-direct {p1, v0, v1, v2}, Le/b/a/a/p/j/b;-><init>(Le/b/a/a/c;Le/b/a/a/o/e/c/a/a;I)V

    .line 2
    iput-object p1, p0, Le/b/a/a/p/l/b;->i:Le/b/a/a/p/j/b;

    iget-object v3, p0, Le/b/a/a/p/l/b;->g:Le/b/a/a/c;

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Le/b/a/a/a;->j(Le/b/a/a/c;Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZILjava/lang/Object;)I

    iget-object p1, p0, Le/b/a/a/p/l/b;->h:Le/b/a/a/o/e/b/d;

    iget-object v0, p0, Le/b/a/a/p/l/b;->i:Le/b/a/a/p/j/b;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Le/b/a/a/o/e/b/d;->c(Le/b/a/a/o/e/c/a/b;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeTTSInitProto.CarlifeTTSInit"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p2, Le/b/a/a/o/h/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "CONFIG_USE_BT_VOICE"

    invoke-interface {p1, v1, v0}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Le/b/a/a/p/l/b;->i:Le/b/a/a/p/j/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Le/b/a/a/p/j/b;->c(Le/b/a/a/o/h/a;)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/b/a/a/p/l/b;->i:Le/b/a/a/p/j/b;

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    invoke-virtual {p1}, Le/b/a/a/r/c;->f()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/b/a/a/p/l/b;->i:Le/b/a/a/p/j/b;

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0, p2}, Le/b/a/a/p/l/b;->C(Le/b/a/a/o/h/a;)V

    :cond_2
    :goto_0
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

.method public synthetic b()Z
    .locals 1

    invoke-static {p0}, Le/b/a/a/o/e/b/c;->a(Le/b/a/a/o/e/b/d$a;)Z

    move-result v0

    return v0
.end method

.method public f(Le/b/a/a/o/e/c/a/b;JJ)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Le/b/a/a/p/l/b;->j:I

    return v0
.end method

.method public i(Le/b/a/a/o/e/c/a/b;ILjava/lang/String;)V
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
    iget-object p1, p0, Le/b/a/a/p/l/b;->g:Le/b/a/a/c;

    invoke-interface {p1, p0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    return-void
.end method

.method public o(Le/b/a/a/o/e/c/a/b;I)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object p1, p0, Le/b/a/a/p/l/b;->h:Le/b/a/a/o/e/b/d;

    invoke-virtual {p1}, Le/b/a/a/o/e/b/d;->f()V

    :goto_0
    return-void
.end method

.method public onConnectionDetached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 1
    iget-object p1, p0, Le/b/a/a/p/l/b;->i:Le/b/a/a/p/j/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le/b/a/a/p/j/b;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Le/b/a/a/p/l/b;->i:Le/b/a/a/p/j/b;

    :goto_0
    return-void
.end method

.method public s(Le/b/a/a/o/e/c/a/b;Z)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/b/a/a/p/l/b;->g:Le/b/a/a/c;

    invoke-interface {p1, p0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    return-void
.end method

.method public w(Le/b/a/a/o/e/c/a/b;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
