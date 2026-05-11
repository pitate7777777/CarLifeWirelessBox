.class public final Le/b/b/n/d/e;
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
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    return p2

    .line 1
    :pswitch_0
    sget-boolean p1, Le/b/b/n/d/d;->b:Z

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Le/b/b/n/d/f;->a:Le/b/b/n/d/f;

    invoke-static {}, Le/b/b/n/d/f;->b()V

    const/4 p1, 0x1

    .line 3
    sput p1, Le/b/b/n/d/d;->a:I

    :cond_0
    return p2

    .line 4
    :pswitch_1
    sget-object p1, Le/b/b/n/d/f;->a:Le/b/b/n/d/f;

    invoke-static {}, Le/b/b/n/d/f;->a()V

    return p2

    .line 5
    :pswitch_2
    sget-boolean p1, Le/b/b/n/d/d;->b:Z

    if-nez p1, :cond_1

    .line 6
    sget-object p1, Le/b/b/n/d/f;->a:Le/b/b/n/d/f;

    invoke-static {}, Le/b/b/n/d/f;->c()V

    const/4 p1, 0x2

    .line 7
    sput p1, Le/b/b/n/d/d;->a:I

    :cond_1
    return p2

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

    sget-object p1, Le/b/b/n/d/f;->a:Le/b/b/n/d/f;

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
    sget-object p1, Le/b/b/n/d/f;->c:Le/b/a/a/c;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Le/b/b/n/d/f;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {p1, v0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 5
    :goto_1
    sget-object p1, Le/b/b/n/d/f;->b:Le/b/b/n/d/b;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Le/b/b/n/d/b;->a(Z)V

    .line 6
    :goto_2
    sput v2, Le/b/b/n/d/d;->a:I

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
