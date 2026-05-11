.class public final Le/b/a/a/p/l/c;
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

.field public final k:Lf/a;


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Le/b/a/a/d;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/l/c;->g:Le/b/a/a/c;

    new-instance v0, Le/b/a/a/o/e/b/d;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, Le/b/a/a/o/e/b/d;-><init>(Le/b/a/a/c;IZLe/b/a/a/o/e/b/d$a;)V

    iput-object v0, p0, Le/b/a/a/p/l/c;->h:Le/b/a/a/o/e/b/d;

    const/4 p1, 0x4

    iput p1, p0, Le/b/a/a/p/l/c;->j:I

    new-instance p1, Le/b/a/a/p/l/c$a;

    invoke-direct {p1, p0}, Le/b/a/a/p/l/c$a;-><init>(Le/b/a/a/p/l/c;)V

    invoke-static {p1}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/p/l/c;->k:Lf/a;

    return-void
.end method


# virtual methods
.method public final C()Le/b/a/a/o/e/c/a/b;
    .locals 1

    iget-object v0, p0, Le/b/a/a/p/l/c;->k:Lf/a;

    invoke-interface {v0}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/o/e/c/a/b;

    return-object v0
.end method

.method public final E()V
    .locals 1

    iget-object v0, p0, Le/b/a/a/p/l/c;->i:Le/b/a/a/p/j/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Le/b/a/a/p/j/b;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/a/a/p/l/c;->i:Le/b/a/a/p/j/b;

    :goto_0
    return-void
.end method

.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p2, Le/b/a/a/o/h/a;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "CONFIG_USE_BT_VOICE"

    invoke-interface {p1, v2, v1}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Le/b/a/a/p/l/c;->E()V

    goto :goto_1

    .line 3
    :pswitch_2
    iget-object p1, p0, Le/b/a/a/p/l/c;->i:Le/b/a/a/p/j/b;

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p1, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    invoke-virtual {p1}, Le/b/a/a/r/c;->f()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/b/a/a/p/l/c;->i:Le/b/a/a/p/j/b;

    goto :goto_1

    .line 6
    :pswitch_3
    iget-object p1, p0, Le/b/a/a/p/l/c;->i:Le/b/a/a/p/j/b;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Le/b/a/a/p/j/b;->c(Le/b/a/a/o/h/a;)V

    goto :goto_1

    .line 7
    :pswitch_4
    iget-object p1, p0, Le/b/a/a/p/l/c;->i:Le/b/a/a/p/j/b;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Le/b/a/a/p/j/b;->close()V

    :goto_0
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    iget-object v1, p0, Le/b/a/a/p/l/c;->g:Le/b/a/a/c;

    .line 8
    invoke-static {v1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/b/a/a/o/e/c/a/a;

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleRate()I

    move-result v3

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getChannelConfig()I

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleFormat()I

    move-result v5

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Le/b/a/a/o/e/c/a/a;-><init>(IIIJI)V

    new-instance p1, Le/b/a/a/p/j/b;

    const v2, 0x8000

    invoke-direct {p1, v1, v0, v2}, Le/b/a/a/p/j/b;-><init>(Le/b/a/a/c;Le/b/a/a/o/e/c/a/a;I)V

    .line 9
    iput-object p1, p0, Le/b/a/a/p/l/c;->i:Le/b/a/a/p/j/b;

    iget-object v0, p0, Le/b/a/a/p/l/c;->h:Le/b/a/a/o/e/b/d;

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Le/b/a/a/o/e/b/d;->c(Le/b/a/a/o/e/c/a/b;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeTTSInitProto.CarlifeTTSInit"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    const p2, 0x10071

    const/4 v0, 0x0

    if-ne p1, p2, :cond_5

    invoke-virtual {p0, v0}, Le/b/a/a/d;->A(I)V

    iget-object p1, p0, Le/b/a/a/p/l/c;->h:Le/b/a/a/o/e/b/d;

    invoke-virtual {p0}, Le/b/a/a/p/l/c;->C()Le/b/a/a/o/e/c/a/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/b/a/a/o/e/b/d;->c(Le/b/a/a/o/e/c/a/b;)V

    :cond_5
    return v0

    :pswitch_data_0
    .packed-switch 0x50002
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
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

    iget v0, p0, Le/b/a/a/p/l/c;->j:I

    return v0
.end method

.method public i(Le/b/a/a/o/e/c/a/b;ILjava/lang/String;)V
    .locals 3

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "errorMessage"

    invoke-static {p3, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "VRModule onError "

    aput-object v0, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string v0, "CarLife_SDK"

    const-string v1, "tag"

    .line 1
    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Le/b/a/a/p/l/c;->C()Le/b/a/a/o/e/c/a/b;

    move-result-object p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Le/b/a/a/p/l/c;->g:Le/b/a/a/c;

    const p2, 0x18072

    invoke-interface {p1, p3, p2}, Le/b/a/a/c;->g1(II)V

    :cond_1
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
    iget-object p1, p0, Le/b/a/a/p/l/c;->h:Le/b/a/a/o/e/b/d;

    invoke-virtual {p1}, Le/b/a/a/o/e/b/d;->f()V

    :goto_0
    return-void
.end method

.method public onConnectionDetached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-virtual {p0}, Le/b/a/a/p/l/c;->E()V

    return-void
.end method

.method public s(Le/b/a/a/o/e/c/a/b;Z)V
    .locals 4

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "VRModule onFinish "

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {p2, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Le/b/a/a/p/l/c;->C()Le/b/a/a/o/e/c/a/b;

    move-result-object p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Le/b/a/a/p/l/c;->g:Le/b/a/a/c;

    const p2, 0x18072

    invoke-interface {p1, v0, p2}, Le/b/a/a/c;->g1(II)V

    :cond_1
    return-void
.end method

.method public w(Le/b/a/a/o/e/c/a/b;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public z(II)V
    .locals 9

    iget-object v1, p0, Le/b/a/a/p/l/c;->g:Le/b/a/a/c;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "CONFIG_USE_BT_VOICE"

    invoke-interface {v1, v3, v2}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "args"

    const-string v3, "tag"

    const-string v4, "CarLife_SDK"

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v8, "VRModule onModuleStateChanged "

    aput-object v8, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v7

    const/4 v5, 0x2

    const-string v8, "->"

    aput-object v8, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    .line 1
    invoke-static {v4, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v6, v4, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, v7, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Le/b/a/a/p/l/c;->g:Le/b/a/a/c;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Le/b/a/a/a;->j(Le/b/a/a/c;Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZILjava/lang/Object;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Le/b/a/a/p/l/c;->g:Le/b/a/a/c;

    invoke-interface {v0, p0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-virtual {p0}, Le/b/a/a/p/l/c;->E()V

    goto :goto_1

    :cond_3
    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "VRModule onModuleStateChanged IS_BT_STATUS"

    aput-object v1, v0, v5

    .line 5
    invoke-static {v4, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v4, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
