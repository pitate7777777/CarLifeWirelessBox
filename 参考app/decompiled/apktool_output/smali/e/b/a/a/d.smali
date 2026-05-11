.class public abstract Le/b/a/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/b;


# instance fields
.field public e:Le/b/a/a/j;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    iget v0, p0, Le/b/a/a/d;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Le/b/a/a/d;->f:I

    invoke-virtual {p0, p1, v0}, Le/b/a/a/d;->z(II)V

    :cond_0
    return-void
.end method

.method public synthetic N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/o/i/a;->a(Le/b/a/a/o/i/b;Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result p1

    return p1
.end method

.method public synthetic T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/o/i/a;->b(Le/b/a/a/o/i/b;Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result p1

    return p1
.end method

.method public abstract getId()I
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

.method public synthetic onConnectionDetached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->d(Le/b/a/a/i;Le/b/a/a/c;)V

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

.method public z(II)V
    .locals 0

    iget-object p1, p0, Le/b/a/a/d;->e:Le/b/a/a/j;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Le/b/a/a/j;->b(Le/b/a/a/d;)V

    :goto_0
    return-void
.end method
