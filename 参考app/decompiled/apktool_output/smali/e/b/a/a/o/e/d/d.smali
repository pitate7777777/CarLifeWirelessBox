.class public final Le/b/a/a/o/e/d/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x6

    const-string v1, "args"

    const-string v2, "tag"

    const-string v3, "CarLifeVoice"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    return v5

    :pswitch_0
    sget-object p1, Le/b/a/a/o/e/d/e;->a:Le/b/a/a/o/e/d/e;

    new-array p1, v4, [Ljava/lang/Object;

    const-string v6, "-----MSG_CMD_MIC_RECORD_RECOG_START-----"

    aput-object v6, p1, v5

    .line 1
    invoke-static {v3, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, v3, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object p1, Le/b/a/a/o/e/d/e;->b:Le/b/a/a/o/e/d/b;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    new-instance p1, Le/b/a/a/o/e/d/b;

    invoke-direct {p1, p2}, Le/b/a/a/o/e/d/b;-><init>(Le/b/a/a/c;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    sput-object p1, Le/b/a/a/o/e/d/e;->b:Le/b/a/a/o/e/d/b;

    :cond_2
    sget-object p1, Le/b/a/a/o/e/d/e;->b:Le/b/a/a/o/e/d/b;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v4}, Le/b/a/a/o/e/d/b;->a(Z)V

    .line 5
    iget-object p1, p1, Le/b/a/a/o/e/d/b;->h:Le/b/a/a/o/e/d/c;

    if-nez p1, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    iput-boolean v5, p1, Le/b/a/a/o/e/d/c;->i:Z

    :goto_1
    return v5

    .line 7
    :pswitch_1
    sget-object p1, Le/b/a/a/o/e/d/e;->a:Le/b/a/a/o/e/d/e;

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "-----MSG_CMD_MIC_RECORD_END-----"

    aput-object p2, p1, v5

    .line 8
    invoke-static {v3, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object p2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p2, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, v3, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :goto_2
    sget-object p1, Le/b/a/a/o/e/d/e;->b:Le/b/a/a/o/e/d/b;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v5}, Le/b/a/a/o/e/d/b;->a(Z)V

    :goto_3
    return v5

    .line 12
    :pswitch_2
    sget-object p1, Le/b/a/a/o/e/d/e;->a:Le/b/a/a/o/e/d/e;

    new-array p1, v4, [Ljava/lang/Object;

    const-string v6, "-----MSG_CMD_MIC_RECORD_WAKEUP_START-----"

    aput-object v6, p1, v5

    .line 13
    invoke-static {v3, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_7

    goto :goto_4

    .line 15
    :cond_7
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, v3, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_4
    sget-object p1, Le/b/a/a/o/e/d/e;->b:Le/b/a/a/o/e/d/b;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    new-instance p1, Le/b/a/a/o/e/d/b;

    invoke-direct {p1, p2}, Le/b/a/a/o/e/d/b;-><init>(Le/b/a/a/c;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    sput-object p1, Le/b/a/a/o/e/d/e;->b:Le/b/a/a/o/e/d/b;

    :cond_9
    sget-object p1, Le/b/a/a/o/e/d/e;->b:Le/b/a/a/o/e/d/b;

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v4}, Le/b/a/a/o/e/d/b;->a(Z)V

    .line 17
    iget-object p1, p1, Le/b/a/a/o/e/d/b;->h:Le/b/a/a/o/e/d/c;

    if-nez p1, :cond_b

    goto :goto_5

    .line 18
    :cond_b
    iput-boolean v5, p1, Le/b/a/a/o/e/d/c;->i:Z

    :goto_5
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x10022
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

.method public onConnectionAttached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

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
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le/b/a/a/o/e/d/e;->a:Le/b/a/a/o/e/d/e;

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "-----abandonAudioFocus-----"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLifeVoice"

    const-string v3, "tag"

    .line 1
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {v3, v0, v1, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object p1, Le/b/a/a/o/e/d/e;->b:Le/b/a/a/o/e/d/b;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Le/b/a/a/o/e/d/b;->a(Z)V

    :goto_1
    return-void
.end method

.method public synthetic onConnectionEstablished(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->e(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionReattached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->f(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method
