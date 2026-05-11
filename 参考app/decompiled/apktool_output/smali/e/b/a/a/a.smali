.class public final synthetic Le/b/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Le/b/a/a/c;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static b(Le/b/a/a/c;)V
    .locals 0

    invoke-interface {p0, p0}, Le/b/a/a/i;->onConnectionAttached(Le/b/a/a/c;)V

    return-void
.end method

.method public static c(Le/b/a/a/c;)V
    .locals 0

    invoke-interface {p0, p0}, Le/b/a/a/i;->onConnectionAuthenFailed(Le/b/a/a/c;)V

    return-void
.end method

.method public static d(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "mac"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p0, p1, p2}, Le/b/a/a/i;->onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public static e(Le/b/a/a/c;)V
    .locals 0

    invoke-interface {p0, p0}, Le/b/a/a/i;->onConnectionDetached(Le/b/a/a/c;)V

    return-void
.end method

.method public static f(Le/b/a/a/c;)V
    .locals 0

    invoke-interface {p0, p0}, Le/b/a/a/i;->onConnectionEstablished(Le/b/a/a/c;)V

    return-void
.end method

.method public static g(Le/b/a/a/c;)V
    .locals 0

    invoke-interface {p0, p0}, Le/b/a/a/i;->onConnectionVersionNotSupprt(Le/b/a/a/c;)V

    return-void
.end method

.method public static h(Le/b/a/a/c;Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/b/a/a/b;

    invoke-direct {v0, p1}, Le/b/a/a/b;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p0, p2, p3, v0}, Le/b/a/a/c;->l0(JLf/m/a/a;)V

    return-void
.end method

.method public static i(Le/b/a/a/c;II)V
    .locals 3

    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, p1, p2, v1, v2}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object p1

    invoke-interface {p0, p1}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    return-void
.end method

.method public static synthetic j(Le/b/a/a/c;Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZILjava/lang/Object;)I
    .locals 7

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Le/b/a/a/c;->t0(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZ)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: requestAudioFocus"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
