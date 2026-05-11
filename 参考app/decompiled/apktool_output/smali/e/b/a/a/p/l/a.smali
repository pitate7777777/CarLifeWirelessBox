.class public final Le/b/a/a/p/l/a;
.super Le/b/a/a/d;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Le/b/a/a/o/e/b/d$a;


# instance fields
.field public final g:Le/b/a/a/c;

.field public final h:Le/b/a/a/o/e/b/d;

.field public i:Z

.field public j:Le/b/a/a/p/j/b;

.field public final k:I


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Le/b/a/a/d;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/l/a;->g:Le/b/a/a/c;

    new-instance v0, Le/b/a/a/o/e/b/d;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, Le/b/a/a/o/e/b/d;-><init>(Le/b/a/a/c;IZLe/b/a/a/o/e/b/d$a;)V

    iput-object v0, p0, Le/b/a/a/p/l/a;->h:Le/b/a/a/o/e/b/d;

    iput v1, p0, Le/b/a/a/p/l/a;->k:I

    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p2, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p2, Le/b/a/a/o/h/a;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "CONFIG_USE_BT_VOICE"

    invoke-interface {p1, v2, v1}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Le/b/a/a/p/l/a;->j:Le/b/a/a/p/j/b;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Le/b/a/a/p/j/b;->c(Le/b/a/a/o/h/a;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p0, Le/b/a/a/p/l/a;->h:Le/b/a/a/o/e/b/d;

    invoke-virtual {p1}, Le/b/a/a/o/e/b/d;->e()V

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Le/b/a/a/p/l/a;->h:Le/b/a/a/o/e/b/d;

    invoke-virtual {p1}, Le/b/a/a/o/e/b/d;->d()V

    goto/16 :goto_1

    .line 3
    :pswitch_4
    iget-object p1, p0, Le/b/a/a/p/l/a;->j:Le/b/a/a/p/j/b;

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p1, Le/b/a/a/p/j/b;->g:Le/b/a/a/r/c;

    invoke-virtual {p1}, Le/b/a/a/r/c;->f()V

    .line 5
    iput-object v1, p0, Le/b/a/a/p/l/a;->j:Le/b/a/a/p/j/b;

    goto :goto_1

    .line 6
    :pswitch_5
    iget-object p1, p0, Le/b/a/a/p/l/a;->j:Le/b/a/a/p/j/b;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Le/b/a/a/p/j/b;->close()V

    :goto_0
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;

    iget-object p2, p0, Le/b/a/a/p/l/a;->g:Le/b/a/a/c;

    .line 7
    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/b/a/a/o/e/c/a/a;

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->getSampleRate()I

    move-result v3

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->getChannelConfig()I

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->getSampleFormat()I

    move-result v5

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Le/b/a/a/o/e/c/a/a;-><init>(IIIJI)V

    new-instance p1, Le/b/a/a/p/j/b;

    const v2, 0x19000

    invoke-direct {p1, p2, v0, v2}, Le/b/a/a/p/j/b;-><init>(Le/b/a/a/c;Le/b/a/a/o/e/c/a/a;I)V

    .line 8
    iput-object p1, p0, Le/b/a/a/p/l/a;->j:Le/b/a/a/p/j/b;

    iget-boolean p2, p0, Le/b/a/a/p/l/a;->i:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Le/b/a/a/p/l/a;->h:Le/b/a/a/o/e/b/d;

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    const-string v0, "source"

    .line 9
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Le/b/a/a/o/e/b/d;->c(Le/b/a/a/o/e/c/a/b;)V

    invoke-virtual {p2}, Le/b/a/a/o/e/b/d;->d()V

    goto :goto_1

    :cond_3
    throw v1

    .line 10
    :cond_4
    iget-object p2, p0, Le/b/a/a/p/l/a;->h:Le/b/a/a/o/e/b/d;

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Le/b/a/a/o/e/b/d;->c(Le/b/a/a/o/e/c/a/b;)V

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeMusicInitProto.CarlifeMusicInit"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_5
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

    iget v0, p0, Le/b/a/a/p/l/a;->k:I

    return v0
.end method

.method public i(Le/b/a/a/o/e/c/a/b;ILjava/lang/String;)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorMessage"

    invoke-static {p3, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public o(Le/b/a/a/o/e/c/a/b;I)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/b/a/a/p/l/a;->i:Z

    const/4 v1, -0x3

    if-eq p1, v1, :cond_3

    const/4 v1, -0x2

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/b/a/a/p/l/a;->h:Le/b/a/a/o/e/b/d;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p1, v0}, Le/b/a/a/o/e/b/d;->b(F)V

    .line 2
    iget-object p1, p0, Le/b/a/a/p/l/a;->h:Le/b/a/a/o/e/b/d;

    invoke-virtual {p1}, Le/b/a/a/o/e/b/d;->e()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le/b/a/a/p/l/a;->h:Le/b/a/a/o/e/b/d;

    invoke-virtual {p1}, Le/b/a/a/o/e/b/d;->f()V

    const/4 p1, 0x3

    .line 3
    sget-object v1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v3, 0x18028

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v0, v4}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;->setModuleID(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;->setStatusID(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    invoke-interface {p1}, Le/b/a/a/c;->p()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    invoke-interface {p1, v1}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Le/b/a/a/p/l/a;->h:Le/b/a/a/o/e/b/d;

    invoke-virtual {p1}, Le/b/a/a/o/e/b/d;->d()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Le/b/a/a/p/l/a;->h:Le/b/a/a/o/e/b/d;

    const v0, 0x3e4ccccd    # 0.2f

    .line 5
    invoke-virtual {p1, v0}, Le/b/a/a/o/e/b/d;->b(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onConnectionDetached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 1
    iget-object p1, p0, Le/b/a/a/p/l/a;->j:Le/b/a/a/p/j/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le/b/a/a/p/j/b;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Le/b/a/a/p/l/a;->j:Le/b/a/a/p/j/b;

    :goto_0
    return-void
.end method

.method public onConnectionReattached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/b/a/a/p/l/a;->j:Le/b/a/a/p/j/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le/b/a/a/p/j/b;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Le/b/a/a/p/l/a;->j:Le/b/a/a/p/j/b;

    :goto_0
    return-void
.end method

.method public s(Le/b/a/a/o/e/c/a/b;Z)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public w(Le/b/a/a/o/e/c/a/b;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public z(II)V
    .locals 11

    iget-object v1, p0, Le/b/a/a/p/l/a;->g:Le/b/a/a/c;

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

    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "MusicModule onModuleStateChanged "

    aput-object v6, v1, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    const-string v6, "->"

    const/4 v10, 0x2

    aput-object v6, v1, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

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

    invoke-virtual {v2, v5, v4, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v9, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Le/b/a/a/p/l/a;->g:Le/b/a/a/c;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Le/b/a/a/a;->j(Le/b/a/a/c;Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZILjava/lang/Object;)I

    move-result v0

    if-ne v0, v10, :cond_2

    const/4 v8, 0x1

    :cond_2
    iput-boolean v8, p0, Le/b/a/a/p/l/a;->i:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Le/b/a/a/p/l/a;->g:Le/b/a/a/c;

    invoke-interface {v0, p0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    goto :goto_1

    :cond_4
    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "MusicModule onModuleStateChanged IS_BT_STATUS"

    aput-object v1, v0, v8

    .line 5
    invoke-static {v4, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_5

    goto :goto_1

    .line 7
    :cond_5
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v5, v4, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
